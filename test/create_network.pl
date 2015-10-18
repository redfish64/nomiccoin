#!/usr/bin/perl

if(@ARGV==0)
{
    printf qq {
Usage: $0 <num peers> <starting port> <conf file template> <nomiccoind executable to run> <data root dir> [command ...]

Creates a bunch of nomiccoin nodes all on a single pc for testing purposes
For each node, a datadir is created nomiccoin<peer#> and a conf file is copied in there with an additional line setting the port and rpc port individually. 

data root dir defaults to dirname of $0
};
    exit -1;
}

$num_peers = shift @ARGV;
$starting_port = shift @ARGV;
$conf_file_template = shift @ARGV;
$nomiccoind = shift @ARGV;
$data_root_dir = shift @ARGV;
@command = @ARGV;

#if we are starting brand new, we copy the conf files. Otherwise we are running a command, so we go agains the existing network
if(@command == 0)
{
    for($i = 0; $i < $num_peers; $i++)
    {
	$data_dir = $data_root_dir."/nomiccoin$i";
	$conf_file = $data_dir."/nomiccoin.conf";
	$port = $starting_port + $i*2;
	$rpcport = $port + 1;
	
	system("mkdir -p $data_dir") &&  die "Couldn't make data_dir $data_dir";
	system("cp $conf_file_template $conf_file") && die "couldn't copy conf file";
	open(FILE,">>$conf_file") || die;
	print FILE qq{
port=$port
rpcport=$rpcport
daemon=1

# we go for the hub wheel design here
addnode=127.0.0.1:$starting_port 
};
	close FILE;
    }
}

for($i = 0; $i < $num_peers; $i++)
{
    $data_dir = $data_root_dir."/nomiccoin$i";

    print "Running $i: ".join(" ",@command)."\n";
    system("$nomiccoind","-datadir=$data_dir", @command);
}

print "Done\n";


    
