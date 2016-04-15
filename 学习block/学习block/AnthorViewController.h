//
//  AnthorViewController.h
//  学习block
//
//  Created by charles on 16/3/29.
//  Copyright © 2016年 Charles_Wl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "person.h"
@interface AnthorViewController : UIViewController
@property (nonatomic, copy)void(^myBloclk)(person *);
@property (nonatomic, weak)id   delegate;
@end
