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

    var rpc = await sendRpcQuery( client1, { method : 'getbalance' } );

    expect( rpc.result ).to.equal( 0 );

    await mineSomePowBlocks( client1, 10 );
    await mineSomePowBlocks( client1, 1 );
    await delayExecution( 2 );

    var rpc = await sendRpcQuery( client1, { method : 'getbalance' } ), balance = rpc.result;

    //expect( rpc.result ).to.be.equal( 9 );

    var rpc = await sendRpcQuery( client2, { method : 'createproposal',
							 params :
							 ["2016-01-01 00:00:00 UTC",
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
    						 rpc.result.voteblob
    					     ]
    					   })

    
    expect ( rpc.result ).to.be.equal( "ok" )

    console.log('rpc : %s',  JSON.stringify(rpc, null, 4));

    var rpc = await sendRpcQuery( client1, { method : "getvoteinfo",
    					     params :
    					     [
    						 voteblob
    					     ]
    					   })

    
    console.log('rpc : %s',  JSON.stringify(rpc, null, 4));
    expect ( rpc.result.votesForProposal ).to.be.equal( 0 )
    expect ( rpc.result.votingPeriodVotedCoins ).to.be.equal( 0 )

    await mineSomePowBlocks( client1, 1 );

    var rpc = await sendRpcQuery( client1, { method : "getvoteinfo",
    					     params :
    					     [
    						 voteblob
    					     ]
    					   })

    
    console.log('rpc : %s',  JSON.stringify(rpc, null, 4));
    expect ( rpc.result.votesForProposal ).to.be.equal( 11 )
    expect ( rpc.result.votingPeriodVotedCoins ).to.be.equal( 11 )
}
