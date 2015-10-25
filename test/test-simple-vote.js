import { compileWith }           from './framework/compilation';
import { mineSomePowBlocks }     from './framework/mining';
import { sendRpcQuery }          from './framework/query';
import { spawnClient }           from './framework/spawn';
import { delayExecution }        from './framework/time';

import { fastChain, smallChain } from './_environments';

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
    var deadlineStr = new Date(new Date().getTime() + 30*1000).toISOString().
	replace(/T/, ' ').      // replace T with a space
	replace(/\..+/, ' UTC');     // delete the dot and everything after
	
    console.log('deadline : %s, now: %s',  deadlineStr, new Date().toISOString());
    var rpc = await sendRpcQuery( client2, { method : 'createproposal',
							 params :
							 [deadlineStr,
							  "test title",
							  "displaymsg",
							  "test msg"
							 ]
						       }
					    );
    console.log('rpc : %s',  JSON.stringify(rpc, null, 4));

    var voteblob = rpc.result.voteblob;
		
    var rpc = await sendRpcQuery( client1, { method : "vote",
    					     params :
    					     [
    						 voteblob
    					     ]
    					   })
    expect ( rpc.result ).to.be.equal( "ok" )

    await delayExecution( 2 );
    var rpc = await sendRpcQuery( client1, { method : "getvoteinfo",
    					     params :
    					     [
    						 voteblob
    					     ]
    					   })
    console.log('rpc : %s',  JSON.stringify(rpc, null, 4));
    expect ( rpc.result.votesForProposal ).to.be.equal( 0 )
    expect ( rpc.result.votingPeriodVotedCoins ).to.be.equal( 0 )
    expect ( rpc.result.votingPeriodOver ).to.be.equal( false )

    await delayExecution( 2 );
    await mineSomePowBlocks( client2, 1 );
    await delayExecution( 2 );

    var rpc = await sendRpcQuery( client1, { method : "getvoteinfo",
    					     params :
    					     [
    						 voteblob
    					     ]
    					   })

    
    console.log('rpc : %s',  JSON.stringify(rpc, null, 4));
    expect ( rpc.result.votesForProposal ).to.be.equal( 10 )
    expect ( rpc.result.votingPeriodVotedCoins ).to.be.equal( 10 )
    expect ( rpc.result.votingPeriodOver ).to.be.equal( false )

    var rpc = await sendRpcQuery( client1, { method : 'getvotingbalance' } );
    expect( rpc.result ).to.be.equal( 10 );

    console.log('wait 30 seconds until after the deadline')
    await delayExecution( 30 );

    //mine some blocks to acquire some more funds
    await mineSomePowBlocks( client1, 10 );
    await delayExecution( 2 );
    await mineSomePowBlocks( client2, 2 );
    await delayExecution( 2 );

    var rpc = await sendRpcQuery( client1, { method : 'getvotingbalance' } );
    expect( rpc.result ).to.be.equal( 20 ); 

    //try voting again
    var rpc = await sendRpcQuery( client1, { method : "vote",
    					     params :
    					     [
    						 voteblob
    					     ]
    					   })

    //commit the vote
    await delayExecution( 2 );
    await mineSomePowBlocks( client2, 1 );
    await delayExecution( 2 );

    //vote should not count
    
    var rpc = await sendRpcQuery( client1, { method : "getvoteinfo",
    					     params :
    					     [
    						 voteblob
    					     ]
    					   })

    expect ( rpc.result.votesForProposal ).to.be.equal( 10 )
    expect ( rpc.result.votingPeriodVotedCoins ).to.be.equal( 10 )
    expect ( rpc.result.votingPeriodOver ).to.be.equal( true )

     //whenever you vote, regardless
    //of the deadline, the voting period is updated to show the new coins, so we check that as well
    var rpc = await sendRpcQuery( client1, { method : "getinfo",
    					   })

    expect ( rpc.result.votingPeriodVotedCoins ).to.be.equal( 20 )
}
