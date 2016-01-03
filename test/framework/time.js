function delay( seconds ) {

    return new Promise( ( resolve, reject ) => {

        setTimeout( ( ) => {

            resolve( );

        }, seconds * 1000 );

    } );

}

export async function delayExecution( seconds ) {

    if ( seconds < 5 * 60 )
        return await delay( seconds );

    let aboutMinutes = Math.round( seconds / 60 );
    let maxStep = ( aboutMinutes / 5 ) * 60;

    process.stdout.write( `Scheduled to wait for quite a long time (about ${aboutMinutes} minutes).` );

    while ( seconds > 0 ) {

        let step = Math.min( seconds, maxStep );
        seconds -= step;

        await delay( step );

        if ( seconds > 0 ) {

            let amount = seconds < 60 ? seconds : Math.round( seconds / 60 );
            let unit = seconds < 60 ? 'second' : 'minute';

            if ( amount !== 1 )
                unit += 's';

            process.stdout.write( `About ${amount} ${unit} left.\n` );

        }

    }
}

export function createRelativeTimeStr(seconds)
{
    //'2012-11-04T14:51:06.157Z'
    //create a deadline a few seconds from now
    var deadlineStr = new Date(new Date().getTime() 
			       //+ 3000*1000
			       + 1000* seconds
    ).toISOString().
	replace(/T/, ' ').      // replace T with a space
	replace(/\..+/, ' UTC');     // delete the dot and everything after
}
    
