//
//  NSArray+RBAddition.m
//  RainbowKit
//
//  Created by 天池邵 on 15/3/26.
//  Copyright (c) 2015年 rainbow. All rights reserved.
//

#import "NSArray+RBAddition.h"

@implementation NSArray (RBAddition)
- (NSArray *)rb_map:(id (^)(id))mapBlock {
    NSMutableArray *mapResultArr = [NSMutableArray array];
    for (id object in self) {
        [mapResultArr addObject:mapBlock(object)];
    }
    
    return mapResultArr;
}
@end
