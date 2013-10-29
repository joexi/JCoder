//
//  JCacheManager.m
//  JObjectCoder
//
//  Created by Joe on 13-10-11.
//  Copyright (c) 2013年 Joe. All rights reserved.
//

#import "JCacheManager.h"

@implementation JCacheManager
static JCacheManager *sharedManager = nil;
+ (JCacheManager *)sharead
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[JCacheManager alloc] init];
    });
    return sharedManager;
}

+ (BOOL)cleanUp
{
    return YES;
}


#pragma mark public method
- (id)init
{
    self = [super init];
    if (self) {
        _cacheDic = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (void)dealloc
{
    _cacheDic = nil;
}

- (JCache *)cacheWithName:(NSString *)cacheName
{
    return [self cacheWithName:cacheName create:YES];
}

- (JCache *)cacheWithName:(NSString *)cacheName create:(BOOL)create
{
    JCache *cache = [_cacheDic objectForKey:cacheName];
    if (!cache && create) {
        cache = [[JCache alloc] init];
        cache.name = cacheName;
        [_cacheDic setObject:cache forKey:cacheName];
    }
    return cache;
}

@end
