//
//  GradientHandler.swift
//  Wasting Time Framework
//
//  Created by Michi Kono on 4/26/15.
//  Copyright (c) 2015 Michi Kono. All rights reserved.
//

import UIKit

class GradientHandler: UIViewController, WTFEventHandler {
    
    var gradient: GradientUIViewDectorator?
    
    // boilerplate
    func callListener(handler: WTFEventType, forContext context: Any, arguments: [Any]) {
        switch handler {
        case .viewDidLoad:
            self.viewDidLoad(context as! UIViewController)
        case .viewWillTransitionToSize:
            self.viewWillTransitionToSize(context as! UIViewController, size: arguments[0] as! CGSize, withTransitionCoordinator: arguments[1] as! UIViewControllerTransitionCoordinator)
        default: break
        }
    }

    func viewDidLoad(context: UIViewController) {
        println("applying gradient in viewDidLoad")
        gradient = GradientUIViewDectorator(usingDefaultTemplate: (context as UIViewController).view)

    }
    
    func viewWillTransitionToSize(context: UIViewController, size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        // do my gradient resize logic
        println("resizing gradient")
        gradient!.animateResize(coordinator)
    }
}