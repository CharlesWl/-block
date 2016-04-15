//
//  AnthorViewController.m
//  学习block
//
//  Created by charles on 16/3/29.
//  Copyright © 2016年 Charles_Wl. All rights reserved.
//

#import "AnthorViewController.h"

@interface AnthorViewController ()
@property (weak, nonatomic) IBOutlet UITextField *personNameTF;
@property (weak, nonatomic) IBOutlet UITextField *phoneNumberTF;

@end

@implementation AnthorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"添加";
}


- (IBAction)didClickOnCommit:(UIButton *)sender {
    person *per = [[person alloc]init];
    per.personName = self.personNameTF.text;
    per.phoneNumber = [self.phoneNumberTF.text integerValue];
    if (self.myBloclk) {
        self.myBloclk(per);
    }

    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)didClickOnCancel:(id)sender {
    
}
@end
