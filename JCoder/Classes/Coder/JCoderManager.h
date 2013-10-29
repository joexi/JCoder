//
//  JCoderManager.h
//  JObjectCoder
//
//  Created by Joe on 13-10-23.
//  Copyright (c) 2013年 Joe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JCoderManager : NSObject
{
    
}

/**
 *	@brief	encode an object
 *
 *	@param 	object 	object
 *
 *	@return	coding key
 */
+ (NSString *)encode:(NSObject *)object;


/**
 *	@brief	decode object from key
 *
 *	@param 	key 	key
 *
 *	@return	object
 */
+ (NSObject *)decode:(NSString *)key;

@end
