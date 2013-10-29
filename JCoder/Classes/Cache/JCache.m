//
//  JCache.m
//  JObjectCoder
//
//  Created by Joe on 13-10-11.
//  Copyright (c) 2013年 Joe. All rights reserved.
//

#import "JCache.h"
@implementation JCache
- (id)init
{
    self = [super init];
    if (self) {
        _cache = [[NSCache alloc] init];
    }
    return self;
}

- (void)dealloc
{
    _cache = nil;
}

#pragma mark - public method
- (NSString *)name
{
    return _cache.name;
}

- (void)setName:(NSString *)name
{
    _cache.name = name;
}

- (void)setObject:(id)object forKey:(NSString *)aKey
{
    [_cache setObject:object forKey:aKey];
}

- (id)objectForKey:(NSString *)aKey
{
    return [_cache objectForKey:aKey];
}


@end
