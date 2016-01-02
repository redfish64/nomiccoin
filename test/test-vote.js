import { compileWith }           from './framework/compilation';
import { mineSomePowBlocks, waitForBlocks, waitForTxHash }     from './framework/mining';
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
    expect( rpc.result ).to.be.equal( 0);

    //mine some blocks to get some funds
    await mineSomePowBlocks( client1, 3);
    await waitForBlocks(client2);
    await mineSomePowBlocks( client2, 5);
    await waitForBlocks(client1);

    var rpc = await sendRpcQuery( client1, { method : 'getbalance' } );
    expect( rpc.result ).to.be.equal( 3 );

    //create an address to receive pool funds
    var rpc = await sendRpcQuery( client1, { method : 'getnewaddress' } );
    var propRecvAddr = rpc.result;
    console.log('receiving address : %s', propRecvAddr);

    //'2012-11-04T14:51:06.157Z'
    //create a deadline 30 seconds from now
    var deadlineStr = new Date(new Date().getTime() 
			       //+ 3000*1000
			       + 5*1000
    ).toISOString().
	replace(/T/, ' ').      // replace T with a space
	replace(/\..+/, ' UTC');     // delete the dot and everything after
    console.log('deadline : %s, now: %s',  deadlineStr, new Date().toISOString());
    
    var rpc = await sendRpcQuery( client2, { method : 'submitproposal',
							 params :
							 [deadlineStr,
							  "test title",
							  "spendpool",
							  propRecvAddr,
							  "2.5"
							  ]
					   }//, { quit : true }
					    );
    var proptxn = rpc.result.proposalTxn;
    var prophash = rpc.result.proposalAddr;
	
    //wait for the proposal to be transmitted to the other client	
    await waitForTxHash(client1, proptxn)
    
    var rpc = await sendRpcQuery( client1, { method : "vote",
    					     params :
    					     [
    						 prophash
    					     ]
    					   })
    expect ( rpc.result ).to.match( /^[A-Za-z0-9]{64}$/ )
    var votehash = rpc.result

    var rpc = await sendRpcQuery( client1, { method : "getproposalinfo",
    					     params :
    					     [
    						 prophash
    					     ]
    					   })
//    expect ( rpc.result.votesForProposal ).to.be.equal( 0 )
//    expect ( rpc.result.votingPeriodVotedCoins ).to.be.equal( 0 )
//    expect ( rpc.result.isVotingPeriodOver ).to.be.equal( false )

    await waitForTxHash(client2, votehash)
    await mineSomePowBlocks( client2, 1 );
    await waitForBlocks(client1);

    var rpc = await sendRpcQuery( client1, { method : "getproposalinfo",
    					     params :
    					     [
    						 prophash
    					     ]
    					   })

    
    expect ( rpc.result.votesForProposal ).to.be.equal( 3 )
    expect ( rpc.result.votingPeriodVotedCoins ).to.be.equal( 3 )
    expect ( rpc.result.isVotingPeriodOver ).to.be.equal( false )

    var rpc = await sendRpcQuery( client1, { method : 'getbalance' } );
    expect( rpc.result ).to.be.equal( 3 );

    //if the proposal hasn't passed yet, the amount received by the address receiving the
    //money should be zero
    var rpc = await sendRpcQuery( client1, { method : "getreceivedbyaddress",
    					     params : [ propRecvAddr ]
    					   })
    expect ( rpc.result ).to.be.equal(0);
    
    console.log('wait 5 seconds until after the deadline')
    await delayExecution( 5 );

    //mine some blocks to acquire some more funds
    await mineSomePowBlocks( client1, 10 );
    await waitForBlocks(client2)
    await mineSomePowBlocks( client2, 2 );
    await waitForBlocks(client1)

    var rpc = await sendRpcQuery( client1, { method : 'getbalance' } );
    expect( rpc.result ).to.be.equal( 13 ); 

    //try voting again
    var rpc = await sendRpcQuery( client1, { method : "vote",
    					     params :
    					     [
    						 prophash
    					     ]
    					   })

    expect ( rpc.error.code ).to.be.equal( -2); //vote failed, expired

    //do a null vote
    var rpc = await sendRpcQuery( client1, { method : "vote",
    					     params :
    					     [
    						 "0"
    					     ]
    					   })

    await waitForTxHash( client2, rpc.result );
    await mineSomePowBlocks( client2, 1 );
    await waitForBlocks(client1)

    //make sure the null vote updated the coins
    var rpc = await sendRpcQuery( client1, { method : "getinfo",
    					   })
    expect ( rpc.result.votingPeriodVotedCoins ).to.be.equal( 13 )

    //before maturity period, so funds aren't received yet
    var rpc = await sendRpcQuery( client1, { method : "getreceivedbyaddress",
    					     params : [ propRecvAddr ]
    					   })
    expect ( rpc.result ).to.be.equal(0);

    await mineSomePowBlocks( client2, 3 );
    await waitForBlocks(client1)
    //funds are spendable after the maturity period
    var rpc = await sendRpcQuery( client1, { method : "getreceivedbyaddress",
    					     params : [ propRecvAddr ]
    					   })
    expect ( rpc.result ).to.be.equal(2.5);
    
    var rpc = await sendRpcQuery( client1, { method : 'getbalance' } );
    expect( rpc.result ).to.be.equal( 15.5 );

    //send all our funds to client2 to make sure we can transfer those from the funds pool
    var rpc = await sendRpcQuery( client2, { method : 'getnewaddress' } );
    var client2Addr = rpc.result;

    var rpc = await sendRpcQuery( client1, { method : 'sendtoaddress',
					     params : [ client2Addr, 15.5 ] },
				  //{ quit : true }
				);

    await mineSomePowBlocks( client1, 1 );
    await waitForBlocks(client2)
    
    var rpc = await sendRpcQuery( client2, { method : "getreceivedbyaddress",
    					     params : [ client2Addr ]
    					   })
    expect( rpc.result ).to.be.equal( 15.5 );
}
//TODO 2 make forcevote to force voting after an expiration to make sure it doesn't count (in the test section of bitcoinrpc)
