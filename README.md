# Wasting-Time-Framework

A hacky framework for Swift

Just a proof of concept for how we could add an event system to Cocoa Framework so that behaviors can be "decorated"
onto controllers much like mixins. So for example, to attach a behavior (that attaches to a bunch of events on a 
`UIViewController`:

    class MyUIViewController : MasterUIViewController {
        override func defineHooks() {
            super.defineHooks()
            WTFEvent.attach(MySpecialHandler(), forContext: self)
            WTFEvent.attach(GradientHandler(), forContext: self)
        }
    }

The above would attach all of the necessary logic in `MySpecialHandler` to the controller in question.

`MySpecialHandler` might look like:

    class MySpecialHandler: UIViewController, WTFEventHandler {
        
        // boilerplate that needs to be reduced because mixins would erase this part
        // ...
        
        func viewDidLoad(context: UIViewController) {
            println("logging that view did load")
            // do special stuff here
        }
        func viewDidUnload(context: UIViewController) {
            println("logging that view did unload")
            // do special stuff here
        }
    }

This framework is hacky and doesn't really work (well, it does, but it's not finished by any means). It's just a proof of concept so that I could explain some ideas to some fellow devs.
