//
//  HCDReuquest.h
//  19职责链模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>

// 一个请求类
@interface HCDReuquest : NSObject
@property(nonatomic,copy)NSString *requestType;
@property(nonatomic,assign)NSInteger number;
@end
