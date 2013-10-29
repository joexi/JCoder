//
//  Test.h
//  JUIImage
//
//  Created by Joe on 13-9-5.
//  Copyright (c) 2013年 Joe. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface TestProperty : NSObject
{
    
}
@property (nonatomic, assign) int propertyID;
@end

@interface TestBase : NSObject
{
    NSString *baseName;
}

@end

@interface Test : TestBase
{
    NSString *name;
    TestProperty *property;
}
@property (nonatomic, assign) int testID;
@property (nonatomic, retain) NSDictionary *userInfo;
@property (nonatomic, retain) NSArray *ary;
@end



