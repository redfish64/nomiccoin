import { RPC_USER, RPC_PASSWORD } from '../_config';
import { merge } from './lodash';

export function sendRpcQuery( client, json, params ) {
    params = merge( { quit : false, silent : false }, params)

    return new Promise( ( resolve, reject ) => {

        var data = JSON.stringify( json );
	if(json.params == null)
	    json.params = [];

	if(params.quit)
	{
	    console.log("would have sent: %s %s",json.method, "'"+json.params.join("' '")+"'");
	    throw "Quitting...";
	}

	if(!params.silent)
	{
	    console.log("sending: %s %s",json.method, "'"+json.params.join("' '")+"'");
	}
	
        var request = require( 'http' ).request( {

            method : 'POST',

            host : '127.0.0.1',
            port : client.rpcPort,
            path : '/',

            auth : `${RPC_USER}:${RPC_PASSWORD}`,

            headers : {
                'Content-Type' : 'application/json',
                'Content-Length' : data.length
            }

        } );

        request.on( 'response', response => {

            var stringBuffer = '';

            response.on( 'data', data => {

                stringBuffer += data.toString( );

            } );

            response.on( 'end', ( ) => {
		if(!params.silent)
		{
		    console.log("received: %s",stringBuffer);
		}

                try {
                    resolve( JSON.parse( stringBuffer ) );
                } catch ( error ) {
                    reject( error );
                }

            } );

            response.on( 'error', error => {

                reject( error );

            } );

        } );

        request.on( 'error', error => {

            reject( error );

        } );

        request.write( data );
        request.end( );

    } );

}

export function nsendRpcQuery( client, json ) {
    console.log("pretending to send: %s",data);
}
