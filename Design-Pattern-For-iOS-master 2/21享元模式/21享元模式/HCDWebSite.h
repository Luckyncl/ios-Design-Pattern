//
//  HCDWebSite.h
//  21享元模式
//
//  Created by yifan on 15/8/27.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HCDUser.h"

// 所有具体享元类的超类或接口，通过这个接口，flyweight可以接受并作用于外部状态
@protocol HCDWebSite <NSObject>
-(void)use:(HCDUser *)user;
@end
