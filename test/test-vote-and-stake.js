import { compileWith }           from './framework/compilation';
import { mineSomePowBlocks,transferFunds }     from './framework/mining';
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
    await mineSomePowBlocks( client2, 15);
    await delayExecution( 2 );

    //transfer them to client 1 in one UTXO
    await transferFunds( client2, client1, 10)

    //commit the transfer
    await delayExecution(2 );
    await mineSomePowBlocks( client2, 1);
    await delayExecution( 2 );

    //wait 60 seconds before we vote
    await delayExecution( 60 );

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
    expect( rpc.result.blocks ).to.be.equal( 17 );

    var startTime = new Date().getTime()

    //now try to stake, should be allowed, and commit instantly (even though we voted)
    var rpc = await sendRpcQuery( client1, { method : 'generatestake' } );

    var waitSeconds =  (new Date().getTime() - startTime)/1000;

    expect (waitSeconds > 10).to.be.equal(false)
    
    //make sure the other client accepts it
    await delayExecution( 2 );
    var rpc = await sendRpcQuery( client1, { method : 'getinfo' } );
    expect( rpc.result.blocks ).to.be.equal( 18 );
    var rpc = await sendRpcQuery( client2, { method : 'getinfo' } );
    expect( rpc.result.blocks ).to.be.equal( 18 );

    //mine some blocks tom ature the stake
    await delayExecution( 2 );
    await mineSomePowBlocks( client2, 2 );
    await delayExecution( 2 );

    //now try to stake again, should be allowed, but take 60 seconds due to the
    //STAKE_MIN_AGE time
    var startTime = new Date().getTime()

    var rpc = await sendRpcQuery( client1, { method : 'generatestake' } );

    var waitSeconds =  (new Date().getTime() - startTime)/1000;

    expect (waitSeconds < 40).to.be.equal(false)

    var rpc = await sendRpcQuery( client2, { method : 'getinfo' } );
    expect( rpc.result.blocks ).to.be.equal( 20 );
}
