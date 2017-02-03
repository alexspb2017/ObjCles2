//
//  MyTableViewController.m
//  ObjCles2
//
//  Created by ALEXEY BESSER on 02.02.17.
//  Copyright © 2017 ALEXEY BESSER. All rights reserved.
//

#import "MyTableViewController.h"
#import "Worker.h"
@interface MyTableViewController ()
@property (copy) NSArray *workers;
@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _workers = [self.provider requestWorkers];  //получаем переменные
}


#pragma mark - Table view data source // как вставляем данные в таблицу

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1; //сколько секций в таблице
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.workers.count; //сколько ячеек в секции
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath]; //получаем экземпляр ячейки, она будет браться из кеша
         //sozdaem yacheiku
    Worker *worker =self.workers[indexPath.row]; //привязываем кол-во ячеек к кол-ву воркеров
    cell.textLabel.text=worker.name; //данные в 1 поле ячейки
    cell.detailTextLabel.text= [NSString stringWithFormat:@"%lu", worker.salary]; //данные во 2 ячейку. из цифры преобразовали в строку
    return cell;
}

@end
