//
//  RequestManager.m
//  RainbowKit
//
//  Created by Shao.Tc on 15/4/22.
//  Copyright (c) 2015年 Rainbow. All rights reserved.
//

#import "RequestManager.h"
NSString *const BaseApiURL = @"";
@implementation RequestManager
+ (instancetype)sharedInstance {
    static RequestManager *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[RequestManager alloc] initWithBaseURL:[NSURL URLWithString:BaseApiURL]];
        instance.responseSerializer = [AFJSONResponseSerializer serializer];
        [NSURLSessionConfiguration defaultSessionConfiguration].HTTPMaximumConnectionsPerHost = 1;
    });
    return instance;
}
@end
