//
//  JEncoder.m
//  JUIImage
//
//  Created by Joe on 13-9-5.
//  Copyright (c) 2013年 Joe. All rights reserved.
//

#import "JEncoder.h"
#import "objc/objc.h"
#import "objc/message.h"
#import "JCacheManager.h"
#import "NSObject + Key.h"
@implementation JEncoder
#pragma mark - public method
+ (BOOL)isValid:(id)obj
{
    if ([obj isKindOfClass:[NSString class]] ||
        [obj isKindOfClass:[NSNumber class]]) {
        return YES;
    }
    return NO;
}

+ (void)serializeObject:(NSObject *)object handler:(JEncoderHandler)handler;
{
    NSMutableDictionary *objectInfo = [NSMutableDictionary dictionary];
    Class cls = [object class];
    [objectInfo setValue:NSStringFromClass(cls) forKey:Class_Key];
    while(cls && cls != [NSObject class] && [cls conformsToProtocol:JCoder_Protocol]) {
        unsigned int count = 0;
        Ivar *ivars = class_copyIvarList(cls, &count);
        for (int i = 0; i < count; i++) {
            Ivar ivar = ivars[i];
            const char *name = ivar_getName(ivar);
            NSString *varKey = [NSString stringWithUTF8String:name];
            NSObject *varValue = [object valueForKey:varKey];
            if (!varValue) {
                
            }
            else if ([self isValid:varValue]) {
                [objectInfo setValue:varValue forKey:varKey];
            }
            else if ([varValue isKindOfClass:[NSArray class]]) {
                
            }
            else if ([varValue isKindOfClass:[NSDictionary class]]) {
                
            }
            else if ([varValue isKindOfClass:[NSSet class]]) {
                
            }
            else {
                [self serializeObject:varValue handler:handler];
                [objectInfo setValue:[varValue key] forKey:varKey];
            }
        }
        cls = class_getSuperclass(cls);
    }
    handler(objectInfo,object);
}



@end
