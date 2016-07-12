//
//  ViewController.m
//  20中介者模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDColleagueA.h"
#import "HCDColleagueB.h"
#import "HCDAbstractMediator.h"
#import "HCDMediator.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /**
        中介者模式（mediator） ，用一个中介对象来封装一系列的对象交互。中介者使各对象不需要显示的相互作用，从而使其耦合松散，而且可以独立的改变它们之间的交互。
     */
    
    /**
       应用场景，中介者模式一般应用于一组对象以定义良好但是复杂的方式进行通信的场合。
              以及想定制一个分布在多个类中的行为，而又不想生成太多的子类的场合。
     */
    
    // 具体同事类
    HCDAbstractColleague *colleagueA = [[HCDColleagueA alloc]init];
    HCDAbstractColleague *colleagueB = [[HCDColleagueB alloc]init];
    
    // 具体的中介者  --->>>需要知道所有的同事类，
    HCDAbstractMediator *mediator = [[HCDMediator alloc]initWithColleagueA:colleagueA colleagueB:colleagueB];
    colleagueA.mediator = mediator;
    colleagueB.mediator = mediator;
    
    colleagueA.number = 1450;
    colleagueB.number = 1450;
    [colleagueA notice];
    NSLog(@"%f---%f",colleagueA.number,colleagueB.number);
    colleagueB.number = 123;
    [colleagueB notice];
    NSLog(@"%f---%f",colleagueA.number,colleagueB.number);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
