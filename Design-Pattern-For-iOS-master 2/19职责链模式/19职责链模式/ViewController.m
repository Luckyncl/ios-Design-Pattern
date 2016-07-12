//
//  ViewController.m
//  19职责链模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDMnager.h"
#import "HCDCommonManager.h"
#import "HCDMajorManager.h"
#import "HCDGenaralManager.h"
#import "HCDReuquest.h"
@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    /**
     *  责任链模式：使多个对象都有机会处理请求，从而避免请求的发送者和接收者之间的耦合关系。 将这个对象连成一条链，并沿着这条链传递该请求，直到有一个对象处理它为止。
     
     
        好处： 使得接收者和发送者都没有对方的明确信息，且链中的对象自己也并不知道链的结构。结果是责任链可简化对象的相互连接，他们仅需保持一个指向其后继者的引用，而不需保持他所有的候选接受者的引用，大大降低了耦合度
     */
    
    HCDCommonManager *common = [[HCDCommonManager alloc]initWithName:@"猪经理"];
    HCDMajorManager *majon = [[HCDMajorManager alloc]initWithName:@"狗总监"];
    HCDGenaralManager *genaral = [[HCDGenaralManager alloc]initWithName:@"蛤蟆总经理"];
    common.superior = majon; 
    majon.superior = genaral;
    
    HCDReuquest *request = [[HCDReuquest alloc]init];
    request.requestType = @"请假";
    request.number = 5;
    [common dealRequest:request];
    
    request.number = 20;
    [common dealRequest:request];
    
    request.number = 220;
    [common dealRequest:request];
    
    request.number = 1200;
    [common dealRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
