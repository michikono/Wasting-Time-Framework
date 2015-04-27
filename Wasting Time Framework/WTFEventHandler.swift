//
//  WTFEventHandler.swift
//  Wasting Time Framework
//
//  Created by Michi Kono on 4/26/15.
//  Copyright (c) 2015 Michi Kono. All rights reserved.
//

protocol WTFEventHandler {
    func callListener(handler: WTFEventType, forContext context: Any, arguments: [Any]);
}