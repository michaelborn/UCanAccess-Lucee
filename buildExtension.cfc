component {
    property name="progressableDownloader" 	inject="ProgressableDownloader";
    property name="progressBar" 			inject="ProgressBar";

    function run() {
        // downloadJars();
        generateZips();
        commitUpdates()
    }

    // Darn. Not sure how to programmatically download the jars from Sourceforge.
    // function downloadJars() {
    //     cfhttp( url="https://sourceforge.net/projects/ucanaccess/files/latest/download" )
    //     var result = progressableDownloader.download(
    //         'https://sourceforge.net/projects/ucanaccess/files/latest/download',
    //         expandPath('./download.zip'),
    //         // This callback fires every 1024K of downloaded bytes
    //         function( status ) {
    //             progressBar.update( argumentCollection = status );
    //         }
    //     );
    //      copy to extension/jars directory!
    // }

    function generateZips() {
        cfzip( action="zip", source="extension", file="lucee-ucanaccess.zip", overwrite="true" ) {}
        cfzip( action="zip", source="extension", file="lucee-ucanaccess.lex", overwrite="true" ) {}

        print.line( "Generated lucee-ucanaccess.zip and lucee-ucanaccess.lex" );
    }

    function commitUpdates(){
        var gitStatus = command( '!git' )
            .params( 'status' )
            .run( returnOutput=true );
        
        if ( gitStatus CONTAINS "lucee-ucanaccess" ) {
            command( '!git' )
                .params( 'add lucee-ucanaccess.*' )
                .run();

            command( '!git' )
                .params( 'add lucee-ucanaccess.zip' )
                .run();
            
            command( '!git' )
                .params( 'commit -m "Add new release .lex and .zip"' )
                .run();
                print.greenLine( "New release with .lex and .zip" );
        } else {
            print.redLine( "Nothing new to release" );
        }
    }
}