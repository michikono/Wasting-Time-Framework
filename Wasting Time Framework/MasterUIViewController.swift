//
//  MasterUIViewController.swift
//  Wasting Time Framework
//
//  Created by Michi Kono on 4/26/15.
//  Copyright (c) 2015 Michi Kono. All rights reserved.
//

import UIKit

class MasterUIViewController: UIViewController {
    var events: Array<WTFEventHandler> = []
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        defineHooks()
    }
    
    func defineHooks() {
        println("master hooks ran")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        WTFEvent.fire(.viewDidLoad, forContext: self)
    }
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransitionToSize(size, withTransitionCoordinator: coordinator)
        WTFEvent.fire(.viewWillTransitionToSize, forContext: self, arguments: size, coordinator)
    }
}