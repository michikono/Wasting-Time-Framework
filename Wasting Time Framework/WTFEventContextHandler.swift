//
//  WTFEventContextHandler.swift
//  Wasting Time Framework
//
//  Created by Michi Kono on 4/26/15.
//  Copyright (c) 2015 Michi Kono. All rights reserved.
//

class WTFEventContextHandler {
    var context: Any
    var eventHandler: WTFEventHandler
    
    init(context: Any, eventHandler: WTFEventHandler) {
        self.context = context
        self.eventHandler = eventHandler
    }
    
    func getContext() -> Any {
        return context;
    }
    
    func getEventHandler() -> WTFEventHandler {
        return eventHandler;
    }
    
}
