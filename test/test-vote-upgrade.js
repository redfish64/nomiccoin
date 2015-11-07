import { compileWith }           from './framework/compilation';
import { mineSomePowBlocks }     from './framework/mining';
import { sendRpcQuery }          from './framework/query';
import { spawnClient }           from './framework/spawn';
import { delayExecution }        from './framework/time';

import { fastChain, smallChain } from './_environments';

var running = require('is-running')

export async function test( ) {

    await compileWith( fastChain, smallChain );

    var client1 = await spawnClient( { delay : 3, keepalive : true } );
    var client2 = await spawnClient( { addnode : client1.target, delay : 3, keepalive : true
				     } );

    var rpc = await sendRpcQuery( client1, { method : 'getvotingbalance' } );

    expect( rpc.result ).to.equal( 0 );

    //mine some blocks to get some funds
    //TODO 3 why does the first 2 blocks not give us any money?
    await mineSomePowBlocks( client1, 10);
    await delayExecution( 2 );
    await mineSomePowBlocks( client2, 2);
    await delayExecution( 2 );

    var rpc = await sendRpcQuery( client1, { method : 'getvotingbalance' } );
    expect( rpc.result ).to.be.equal( 10 );

    //'2012-11-04T14:51:06.157Z'
    //create a deadline 30 seconds from now
    var deadline = new Date().getTime() + 30*1000;
    var deadlineStr = new Date(deadline).toISOString().
	replace(/T/, ' ').      // replace T with a space
	replace(/\..+/, ' UTC');     // delete the dot and everything after

    //upgrade deadline 3 minutes from now
    var upgradeDeadline = new Date().getTime() + 180*1000;
    var upgradeDeadlineStr = new Date(upgradeDeadline).toISOString().
	replace(/T/, ' ').      // replace T with a space
	replace(/\..+/, ' UTC');     // delete the dot and everything after

    console.log('deadline : %s, now: %s',  deadlineStr, new Date().toISOString());
    var rpc = await sendRpcQuery( client2, { method : 'createproposal',
							 params :
							 [deadlineStr,
							  "test title",
							  "upgradeclient",
							  "1010001",
							  upgradeDeadlineStr,
							  "gitcommitxxx",
							  "WIN64",
							  "33d9dbb1885523750398821c4e37b1c5f3f9a3d77cd9cee08a4e3227b275dead",
							  "LINUX_AMD64",
							  "33d9dbb1885523750398821c4e37b1c5f3f9a3d77cd9cee08a4e3227b2755a6d",
							 ]
						       }
					    );

    var voteblob = rpc.result.voteblob;
		
    var rpc = await sendRpcQuery( client1, { method : "vote",
    					     params :
    					     [
    						 voteblob
    					     ]
    					   })
    expect ( rpc.result ).to.be.equal( "ok" )

    await delayExecution( 2 );
    await mineSomePowBlocks( client2, 1 );
    await delayExecution( 2 );

    console.log('wait 30 seconds until after the deadline')
    await delayExecution( 30 );

    //mine pass the redeemable time
    await delayExecution( 2 );
    await mineSomePowBlocks( client2, 16 );
    await delayExecution( 2 );
    
    //redeem the vote
    var rpc = await sendRpcQuery( client1, { method : "redeemvote",
    					     params :
    					     [
    						 voteblob
    					     ]
    					   })

    //we haven't commited the block yet, so there should be no upgrade info
    var rpc = await sendRpcQuery( client1, { method : "getupgradeinfo",
    					   })
    expect ( rpc.result.upgradeNeeded ).to.be.equal(false)

    //expect ( 1 ).to.be.equal(0)

    //commit the redeem transaction
    await delayExecution( 2 );
    await mineSomePowBlocks( client2, 1 ); 
    await delayExecution( 2 );

    //now we should get the upgrade
    var rpc = await sendRpcQuery( client1, { method : "getupgradeinfo"})
    expect ( rpc.result.upgradeNeeded ).to.be.equal(true)
    expect ( rpc.result.upgradeGitCommit ).to.be.equal("gitcommitxxx")
    expect ( rpc.result.upgradeDeadline ).to.be.equal(upgradeDeadlineStr)
    expect ( rpc.result.distData[0].osId ).to.be.equal( "WIN64")
    expect ( rpc.result.distData[0].sha256Hash ).to.be.equal( "33d9dbb1885523750398821c4e37b1c5f3f9a3d77cd9cee08a4e3227b275dead")
    expect ( rpc.result.distData[1].osId ).to.be.equal( "LINUX_AMD64")
    expect ( rpc.result.distData[1].sha256Hash ).to.be.equal( "33d9dbb1885523750398821c4e37b1c5f3f9a3d77cd9cee08a4e3227b2755a6d")

    //test that we can't execute unsafe calls before the deadline
    var rpc = await sendRpcQuery( client1, { method : "vote",
    					     params :
    					     [
    						 voteblob
    					     ]
    					   })
    //received: {"result":null,"error":{"code":-2,"message":"Safe mode: Upgrade Required. New version: 1010001, Deadline: 2015-11-07 03:29:36 UTC. Run getupgradeinfo for more details."},"id":null}
    expect (rpc.error.code).to.be.equal(-2)

    
    //test that client has shutdown after deadline
    var currTime = new Date().getTime()
    var waitSeconds =  (upgradeDeadline + 2*1000 - currTime)/1000;

    if(waitSeconds > 0)
    {
	console.log('wait %d seconds until after the upgrade deadline', waitSeconds)
	await delayExecution( waitSeconds)
    }

    //we need to mine a block in order to kick off the routine to shutdown
    await delayExecution( 2 );
    await mineSomePowBlocks( client2, 1 ); 
    await delayExecution( 10 );

    //we don't check if client1 quits, because if it doesn't have a peer to connect to, the process
    //sometimes goes through
    expect (running(client2.pid)).to.be.equal(false)
}
