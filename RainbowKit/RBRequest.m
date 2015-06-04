//
//  RBRequest.m
//  RainbowKit
//
//  Created by 天池邵 on 15/4/23.
//  Copyright (c) 2015年 Rainbow. All rights reserved.
//

#import "RBRequest.h"
//#import "CommonDefines.h"

@implementation RBRequest
- (void)request:(ParamsBlock)paramsBlock result:(RequestResultHandler)resultHandler {
    
}

- (BOOL)checkToken:(NSDictionary *)responseObject {
    if ([responseObject[@"status"] integerValue] == 404) {
        //TODO: LOGOUT
        return NO;
    } else {
        return YES;
    }
}

- (NSString *)token {
    return [[NSUserDefaults standardUserDefaults] stringForKey:@"token"];
}
@end
