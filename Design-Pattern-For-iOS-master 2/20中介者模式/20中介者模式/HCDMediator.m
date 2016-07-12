//
//  HCDMediator.m
//  20中介者模式
//
//  Created by 黄成都 on 15/8/26.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "HCDMediator.h"

@implementation HCDMediator
@synthesize colleagueB = _colleagueB;
@synthesize colleagueA = _colleagueA;



/**
 *  具体中介者对对象，实现抽象类的方法，他需要知道所有具体同事类，并从具体同事接收消息，向具体同事对象发出命令，
 */
-(instancetype)initWithColleagueA:(HCDAbstractColleague *)colleagueA colleagueB:(HCDAbstractColleague *)colleagueB{
    self = [super init];
    if (self) {
        _colleagueA = colleagueA;
        _colleagueB = colleagueB;
    }
    return self;
}


-(void)setValueToColleagueA:(CGFloat)value{
    self.colleagueA.number = value * 100;
}
-(void)setValueToColleagueB:(CGFloat)value{
    self.colleagueB.number = value * 0.01;
}
@end
