//
//  WorkerProvider.h
//  ObjCles2
//
//  Created by ALEXEY BESSER on 02.02.17.
//  Copyright © 2017 ALEXEY BESSER. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WorkerProvider : NSObject

- (NSArray *)requestWorkers; //генерирует модели и отдает для отрисовки в контроллер

@end
