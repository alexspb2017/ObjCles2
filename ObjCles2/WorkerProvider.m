//
//  WorkerProvider.m
//  ObjCles2
//
//  Created by ALEXEY BESSER on 02.02.17.
//  Copyright © 2017 ALEXEY BESSER. All rights reserved.
//
#import "Worker.h"
#import "WorkerProvider.h"

@interface WorkerProvider()

@property (strong) NSMutableArray *workersContent;
@end

@implementation WorkerProvider

-(instancetype)init
{
    if (self=[super init]){
         _workersContent = [NSMutableArray new];
        int count =100;
        [self generateWorkersWithCount:count];
    }
return self;
}
-(void)generateWorkersWithCount:(NSUInteger)count
{
    
    for (int i=0; i < count; i++) {
        Worker *w = [Worker randomWorker];
        [_workersContent addObject:w];
    }
}

- (NSArray *)requestWorkers
{
    return self.workersContent.copy;
    
}

@end
