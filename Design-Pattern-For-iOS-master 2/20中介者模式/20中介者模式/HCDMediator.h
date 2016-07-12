//
//  HCDMediator.h
//  20中介者模式
//
//  Created by 黄成都 on 15/8/26.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HCDAbstractMediator.h"
/**
 *  具体中介者对对象，实现抽象类的方法，他需要知道所有具体同事类，并从具体同事接收消息，向具体同事对象发出命令，
 */
@interface HCDMediator : HCDAbstractMediator

@end
