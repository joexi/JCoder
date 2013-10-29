//
//  A.m
//  JObjectCoder
//
//  Created by Joe on 13-10-24.
//  Copyright (c) 2013年 Joe. All rights reserved.
//

#import "A.h"

@implementation A
- (id)init
{
    self = [super init];
    if (self) {
        _b = [[B alloc] init];
        _b.name = @"b111";
        _b2 = [[B alloc] init];
        _b2.name = @"b222";
        _b.c = _b2.c = [[C alloc] init];
        _aDescription = @"i am an instance of calss a";
    }
    return self;
}

- (void)dealloc
{
    
}
@end
