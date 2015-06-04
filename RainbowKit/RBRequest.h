//
//  RBRequest.h
//  RainbowKit
//
//  Created by 天池邵 on 15/4/23.
//  Copyright (c) 2015年 Rainbow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RequestManager.h"

typedef BOOL(^ParamsBlock)(id request);
typedef void(^RequestResultHandler)(id object, BOOL isError, NSString *msg);
@protocol RequestProtocol <NSObject>

@required
- (void)request:(ParamsBlock)paramsBlock result:(RequestResultHandler)resultHandler;

@end

@interface RBRequest : NSObject<RequestProtocol>
- (NSString *)token;
@end
