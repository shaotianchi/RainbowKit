//
//  NSString+MatchAddition.h
//  RainbowKit
//
//  Created by 天池邵 on 15/5/6.
//  Copyright (c) 2015年 Rainbow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (MatchAddition)
- (BOOL)rb_isMatchEmail;
- (BOOL)rb_isMatchTel;
- (BOOL)rb_isMatchTelLength;
@end
