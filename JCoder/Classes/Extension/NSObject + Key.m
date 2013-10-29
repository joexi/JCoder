//
//  NSObject.m
//  JObjectCoder
//
//  Created by Joe on 13-10-24.
//  Copyright (c) 2013年 Joe. All rights reserved.
//

#import "NSObject + Key.h"
#import "NSString + MD5.h"
@implementation NSObject(Extension)

- (NSString *)key
{
    return [[NSString stringWithFormat:@"%d",(int)self] MD5String];
}
@end
