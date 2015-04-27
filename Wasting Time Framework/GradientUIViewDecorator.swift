//
//  GradientUIViewDectorator.swift
//  Wasting Time Framework
//
//  Created by Michi Kono on 4/25/15.
//  Copyright (c) 2015 Michi Kono. All rights reserved.
//

import UIKit

class GradientUIViewDectorator {

    weak var view: UIView?;
    let gradient = CAGradientLayer()
    
    init(view: UIView) {
        self.view = view;
    }
    
    convenience init(view: UIView, hexFrom: Int, hexTo: Int, pointFrom:CGPoint, pointTo:CGPoint) {
        self.init(view: view);
        self.setGradient(hexFrom, hexTo: hexTo, pointFrom: pointFrom, pointTo: pointTo);
    }
    
    convenience init(horizontal view: UIView, hexFrom: Int, hexTo: Int) {
        self.init(view: view);
        self.setGradient(hexFrom, hexTo: hexTo, pointFrom: CGPointMake(0, 0), pointTo: CGPointMake(0, 1));
    }

    convenience init(vertical view: UIView, hexFrom: Int, hexTo: Int) {
        self.init(view: view);
        self.setGradient(hexFrom, hexTo: hexTo, pointFrom: CGPointMake(0, 0), pointTo: CGPointMake(1, 0));
    }
    
    convenience init(usingDefaultTemplate view: UIView) {
        self.init(view: view, hexFrom: 0xFFEDBC, hexTo: 0xED4264, pointFrom: CGPointMake(0, 0), pointTo: CGPointMake(1, 0.95))
    }

    func setGradient(hexFrom: Int, hexTo: Int, pointFrom:CGPoint, pointTo:CGPoint) {
        let vista = UIView(frame: CGRectMake(0, 0, view!.bounds.width, view!.bounds.height))
        gradient.frame = vista.bounds
        gradient.startPoint = pointFrom;
        gradient.endPoint = pointTo;
        
        gradient.colors = [
            UIColor(netHex:hexFrom).CGColor,
            UIColor(netHex:hexTo).CGColor
        ]
        view!.layer.insertSublayer(gradient, atIndex: 0)
    }
    
    func resizeTo(rectangle: CGRect) {
        gradient.frame = rectangle;
    }
    
    func animateResize(coordinator: UIViewControllerTransitionCoordinator) {
        coordinator.animateAlongsideTransitionInView(view!, animation: { (context: UIViewControllerTransitionCoordinatorContext!) -> Void in
            self.resizeTo(context.containerView().bounds);
            }, completion: nil)
        
    }
    
    
}