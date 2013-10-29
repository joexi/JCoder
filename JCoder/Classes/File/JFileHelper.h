//
//  JFileHelper.h
//  JObjectCoder
//
//  Created by Joe on 13-10-11.
//  Copyright (c) 2013年 Joe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JFileHelper : NSObject


/**
 *	@brief	Store NSDictionayr object to local
 *
 *	@param 	dic 	dictionary data
 *	@param 	path 	path to store
 */
+ (BOOL)storeDictionary:(NSDictionary *)dic toPath:(NSString *)path;


/**
 *	@brief	读取字典信息
 *
 *	@param 	path 	路径
 *
 *	@return	字典信息
 */
+ (NSDictionary *)dictionaryfromPath:(NSString *)path;

@end
