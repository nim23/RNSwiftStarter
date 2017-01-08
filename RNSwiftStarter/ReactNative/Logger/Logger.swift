//
//  Logger.swift
//  RNSwiftStarter
//
//  Created by Nimesh Gurung on 08/01/2017.
//  Copyright © 2017 Nimesh Gurung. All rights reserved.
//

import Foundation

@objc(Logger)
class Logger: NSObject {
    @objc func log (_ logElement: String?) -> Void {
        print(logElement)
    }
}
