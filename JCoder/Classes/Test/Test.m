//
//  Test.m
//  JUIImage
//
//  Created by Joe on 13-9-5.
//  Copyright (c) 2013年 Joe. All rights reserved.
//

#import "Test.h"

@implementation Test
- (id)init
{
    self = [super init];
    name = @"123";
    property = [[TestProperty alloc] init];
    
    TestProperty *t = [[TestProperty alloc] init];
    t.propertyID = 1001;
    self.userInfo = [NSMutableDictionary dictionaryWithDictionary:@{@"qqq": t}];
    self.ary = [NSMutableArray arrayWithObjects:property,@(2), nil];

    return self;
}
@end



@implementation TestBase
- (id)init
{
    self = [super init];
    baseName = @"hahaha";
    return self;
}
@end


@implementation TestProperty
- (id)init
{
    self = [super init];

    return self;
}
@end