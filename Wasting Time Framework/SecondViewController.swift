//
//  SecondViewController.swift
//  Wasting Time Framework
//
//  Created by Michi Kono on 4/26/15.
//  Copyright (c) 2015 Michi Kono. All rights reserved.
//

class SecondUIViewController : WTFUIViewController {
    override func defineHooks() {
        super.defineHooks()
        WTFEvent.attach(ConsoleLoggerHandler(), forContext: self)
        
        // try uncommenting me!
        // WTFEvent.attach(GradientHandler(), forContext: self)
    }
}