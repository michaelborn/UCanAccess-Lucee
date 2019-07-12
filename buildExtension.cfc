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
        cfzip(action="zip", source="extension", file="lucee-extension.zip") {}
        cfzip(action="zip", source="extension", file="lucee-extension.lex") {}

        print.line( "Generated lucee-extension.zip and lucee-extension.lex" );
    }

    function commitUpdates(){
        command( '!git' )
            .params( 'add lucee-extension.lex' )
            .run();

        command( '!git' )
            .params( 'add lucee-extension.zip' )
            .run();
        
        command( '!git' )
            .params( 'commit -m "Add new release .lex and .zip"' )
            .run();
    }
}