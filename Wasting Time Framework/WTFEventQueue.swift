//
//  WTFEventQueue.swift
//  Wasting Time Framework
//
//  Created by Michi Kono on 4/26/15.
//  Copyright (c) 2015 Michi Kono. All rights reserved.
//

class WTFEventQueue {
    
    static var sharedInstance: WTFEventQueue?
    
    var handlers: [String: [WTFEventContextHandler]] = [:]
    
    private init() {
        
    }
    
    class func instance() -> WTFEventQueue {
        if WTFEventQueue.sharedInstance == nil {
            WTFEventQueue.sharedInstance = WTFEventQueue()
        }
        return WTFEventQueue.sharedInstance!
    }
    
    private func stringifyObject(object: AnyObject) -> String {
        return "\(Unmanaged<AnyObject>.passUnretained(object).toOpaque())"
    }
    
    func add(handler: WTFEventHandler, context: AnyObject) {
        
        let name = stringifyObject(context)
        if handlers[name] == nil {
            handlers[name] = []
        }
        handlers[name]!.append(WTFEventContextHandler(context: context, eventHandler: handler))
    }
    
    func getEventContextHandler(forContext context: AnyObject) -> [WTFEventContextHandler] {
        let name = stringifyObject(context)
        if handlers[name] == nil {
            return []
        } else {
            return handlers[name]!
        }
    }
}
