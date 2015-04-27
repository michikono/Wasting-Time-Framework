//
//  WTFEvent.swift
//  Wasting Time Framework
//
//  Created by Michi Kono on 4/26/15.
//  Copyright (c) 2015 Michi Kono. All rights reserved.
//

import UIKit

class WTFEvent {
    
    class func fire(eventType: WTFEventType, forContext context: AnyObject, arguments: Any...) {
        // finds all handlers
        for eventContextHandler in (WTFEventQueue.instance().getEventContextHandler(forContext: context)) {
            // for each handler, calls the handler method for this event
            eventContextHandler.getEventHandler().callListener(eventType, forContext: context, arguments: arguments)
        }
    }
    
    class func listen(handler: WTFEventHandler, forContext: AnyObject) {
        // attaches a generic listner to the current context
        WTFEventQueue.instance().add(handler, context: forContext)
    }
    
    
}
