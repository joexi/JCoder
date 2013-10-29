//
//  JCache.h
//  JObjectCoder
//
//  Created by Joe on 13-10-11.
//  Copyright (c) 2013年 Joe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JCache : NSObject
{
    NSCache *_cache;
}

@property (nonatomic, assign) NSString *name;


- (void)setObject:(id)object forKey:(NSString *)aKey;
- (id)objectForKey:(NSString *)aKey;

@end
