#!/usr/bin/perl

use Pod::Usage;


=head1 NAME

create_upgrade_proposal.pl

=head1 SYNOPSIS

create_upgrade_proposal.pl -t <title> [-d "YYYY-MM-DD hh:mm:ss TZ"] [-ud "YYYY-MM-DD hh:mm:ss TZ"] [-spendpool <addrress>=<amount>] [-spendpool <addrress>=<amount>] ...

=head1 EXAMPLE

B<$> create_upgrade_proposal.pl -t "My title"

B<$> create_upgrade_proposal.pl -t "My title" -spendpool EkYH7XtrXDFwL5t6w9e3MQtVMby766pVSC=123.45 -spendpool E2PPDiyfmiAtp8qYPgsm27d7fAoyH52Gqr=234.56

B<$> create_upgrade_proposal.pl -t "My title" -d "2016-01-01 00:00:00 UTC" -ud "2016-01-07 00:00:00 UTC"


=head1 OPTIONS

B<-t "title">

Title of proposal, required. This should normally be a url that describes of the proposal in more detail, 80 characters max.

B<-d (YYYY-MM-DD hh:mm:ss TZ)>

Deadline of proposal. This is the time when the voting period ends and votes are tallied. Defaults to 1 week from now.

B<-ud (YYYY-MM-DD hh:mm:ss TZ)>

