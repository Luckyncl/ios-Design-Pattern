//
//  ViewController.m
//  23访问者模式
//
//  Created by 黄成都 on 15/8/27.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDObjectStructure.h"
#import "HCDConcreteElementB.h"
#import "HCDConcreteElementA.h"
#import "HCDConcreteVisitor1.h"
#import "HCDConcreteVisitor2.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    /**
        访问者模式（visitor），表示一个作用于某对象结构中的各元素的操作。它使你可以在不改变各元素的类的前提下定义作用于这些元素的新操作。
     */
    
    
    /**
        访问者模式的目的是要把处理从数据结构分离出来。
     
     
           如果系统有比较稳定的数据结构，又有易于变化的算法的话，使用访问者模式就是比较合适的，因为访问者模式使得算法操作的增加变得容易。
     
        访问者模式的优点就是增加新的操作很容易，因为增加新的操作就意味着增加一个新的访问者。访问者模式将有关的行为集中到一个访问者对象中。
     */
    HCDObjectStructure *o = [[HCDObjectStructure alloc]init];
    
    HCDConcreteElementA *eA = [HCDConcreteElementA new];
    
    HCDConcreteElementB *eB = [HCDConcreteElementB new];
    
    [o attach:eA];
    
    [o attach:eB];
    
    HCDConcreteVisitor1
    *v1 = [HCDConcreteVisitor1 new];
    
    HCDConcreteVisitor2
    *v2 = [HCDConcreteVisitor2 new];
    
    [o accept: v1];
    
    [o accept: v2];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
