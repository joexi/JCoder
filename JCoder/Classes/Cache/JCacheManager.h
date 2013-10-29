//
//  JCacheManager.h
//  JObjectCoder
//
//  Created by Joe on 13-10-11.
//  Copyright (c) 2013年 Joe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JCache.h"
@interface JCacheManager : NSObject
{
    NSMutableDictionary *_cacheDic;
    
}
/**
 *	@brief	获取单例对象
 *
 *	@return	JCacheManager单例
 */
+ (JCacheManager *)sharead;


/**
 *	@brief	生成缓存
 *
 *	@param 	cacheName 	缓存名
 *
 *	@return	缓存对象
 */
- (JCache *)cacheWithName:(NSString *)cacheName;

/**
 *	@brief	生成缓存
 *
 *	@param 	cacheName 	缓存名
 *	@param 	create   没有缓存时是否创建
 *
 *	@return 缓存对象
 */
- (JCache *)cacheWithName:(NSString *)cacheName create:(BOOL)create;

@end
