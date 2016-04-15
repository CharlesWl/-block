//
//  ViewController.h
//  学习block
//
//  Created by charles on 16/3/29.
//  Copyright © 2016年 Charles_Wl. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^myBlock)();//后面就可以用myBlock定义无参数无返回值的block
typedef void(^myBlock1)(NSString *);//使用myBlock1定义参数为NSString无返回值的block
typedef NSString *(^myBlock2)(NSString *);//使用myBlock2定义参数为NSString有返回值NSString的block

@interface ViewController : UIViewController
//block被当做方法格式：(block类型)参数名称
- (void)test:(void(^)())testBlock;//无返回值 无参数
- (void)test1:(void(^)(NSString *))test1Block;//无返回值 有参数
- (void)test2:(NSString *(^)(NSString *))test2Block;//有返回值 有参数
//用typedef定义的block来定义属性及方法
@property (nonatomic, copy) myBlock testBlock;
- (void)test3:(myBlock)test3Block;
@end

