//
//  HCDWebSiteFactory.h
//  21享元模式
//
//  Created by yifan on 15/8/27.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HCDWebSite.h"
/**
 *  享元工厂，用来创建并管理flyweight对象。它主要是用来确保合理地共享flyweitght，当用户请求一个flyweight时，flyweightFactory对象提供一个已创建的实例或者创建一个（如果不存在的话）
 */

@interface HCDWebSiteFactory : NSObject
@property(nonatomic,strong)NSDictionary *flyweights;

-(id<HCDWebSite> )getWebSiteCategory:(NSString *)webkey;
-(NSInteger)getWebSiteCount;
@end
