import { compileWith }           from './framework/compilation';
import { mineSomePowBlocks }     from './framework/mining';
import { sendRpcQuery }          from './framework/query';
import { spawnClient }           from './framework/spawn';
import { delayExecution }        from './framework/time';

import { fastChain, smallChain, withMinStakeAgeChain } from './_environments';

var running = require('is-running')

export async function test( ) {

    await compileWith( withMinStakeAgeChain, smallChain );

    var client1 = await spawnClient( { delay : 3, keepalive : true } );
    var client2 = await spawnClient( { addnode : client1.target, delay : 3, keepalive : true
				     } );

    //mine some blocks to get some funds
    await mineSomePowBlocks( client1, 10);
    await delayExecution( 2 );

    //make those coins ready to stake
    await delayExecution(60 );
    await mineSomePowBlocks( client2, 1);
    await delayExecution( 2 );

    //vote
    var rpc = await sendRpcQuery( client1, { method : 'getinfo' } );
    expect( rpc.result.votingPeriodVotedCoins ).to.be.equal( 0 );

    var rpc = await sendRpcQuery( client1, { method : "vote",
    					     params :
    					     [
    						 "0"
    					     ]
    					   })
    expect ( rpc.result ).to.be.equal( "ok" )

    await delayExecution( 2 );
    await mineSomePowBlocks( client2, 1 );
    await delayExecution( 2 );

    var rpc = await sendRpcQuery( client1, { method : 'getinfo' } );
    expect( rpc.result.blocks ).to.be.equal( 12 );

    //now try to stake, should be allowed
    var rpc = await sendRpcQuery( client1, { method : 'generatestake' } );

    //TODO test this with timing
    
    //finally make sure the other client accepts it
    await delayExecution( 2 );
    var rpc = await sendRpcQuery( client1, { method : 'getinfo' } );
    expect( rpc.result.blocks ).to.be.equal( 13 );
    var rpc = await sendRpcQuery( client2, { method : 'getinfo' } );
    expect( rpc.result.blocks ).to.be.equal( 13 );

}
