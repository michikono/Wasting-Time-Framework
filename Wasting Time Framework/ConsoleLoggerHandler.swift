//
//  ConsoleLoggerHandler.swift
//  Wasting Time Framework
//
//  Created by Michi Kono on 4/26/15.
//  Copyright (c) 2015 Michi Kono. All rights reserved.
//

import UIKit

class ConsoleLoggerHandler: WTFEventHandler {
    
    var context: Any?
    
    // boilerplate
    func callListener(handler: WTFEventType, forContext context: Any, arguments: [Any]) {
        self.context = context as Any
        switch handler {
        case .viewDidLoad:
            self.viewDidLoad()
        case .viewDidAppear:
            self.viewDidAppear(arguments[0] as! Bool)
        default:
            break;
        }
    }
    
    func viewDidAppear(animated: Bool) {
        println("logging view did appear")
    }
    
    func viewDidLoad() {
        println("logging that view did load")
    }
}
