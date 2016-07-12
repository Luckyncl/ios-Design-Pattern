//
//  ViewController.m
//  17桥接模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDPhone.h"
#import "HCDNokiaPhone.h"
#import "HCDSonyPhone.h"
#import "HCDSoftware.h"
#import "HCDGameSoftware.h"
#import "HCDGameNokiaSoftware.h"
#import "HCDAddressListSofeware.h"
typedef id<HCDSoftware> HCDSoftware;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    /**
        合成/聚合复用原则（CARP），尽量使用合成/聚合，尽量不要使用类继承
     
         聚合表示一种 弱的"拥有关系"，体现的是a对象可以包含b对象，但b对象不是a对象的一部分， 合成则是一种 强的“拥有”关系，体现了严格的部分和整体的关系，部分和整体的生命周期一样。
     
     
        优先使用对象的合成/聚合将有助于你保持每个类被封装，并被集中在单个任务上。这样类和类继承层次会保持较小的规模并且不太可能增长为不可控的庞然大物
     */
    
    
    
    /**
     桥接模式（Bridge）,将抽象部分与它的实现部分分离，使它们都可以独立的变化。
     
        抽象与它的实现分离，这并不是说，让抽象类与其派生类分离，因为这没有任何意义。实现指的是抽象类和它的派生类用来实现自己的对象。
     */
    
    
    
    
    
    HCDPhone *phone = [[HCDNokiaPhone alloc]init];
    HCDSoftware software = [[HCDGameNokiaSoftware alloc]init];
    [phone setSoftWare:software];
    [phone playSoftPhone];
    software = [[HCDAddressListSofeware alloc]init];
    [phone setSoftWare:software];
    [phone playSoftPhone];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
