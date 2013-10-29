//
//  A.h
//  JObjectCoder
//
//  Created by Joe on 13-10-24.
//  Copyright (c) 2013年 Joe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JCoderProtocol.h"
#import "B.h"
@interface A : NSObject <JCoderProtocol>
{
    B *_b;
    B *_b2;
    NSString *_aDescription;
}
@property (nonatomic, strong)B *b;
@property (nonatomic, strong)B *b2;
@property (nonatomic, assign) int identifier;
@end
