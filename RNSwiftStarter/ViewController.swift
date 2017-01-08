//
//  ViewController.swift
//  RNSwiftStarter
//
//  Created by Nimesh Gurung on 08/01/2017.
//  Copyright © 2017 Nimesh Gurung. All rights reserved.
//

import UIKit
import React

class ViewController: UIViewController, ReactViewInstantiate {

    var reactView: RCTRootView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.instantiateReactView(view: "App", props: nil)
    }
}

