//
//  JDecoder.m
//  JUIImage
//
//  Created by Joe on 13-9-5.
//  Copyright (c) 2013年 Joe. All rights reserved.
//

#import "JDecoder.h"
#import "objc/objc.h"
#import "objc/message.h"
#import "NSString + MD5.h"

@implementation JDecoder
+ (NSObject *)objectWithDic:(NSDictionary *)dic handler:(JDecoderHandler)handler
{
    NSString *clsName = [dic valueForKey:Class_Key];
    Class cls = NSClassFromString(clsName);
    NSObject *obj = [[cls alloc] init];
    for (NSString *key in [dic allKeys]) {
        if ([key isEqualToString:Class_Key]) {
            continue;
        }
        NSObject *value = [dic valueForKey:key];
        if (!value) {
            
        }
        if ([value isKindOfClass:[NSString class]]) {
            if ([(NSString *)value length] == NSString_MD5_Length) {
                NSObject *property = handler((NSString *)value);
                if (!property) {
                    property = [self objectWithDic:dic handler:handler];
                }
                [obj setValue:property forKey:key];
            }
            else {
                [obj setValue:value forKey:key];
            }
        }
        else if ([value isKindOfClass:[NSNumber class]]) {
            [obj setValue:value forKey:key];
        }
        else if ([value isKindOfClass:[NSDictionary class]]) {

        }
        else if ([value isKindOfClass:[NSArray class]]) {

        }
        else if ([value isKindOfClass:[NSSet class]]) {
            
        }
        else
        {
            
        }
    }
    return obj;
}

@end
