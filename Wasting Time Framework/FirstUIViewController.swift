//
//  FirstUIViewController.swift
//  Wasting Time Framework
//
//  Created by Michi Kono on 4/26/15.
//  Copyright (c) 2015 Michi Kono. All rights reserved.
//

class FirstUIViewController : MasterUIViewController {
    override func defineHooks() {
        super.defineHooks()
        WTFEvent.listen(ConsoleLoggerHandler(), forContext: self)
        WTFEvent.listen(GradientHandler(), forContext: self)
    }
}