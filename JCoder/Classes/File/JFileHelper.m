//
//  JFileHelper.m
//  JObjectCoder
//
//  Created by Joe on 13-10-11.
//  Copyright (c) 2013年 Joe. All rights reserved.
//

#import "JFileHelper.h"

@implementation JFileHelper

+ (BOOL)storeDictionary:(NSDictionary *)dic toPath:(NSString *)path
{
    return [NSKeyedArchiver archiveRootObject:dic toFile:path];
}

+ (NSDictionary *)dictionaryfromPath:(NSString *)path
{
    return [NSKeyedUnarchiver unarchiveObjectWithFile:path];
}
@end
