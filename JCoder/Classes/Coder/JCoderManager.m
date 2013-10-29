//
//  JCoderManager.m
//  JObjectCoder
//
//  Created by Joe on 13-10-23.
//  Copyright (c) 2013年 Joe. All rights reserved.
//

#import "JCoderManager.h"
#import "PathHelper.h"
#import "JDecoder.h"
#import "JEncoder.h"
#import "Test.h"
#import "JCache.h"
#import "JCacheManager.h"
#import "NSObject + Key.h"
#import "JFileHelper.h"

@implementation JCoderManager

static JCache *_cache = nil;
+ (void)initialize
{
    _cache = [[JCacheManager sharead] cacheWithName:@"ENCODER_CACHE"];
}

+ (NSString *)encode:(NSObject *)object
{
    JEncoderHandler handler = ^(NSMutableDictionary *dic, NSObject *obj) {
        NSString *path = [[PathHelper documentDirectoryPath] stringByAppendingPathComponent:[obj key]];
        [JFileHelper storeDictionary:dic toPath:path];
    };
    [JEncoder serializeObject:object handler:handler];
    return [object key];
}

+ (NSObject *)decode:(NSString *)aKey
{
    NSString *path = [[PathHelper documentDirectoryPath] stringByAppendingPathComponent:aKey];
    NSDictionary *data = [JFileHelper dictionaryfromPath:path];
    JDecoderHandler decoderHandler = ^NSObject *(NSString *key) {
        NSObject *obj = [_cache objectForKey:key];
        if (!obj) {
            obj = [self decode:key];
            [_cache setObject:obj forKey:key];
        }
        return obj;
    };
    return [JDecoder objectWithDic:data
                           handler:decoderHandler];
}

@end
