//
//  JEncoder.h
//  JUIImage
//
//  Created by Joe on 13-9-5.
//  Copyright (c) 2013年 Joe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JCoderConfig.h"
typedef void (^JEncoderHandler)(NSMutableDictionary *, NSObject *);

@interface JEncoder : NSObject
{
}
/**
 *	@brief	serialize object into dictionary
 *
 *	@param 	object 	object for serializing
 *	@param 	setter 	handle object and dictionary info
 */
+ (void)serializeObject:(NSObject *)object handler:(JEncoderHandler)handler;

@end
