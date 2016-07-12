//
//  ViewController.m
//  16单列模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     *  单例模式（singleton），保证一个类仅有一个实例，并提供一个访问他的全局访问点。
     *
     *    通常我们可以让一个全局变量使得一个对象被访问，但它不能防止你实例化多个对象。
     
     
        多线程的单例
          lock（加锁）是确保当一个线程位于代码的临界区时，另一个线程不进入临界区。如果其他线程试图进入锁定的代码，则它将一直等待（即阻止），知道该对象被释放。
           
     
        单例 还分为饿汉式单例（提前占用了系统资源），和 懒汉式单例（在多线程访问的时候，会面临安全问题）
     */
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
