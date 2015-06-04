//
//  RequestManager.h
//  RainbowKit
//
//  Created by Shao.Tc on 15/4/22.
//  Copyright (c) 2015年 Rainbow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>
extern NSString *const BaseApiURL;
@interface RequestManager : AFHTTPSessionManager
+ (instancetype)sharedInstance;
@end
