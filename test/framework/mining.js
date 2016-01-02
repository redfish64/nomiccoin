import { sendRpcQuery } from './query';
import { spawnMiner }   from './spawn';
import { delayExecution }        from './time';

/**
 * This function guarantee that at least N blocks will be mined, but cannot guarantee that exactly N blocks will be mined.
 */

var currentBlock = 0

export async function mineSomePowBlocks( client, count ) {

    let s = count === 1 ? '' : 's';
    console.log( `We will try to mine ${count} PoW block${s}` );

    let req = await sendRpcQuery( client, { method : 'generatework', params : [ count ] } );

    if ( req.error )
        throw new Error( 'An error happened' );

    if ( req.result.length < count )
        throw new Error( 'The client hasn\'t been able to mine enough blocks' );

    currentBlock += count;

    return req.result;

}

export async function waitForBlocks( client ) {

    let req;

    let loops = 0;
    
    while(1)
    {
	req = await sendRpcQuery( client, { method : 'getblockindex' },
				  { silent : true });

	if ( req.error )
            throw new Error( 'An error happened' );
	
	if(req.result >= currentBlock)
	    break;

	await delayExecution(.25);

	loops++;

	if(loops % 10 == 0)
	    console.log("waiting for client to catch up, expecting %d blocks, got %d blocks",
			currentBlock, req.result)
    }
	
    if(req.result != currentBlock)
	throw new Error( 'Expected %d blocks, got %d blocks\n', currentBlock, req.result);
}

export async function waitForTxHash( client, hash ) {

    while(1)
    {
	let req = await sendRpcQuery( client, { method : 'txhashinmem', params : [ hash ] },
				      { silent : true }
				    );

	if ( req.error )
            throw new Error( 'An error happened' );

	if(req.result == true)
	    break;

	await delayExecution(.25);
    }
}

/**
 */

export async function mineForMaturation( client ) {

    console.log( `We will now try to confirm the coinbase transactions by mining a single block` );

    let req = await sendRpcQuery( client, { method : 'generatework', params : [ 1 ] });

    if ( req.error )
        throw new Error( 'An error happened' );

    if ( req.result.length < 1 )
        throw new Error( 'The client hasn\'t been able to mine enough blocks' );

    return req.result;

}

/**
 */

export async function mintSomePosBlocks( client, count ) {

    let s = count === 1 ? '' : 's';
    console.log( `We will try to mine ${count} PoS block${s}` );

    let req = await sendRpcQuery( client, { method : 'generatestake', params : [ count ] } );

    if ( req.error )
        throw new Error( 'An error happened' );

    if ( req.result.length < count )
        throw new Error( 'The client hasn\'t been able to mine enough blocks' );

    return req.result;

}

export async function transferFunds( client1, client2, funds ) {

    let rpc = await sendRpcQuery( client2, { method : 'getnewaddress' } );

    expect( rpc.error == null).to.be.equal(true)

    let addr = rpc.result

    rpc = await sendRpcQuery( client1, { method : 'sendtoaddress',
					     params : [ addr, funds ] } );
    
    expect( rpc.error == null ).to.be.equal(true)

    return rpc.result;

}
