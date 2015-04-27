//
//  GradientHandler.swift
//  Wasting Time Framework
//
//  Created by Michi Kono on 4/26/15.
//  Copyright (c) 2015 Michi Kono. All rights reserved.
//

import UIKit

class GradientHandler: WTFEventHandler {
    
    var gradient: GradientUIViewDectorator?
    
    var context: UIViewController?
    
    // boilerplate
    func callListener(handler: WTFEventType, forContext context: Any, arguments: [Any]) {
        self.context = context as? UIViewController
        switch handler {
        case .viewDidLoad:
            self.viewDidLoad()
        case .viewWillTransitionToSize:
            self.viewWillTransitionToSize(arguments[0] as! CGSize, withTransitionCoordinator: arguments[1] as! UIViewControllerTransitionCoordinator)
        default: break
        }
    }
    
    func viewDidLoad() {
        println("applying gradient in viewDidLoad")
        gradient = GradientUIViewDectorator(usingDefaultTemplate: context!.view)
        
    }
    
    func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        // do my gradient resize logic
        println("resizing gradient")
        gradient!.animateResize(coordinator)
    }
}