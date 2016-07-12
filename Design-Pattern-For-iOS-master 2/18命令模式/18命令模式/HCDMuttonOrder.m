//
//  HCDMuttonOrder.m
//  18命令模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDMuttonOrder.h"

@implementation HCDMuttonOrder

//  讲一个接收者对象绑定于一个动作，调用接收者对应的操作，以实现EXecute
-(void)executeOrder{
    [[HCDWorker sharedWorker] doMuttonWork:self.orderString];
}
@end
