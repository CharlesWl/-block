//
//  OneViewController.m
//  学习block
//
//  Created by charles on 16/3/29.
//  Copyright © 2016年 Charles_Wl. All rights reserved.
//

#import "OneViewController.h"
#import "AnthorViewController.h"
#import "person.h"
@interface OneViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong)NSMutableArray *personArray;
@property (weak, nonatomic) IBOutlet UITableView *personTV;

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"通讯录";
    UIBarButtonItem *left = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(didClickOnBack)];
    UIBarButtonItem *right = [[UIBarButtonItem alloc]initWithTitle:@"新建" style:UIBarButtonItemStylePlain target:self action:@selector(didClickOnJump)];
    [self.navigationItem setLeftBarButtonItem:left];
    [self.navigationItem setRightBarButtonItem:right];
    self.personTV.delegate = self;
    self.personTV.dataSource = self;
    self.personTV.rowHeight = 60;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.personArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static  NSString *stringCell = @"cellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:stringCell];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:stringCell];
    }
    person *per = self.personArray[indexPath.row];
    cell.textLabel.text = per.personName;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%ld",per.phoneNumber];
    return cell;
}


- (void)didClickOnBack {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didClickOnJump {
    AnthorViewController *anotherVc = [[AnthorViewController alloc]init];
    anotherVc.myBloclk = ^(person *person){
        [self.personArray addObject:person];
        [self.personTV reloadData];
    };
    [self.navigationController pushViewController:anotherVc animated:YES];
}

- (NSMutableArray *)personArray {
    if (!_personArray) {
        _personArray = [NSMutableArray arrayWithCapacity:3];
    }
    return _personArray;
}

@end
