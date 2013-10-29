//
//  JDecoder.h
//  JUIImage
//
//  Created by Joe on 13-9-5.
//  Copyright (c) 2013年 Joe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JCoderConfig.h"
typedef NSObject * (^JDecoderHandler)(NSString *key);
@interface JDecoder : NSObject

/**
 *	@brief	deserialize object from NSDictionary
 *
 *	@param 	dic 	dic info
 *	@param 	getter 	get dic with key
 *
 *	@return	object
 */
+ (NSObject *)objectWithDic:(NSDictionary *)dic handler:(JDecoderHandler)handler;

@end
