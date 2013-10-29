//
//  NSString + MD5.m
//  JObjectCoder
//
//  Created by Joe on 13-10-24.
//  Copyright (c) 2013年 Joe. All rights reserved.
//

#import "NSString + MD5.h"
#import <CommonCrypto/CommonDigest.h>
@implementation NSString(Extension)


- (NSString *)MD5String {
    const char *cstr = [self UTF8String];
    unsigned char result[NSString_MD5_Length/2];
    CC_MD5(cstr, strlen(cstr), result);
    NSMutableString *str = [NSMutableString string];
    for (int i = 0; i < NSString_MD5_Length/2; i++) {
        [str appendFormat:@"%02X",result[i]];
    }
    return str;
//    return [NSString stringWithFormat:
//            @"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
//            result[0], result[1], result[2], result[3],
//            result[4], result[5], result[6], result[7],
//            result[8], result[9], result[10], result[11],
//            result[12], result[13], result[14], result[15]
//            ];  
}


@end
