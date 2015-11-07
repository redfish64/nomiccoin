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

    //mine some blocks to get some funds
    await mineSomePowBlocks( client1, 10);
    await delayExecution( 2 );
    await mineSomePowBlocks( client2, 2);
    await delayExecution( 2 );

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
    expect( rpc.result.votingPeriodVotedCoins ).to.be.equal( 10 );
}
