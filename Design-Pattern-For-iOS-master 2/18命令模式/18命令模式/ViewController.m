//
//  ViewController.m
//  18命令模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDWaiter.h"
#import "HCDCustomr.h"
#import "HCDWorker.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /**
       命令模式（command），将一个请求封装为一个对象，从而使你可用不同的请求对客户进行参数化；对请求排队或记录请求日志，以及支持可撤销的操作
     
        ps：个人感觉，那些对网络请求封装的，并且附带缓存设计的，都是应用的命令模式。
     */
    
    
    
    HCDWaiter *waiter = [[HCDWaiter alloc]init];
    HCDCustomr *customer = [[HCDCustomr alloc]init];
    [waiter addOrder:[customer pushOrderWithString:@"十串羊肉" type:YES]];
    HCDCustomr *customer1 = [[HCDCustomr alloc]init];
    [waiter addOrder:[customer1 pushOrderWithString:@"二十串鸡肉" type:NO]];
    [waiter notifyOrder];
    
}


@end
