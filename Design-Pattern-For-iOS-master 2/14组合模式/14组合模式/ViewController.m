//
//  ViewController.m
//  14组合模式
//
//  Created by 黄成都 on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDConcreteCompany.h"
#import "HCDHRDepartment.h"
#import "HCDFinanceDepartment.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /**
     组合模式，将对象组合成树形结构，以表示 部分整体的层次结构。组合模式使得用户对单个对象和组合对象的使用具有一致性。
     
     
    组合模式分为两种方式
          1.透明方式，也就是说 在 component中声明所有用来管理子对象的方法，其中包括add remove等。这样实现component 接口的所有子类都具备了add和remove。这样做的好处就是 叶节点和枝结点对于外界没有区别，他们具备完全一致的行为接口。但问题也很明显，因为Leaf累本事不具备add 和remove方法的功能，所有实现他是没有意义的
           2.安全方式，就是在component接口中不去生命add和remove方法，那么子类leaf也就不需要去实现它，而是在composite生命左右用来管理子类对象的方法。 不过由于不够透明，所以树叶和树枝类将不具有相同的接口，客服端的调用需要做相应的判断，带来了不便。
     
        
         什么时候使用组合模式呢：
           当你发现需求中是体现部分与整体层次的结构时，以及你希望用户可以忽略组合对象与单个对象的不同，统一的使用组合机构中的所有对象时，就应该考虑用组合模式了
     */
    
    
    
    HCDConcreteCompany *root = [[HCDConcreteCompany alloc]initWithName:@"总公司"];
    [root add:[[HCDHRDepartment alloc]initWithName:@"总公司人力资源部"]];
    [root add:[[HCDFinanceDepartment alloc]initWithName:@"总公司财务部"]];
    
    HCDConcreteCompany *comp = [[HCDConcreteCompany alloc]initWithName:@"上海华东分公司"];
    [comp add:[[HCDHRDepartment alloc]initWithName:@"上海华东分公司人力资源部"]];
    [comp add:[[HCDFinanceDepartment alloc]initWithName:@"上海华东分公司财务部"]];
    [root add:comp];
    
    HCDConcreteCompany *comp1 = [[HCDConcreteCompany alloc]initWithName:@"杭州办事处"];
    [comp1 add:[[HCDHRDepartment alloc]initWithName:@"杭州办事处人力资源部"]];
    [comp1 add:[[HCDFinanceDepartment alloc]initWithName:@"杭州办事处财务部"]];
    [root add:comp1];
    NSLog(@"结构图:----------------------------");
    [root display];
    NSLog(@"职责:---------------------------");
    [root lineofDuty];
}

@end
