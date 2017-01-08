//
//  ReactViewInstantiate.swift
//  RNSwiftStarter
//
//  Created by Nimesh Gurung on 08/01/2017.
//  Copyright © 2017 Nimesh Gurung. All rights reserved.
//

import Foundation
import UIKit
import React

protocol ReactViewInstantiate: class {
    var reactView: RCTRootView! { get set }
}

extension ReactViewInstantiate where Self:UIViewController {
    func instantiateReactView(view: String, props: [String:Any]?) {
        reactView = ReactModule.sharedInstance.viewForModule(module: "App", initialProperties: props)
        self.view.addSubview(reactView)
        reactView.frame = self.view.bounds
    }
}
