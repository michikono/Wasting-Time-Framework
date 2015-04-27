//
//  ConsoleLoggerHandler.swift
//  Wasting Time Framework
//
//  Created by Michi Kono on 4/26/15.
//  Copyright (c) 2015 Michi Kono. All rights reserved.
//

import UIKit

class ConsoleLoggerHandler: UIViewController, WTFEventHandler {
    
    // boilerplate
    func callListener(handler: WTFEventType, forContext context: Any, arguments: [Any]) {
        switch handler {
        case .viewDidLoad:
            self.viewDidLoad(context as! UIViewController)
        default:
            break;
        }
    }
    
    func viewDidLoad(context: UIViewController) {
        println("logging that view did load")
    }
}
