//
//  Worker.h
//  ObjCles2
//
//  Created by ALEXEY BESSER on 02.02.17.
//  Copyright © 2017 ALEXEY BESSER. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Worker : NSObject

@property (copy) NSString *name;
@property NSUInteger salary;

+ (instancetype) randomWorker;



@end
