//
//  ReactModule.swift
//  RNSwiftStarter
//
//  Created by Nimesh Gurung on 08/01/2017.
//  Copyright © 2017 Nimesh Gurung. All rights reserved.
//

import Foundation
import React

class ReactModule: NSObject {
    static let sharedInstance = ReactModule()
    var bridge: RCTBridge!
    
    func createBridgeIfNeeded() -> RCTBridge {
        if bridge == nil {
            bridge = RCTBridge.init(delegate: self, launchOptions: nil)
        }
        return bridge!
    }
    
    func viewForModule(module moduleName: String, initialProperties: [String: Any]?) -> RCTRootView {
        let viewBridge = createBridgeIfNeeded()
        let rootView: RCTRootView = RCTRootView(
            bridge: viewBridge,
            moduleName: moduleName,
            initialProperties: initialProperties
        )
        return rootView
    }
}

extension ReactModule: RCTBridgeDelegate {
    func sourceURL(for bridge: RCTBridge!) -> URL! {
        return URL(string: "http://localhost:8081/index.ios.bundle?platfrom=ios")
    }
}

