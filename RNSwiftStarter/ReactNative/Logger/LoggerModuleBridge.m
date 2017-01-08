//
//  LoggerModuleBridge.m
//  RNSwiftStarter
//
//  Created by Nimesh Gurung on 08/01/2017.
//  Copyright © 2017 Nimesh Gurung. All rights reserved.
//

#import "RCTBridge.h"
#import "RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(Logger, NSObject)
RCT_EXTERN_METHOD(log:(NSString *)logElement)
@end
