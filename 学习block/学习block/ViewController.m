//
//  ViewController.m
//  学习block
//
//  Created by charles on 16/3/29.
//  Copyright © 2016年 Charles_Wl. All rights reserved.
//

#import "ViewController.h"
#import "OneViewController.h"
@interface ViewController ()
//block属性格式：返回值(^block名字)(参数列表)
@property (nonatomic, copy) void(^block)();//无返回值 无参数
@property (nonatomic, copy) void(^block1)(NSString *);//无返回值 有参数
@property (nonatomic, copy) NSString *(^block2)(NSString *);//有返回值 有参数
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //block变量格式：返回值(^block名字)(参数列表)
    void(^block)() = nil;//无返回值 无参数
    void(^block1)(NSString *) = nil;//无返回值 有参数
    NSString *(^block2)(NSString *) = nil;//有返回值 有参数
    myBlock test1Blcok = nil;
}
//无返回值 无参数
- (void)test:(void (^)())testBlock {
    
}
//无返回值 有参数
- (void)test1:(void (^)(NSString *))test1Block {
    
}
//有返回值 有参数
- (void)test2:(NSString *(^)(NSString *))test2Block {
    
}

- (void)test3:(myBlock)test3Block {
    
}

- (IBAction)jumpToAddressBook:(UIButton *)sender {
    OneViewController *oneVC = [[OneViewController alloc]init];
    UINavigationController *navi = [[UINavigationController alloc]initWithRootViewController:oneVC];
    [self presentViewController:navi animated:YES completion:nil];
}
@end
