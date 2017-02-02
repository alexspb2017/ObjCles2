//
//  Worker.m
//  ObjCles2
//
//  Created by ALEXEY BESSER on 02.02.17.
//  Copyright © 2017 ALEXEY BESSER. All rights reserved.
//

#import "Worker.h"

@implementation Worker

+(instancetype)randomWorker
{
    Worker *w = [Worker new];
    w.salary = arc4random()%1000;
    w.name= [NSString stringWithFormat:@"Worker %i", arc4random()%1000];
    
    return w;
}
@end