Upgrade deadline. This is the deadline for the official client to be upgraded to the new version, if the proposal passes. (A client that hasn't been upgraded after the deadline will shutdown and refuse to run). Defaults to 1 week past the deadline of the previous proposal.

B<-spendpool (address)=(amount)>

Funds specified by (amount) from the central pool will be transferred to the given address if the proposal passes. This option may be repeated several times for different addresses. 

WARNING: Even if the proposal passes, if there are not enough funds in the central pool at the specified deadline to transfer to the addresses, the proposal is considered to have failed and will have to be resubmitted.

=head1 DESCRIPTION

This program examines the code and git version of the current directory to produce a submitproposal rpc command to upgrade the official nomiccoin client. 

The command can either be run against a nomiccoind process, using:

    nomiccoind <submit proposal command>

or within nomiccoin-qt, by selecting Help menu/Debug Console, selecting the \"Console\" tab, and then
pasting the submit proposal command within the entry field.

The current source directory must be under 'git' revision control, and the current checked out version
must be the desired upgrade of the official client.

This program examines the code and git version to produce a properly formatted submitproposal rpc command.

Note that in order to create a proper upgrade proposal, two things must be updated within the source code:

1. The COIN_VERSION fields within src/version.h must be bumped. Ex. if the current version is:

 #define COIN_VERSION_MAJOR      42
 #define COIN_VERSION_MINOR      61
 #define COIN_VERSION_REVISION   0
 #define COIN_VERSION_BUILD      0

it must be updated to (at least)

 #define COIN_VERSION_MAJOR      42
 #define COIN_VERSION_MINOR      61
 #define COIN_VERSION_REVISION   0
 #define COIN_VERSION_BUILD      1>

2. The BLOCK_CHECKPOINTS field must be updated in constants.cpp:

 std::map<blockheight_t, hash_t> BLOCK_CHECKPOINTS = boost::assign::map_list_of(0, GENESIS_HASH)<block checkpoints...>;

In order to do this, run:

 $ nomiccoind createblockcheckpointcode

or alternatively 'createblockcheckpointcode' can be pasted in the debug console of \"nomiccoin-qt\" similarly as noted above for the 'submitproposal' command itself.

The output of the command will be code that can be used directly to replace the existing line. 

Ex (output from "nomiccoind createblockcheckpointcode"):

 //Replace the corresponding line in constants.cpp with this line:
 std::map<blockheight_t, hash_t>   BLOCK_CHECKPOINTS           = boost::assign::map_list_of(0, GENESIS_HASH)(11, hash_t(\"bb71163d483acc2e099b60c3ce08ec274f25fcca7c65609d84d4f19033662bbe\"));
";
=cut


exec "perldoc",$0 if(@ARGV == 0);

use 5.010;
use Time::Piece;
use Getopt::Long;

my $title   = "";
my $unix_timestamp = time;
my $deadline_str = gmtime($unix_timestamp+60*60*24*7)->strftime('%Y-%m-%d %H:%M:%S UTC');
my $upgrade_deadline_str = gmtime($unix_timestamp+60*60*24*7*2)->strftime('%Y-%m-%d %H:%M:%S UTC');
my %spendvalues ;
GetOptions ("t=s" => \$title,   
	    "d=s"   => \$deadline_str,
	    "ud=s"  => \$upgrade_deadline_str,
	    "spendpool=s" => \%spendvalues
    )   
    or pod2usage();

die "-t must be specified" if $title eq "";

my $git_commit =`git log -n 1 --format='%H'`;
chomp $git_commit;

my $version = parse_coin_version("../src/version.h");
my ($block_height, $block_checkpoint) = parse_last_block_checkpoint("../src/constants.cpp");

my $rpc = "submitproposal \"$deadline_str\" \"$title\" upgradeclient $version \"$upgrade_deadline_str\" $git_commit $block_height:$block_checkpoint "
    .join(" ",map { ("spend pool $_ ".$spendvalues{$_}); } sort keys %spendvalues);

print "$rpc\n";


sub parse_coin_version
{
    my ($f) = @_;

    my ($j,$m,$r,$b);

    parse_c_code($f,
		 sub 
		 {
		     $_ = join("", @_);
		     
		     #print "l: $_\n";
		     
		     if($_ =~ /^#define\s+COIN_VERSION_MAJOR\s+(\d+)\s*$/)
		     {
			 $j = $1;
		     }
		     elsif($_ =~ /^#define\s+COIN_VERSION_MINOR\s+(\d+)\s*$/)
		     {
			 $m = $1;
		     }
		     elsif($_ =~ /^#define\s+COIN_VERSION_REVISION\s+(\d+)\s*$/)
		     {
			 $r = $1;
		     }
		     elsif($_ =~ /^#define\s+COIN_VERSION_BUILD\s+(\d+)\s*$/)
		     {
			 $b = $1;
		     }

		     return undef;
		 }
	);

    die "Can't find '#define COIN_VERSION_MAJOR' in $f" unless defined $j;
    die "Can't find '#define COIN_VERSION_MINOR' in $f" unless defined $m;
    die "Can't find '#define COIN_VERSION_REVISION' in $f" unless defined $r;
    die "Can't find '#define COIN_VERSION_BUILD' in $f" unless defined $b;

    return "$j.$m.$r.$b";
}




sub parse_last_block_checkpoint
{
    my ($f) = @_;

    parse_c_code($f,
		 sub 
		 {
		     my (@line_data) = @_;
		     #try to extract last block checkpoint from something like: (with spaces removed by our little loop here)
		     #	    std::map<blockheight_t, hash_t>   BLOCK_CHECKPOINTS           = boost::assign::map_list_of(0, GENESIS_HASH)(11, hash_t("bb71163d483acc2e099b60c3ce08ec274f25fcca7c65609d84d4f19033662bbe"));
		     my $line = join("",@line_data);

		     #print "l: $line\n";
		     
		     if($line =~ /^std::map<blockheight_t,hash_t>BLOCK_CHECKPOINTS=/)
		     {
			 if($line =~ /^std::map<blockheight_t,hash_t>BLOCK_CHECKPOINTS=boost::assign::map_list_of.*\((\d+),hash_t\("(.*?)"\)\)/)
			 {
			     return [$1,$2];
			 }
			 else {
			     die "Can't understand block checkpoint line, ".join("", @line_data)."

You must create a new block checkpoint in the form, as in the following example:

std::map<blockheight_t, hash_t>   BLOCK_CHECKPOINTS           = boost::assign::map_list_of(0, GENESIS_HASH)(11, hash_t(\"bb71163d483acc2e099b60c3ce08ec274f25fcca7c65609d84d4f19033662bbe\"));

You can run 'nomiccoind createblockcheckpointcode' to do this. See usage for more details.
";
			 }
		     }

		     return undef;
		 });
}


#kinda parses c++/c sort of
#macro '#' are passed to $test_func as is
#other statements are passed with all whitespace removed
sub parse_c_code
{
    my ($f, $test_func) = @_;

    open(F, $f) || die "Can't open $f";

    #get the data while stripping // comments
    $data = "\n".join("",map { 
	$_ =~ s~//.*~~; $_;
		 }  <F>);

    my @line_data;

    while($data =~ m~(^"|/\*|;|\n#|\n|\s+|[^\s;]+)~gs)
    {
	#print "1: $1\n";
	if($1 eq '"')
	{
	    #skip the string
	    $data =~ m~(?:[^"]|\\"")*"~g;
	}
	elsif($1 eq '/*')
	{
	    #skip the multi line comment
	    $data =~ m~(?:[^*]|\*[^/])*\*/~g;
	}
	elsif($1 =~ /^\s+$/) 
	{
	    #white space
	}
	elsif($1 eq "\n#")
	{
	    # '#' macro
	    $data =~ m~([^\n]*)~gsc or die "CAn't match ". substr $data, (pos $data);

	    #print "2: '$1'\n";
	    
	    my $line = "#".$1;

	    my ($res) = $test_func->($line);
	    return @$res if defined $res; 
	}
	elsif($1 eq ';')
	{
	    #end of command

	    my ($res) = $test_func->(@line_data);
	    return @$res if defined $res; 

	    @line_data = ();
	}
	else
	{
	    #not whitespace
	    push @line_data,$1;
	}
    }
}

