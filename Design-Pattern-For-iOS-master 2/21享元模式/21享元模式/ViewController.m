//
//  ViewController.m
//  21享元模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDWebSiteFactory.h"
#import "HCDWebSite.h"
#import "HCDConcreteWebSite.h"
#import "HCDUser.h"

typedef id<HCDWebSite> HCDWebSiteType;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    /**
       享元模式（flyweight），运用共享技术有效地支持大细粒度的对象。
     */
    
    
    /**
      在享元对象内部并且不会随环境改变而改变的共享部分，可以称为是享元对象的内部状态，而随环境改变而改变的、不可以共享的状态就是外部状态了。 事实上，享元模式可以避免大量非常相似类的开销。在程序设计中，有时需要生成大量细粒度的类实例来表示数据。如果能发现这些实例出了几个参数外基本上都是相同的，有时就能够受大幅度地减少需要实例化的类的数量。如果能把那些参数移到类实例的外面，在方法调用时将他们传递进来，就可以通过共享大幅度地减少单个实例的数目。 
             也就是说享元模式flyweight执行时所需的状态是有内部的也可能有外部的，内部状态存储于concreFlyweight对象中，而外部对象则应该考虑由客户端对象存储或计算，当调用flyweight对象的操作时，将该状态传递给它。
     */
    
    
    /**
     使用场景： 如果一个应用程序使用了大量的对象，而大量的这些对象造成了很大的存储开销时就应该考虑使用；还有就是对象的大多数状态可以外部状态，如果删除对象的外部状态，那么可以用相对较少的共享对象取代很过组对象，此时可以考虑使用享元模式
     */
    HCDWebSiteFactory *facoty = [[HCDWebSiteFactory alloc]init];
    HCDWebSiteType fx = [facoty getWebSiteCategory:@"产品展示"];
    HCDUser *user = [[HCDUser alloc]init];
    user.name = @"小菜";
    [fx use:user];
    HCDWebSiteType fy = [facoty getWebSiteCategory:@"产品展示"];
    HCDUser *user1 = [[HCDUser alloc]init];
    user1.name = @"大鸟";
    [fy use:user1];
    HCDWebSiteType fz = [facoty getWebSiteCategory:@"博客"];
    HCDUser *user2 = [[HCDUser alloc]init];
    user2.name = @"咪咪";
    [fz use:user2];
    
    NSInteger count = [facoty getWebSiteCount];
    NSLog(@"个数：%d",count);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
