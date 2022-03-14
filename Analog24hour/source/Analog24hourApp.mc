using Toybox.Application as App;

class Analog24hourApp extends App.AppBase {

    //! onStart() is called on application start up
    function onStart(state) {
    }

    //! onStop() is called when your application is exiting
    function onStop(state) {
    }

    //! Return the initial view of your application here
    function getInitialView() {
        return [ new Analog24hourView() ];
    }

}
