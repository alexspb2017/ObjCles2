//
//  ViewController.m
//  ObjCles2
//
//  Created by ALEXEY BESSER on 02.02.17.
//  Copyright © 2017 ALEXEY BESSER. All rights reserved.
//

#import "RootViewController.h"
#import "MyTableViewController.h"


@implementation RootViewController


 #pragma mark - Navigation
 
 // перехват между рутом и таблевью (обработчик перехода)

 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
     
  MyTableViewController *destController = [segue destinationViewController];
     
     WorkerProvider *provider = [WorkerProvider new];
     destController.provider = provider;
     
}

@end
