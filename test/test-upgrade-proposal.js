import { compileWith }           from './framework/compilation';
import { mineSomePowBlocks, waitForBlocks, waitForTxHash }     from './framework/mining';
import { sendRpcQuery }          from './framework/query';
import { spawnClient }           from './framework/spawn';
import { delayExecution, createRelativeTimeStr }        from './framework/time';

import { fastChain, smallChain } from './_environments';

var path = Path.dirname( CLIENT_PATH );
var constantsPath = Path.join( path, 'constants.cpp' );
var constantsPathBak = Path.join( path, 'constants.cpp.bak' );

var versionPath = Path.join( path, 'version.h' );
var versionPathBak = Path.join( path, 'version.h.bak' );


function updateConstants( hash_line)
{
    var constants = Fs.readFileSync( constantsPath ).toString( );

    //we use move here to prevent the timestamp from being touched
    var res = ChildProcess.spawnSync( 'mv', [constantsPath, constantsPathBak ]);
    if(res.status != 0)
	throw "can't move "+constantsPath+" to "+constantsPathBak;

    constants = constants.replace(
            /`[a-zA-Z0-9:_<>]+(?:\\s+const)?\\s+BLOCK_CHECKPOINTS\s+=\\s+.*`/,
	hash_line);

    Fs.writeFileSync( constantsPath );
}

function bumpVersion( hash_line)
{
    var version = Fs.readFileSync( versionPath ).toString( );

    //we use move here to prevent the timestamp from being touched
    var res = ChildProcess.spawnSync( 'mv', [versionPath, versionPathBak ]);
    if(res.status != 0)
	throw "can't move "+versionPath+" to "+versionPathBak;

    var coin_version = Number(/#define\s+COIN_VERSION_MAJOR\s+(\d+)/.exec(version));

    version = version.replace(
        /(#define\s+COIN_VERSION_MAJOR\s+)(\d+)/,
	"$1 "+(coin_version+1));
    
    Fs.writeFileSync( versionPath );
}

function restoreSourceCode()
{
    ChildProcess.spawnSync( 'mv', [constantsPathBak, constantsPath ]);
    ChildProcess.spawnSync( 'mv', [versionPathBak, versionPath ]);
}
    
			    

export async function test( ) {

    await compileWith( fastChain, smallChain );

    //TODO 3 we should have a command parameter for killing keepalive processes (for when we run test-all)
    var client1 = await spawnClient( { keepalive : true } );
    var client2 = await spawnClient( { addnode : client1.target, keepalive : true} );

    //mine some blocks so we can check the block checkpoint hash
    await mineSomePowBlocks( client1, 20);
    await waitForBlocks(client2);
    await mineSomePowBlocks( client2, 20);
    await waitForBlocks(client1);

    var rpc = await sendRpcQuery( client1, { method : 'getnewaddress' } );
    var upgradeAddr = rpc.result;

    var rpc = await sendRpcQuery( client1, { method : 'createblockcheckpointcode' } );
    var hash_line = rpc.result

    var rpcCommand;

    try {
	updateConstants(hash_line);
	bumpVersion();

	var deadlineStr = createRelativeTimeStr(5);
	var upgradeDeadlineStr = createRelativeTimeStr(10);
    
	rpcCommand = ChildProcess.spawnSync( '../tools/create_upgrade_proposal.pl'
					     ['-t',"test",
					      '-d',deadlineStr,
					      '-ud',upgradeDeadlineStr,
					      '-spendpool',upgradeAddr+"=0.42"]
					   )
    }
    finally {
	restoreSourceCode()
    }
    
    var rpc = await sendRpcQuery( client1, { rpcCommand : rpcCommand })

    var proptxn = rpc.result.proposalTxn;
    var prophash = rpc.result.proposalAddr;
	
    var rpc = await sendRpcQuery( client1, { method : "vote",
    					     params :
    					     [
    						 prophash
    					     ]
    					   })
    expect ( rpc.result ).to.match( /^[A-Za-z0-9]{64}$/ )
    var votehash = rpc.result

    await waitForTxHash(client2, votehash)
    await mineSomePowBlocks( client2, 1 );
    await waitForBlocks(client1);

    console.log('wait 5 seconds until after the deadline')
    await delayExecution( 5 );

    var rpc = await sendRpcQuery( client1, { method : "getproposalinfo",
    					     params :
    					     [
    						 prophash
    					     ]
    					   })

    
    expect ( rpc.result.votesForProposal ).to.be.equal( 20 )
    expect ( rpc.result.votingPeriodVotedCoins ).to.be.equal( 20 )
    expect ( rpc.result.isVotingPeriodOver ).to.be.equal( true )
    expect ( rpc.result.isVoteWon ).to.be.equal( true )

    //since we upgraded, both clients should quit automatically after the deadline
    await mineSomePowBlocks( client2, 20 );
    await waitForBlocks(client1);
    await delayExecution(10);

    //check that pids are dead (should have quit due to upgrade request)
    var dead = true;
    try {
	process.kill(client1.pid,0);
	dead = false;
    }
    catch (err)
    {
    }
    expect (dead).to.be.equal(true);
    
    try {
	process.kill(client2.pid,0);
	dead = false;
    }
    catch (err)
    {
    }
    expect (dead).to.be.equal(true);

    //TODO 2 make sure funds are transmitted, make a special "force run" flag 
}

