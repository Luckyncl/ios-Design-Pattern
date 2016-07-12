//
//  HCDGameRoll.h
//  13备忘录模式
//
//  Created by 黄成都 on 15/8/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import <Foundation/Foundation.h>
/// 相当于originator层   originator 的意思是鼻祖的意思
/// 负责创建一个备忘录 用来记录当前他的内部状态，并可使用备忘录恢复内部状态

@class HCDGameState;
@interface HCDGameRoll : NSObject
@property(nonatomic,assign)NSInteger life;
@property(nonatomic,assign)NSInteger attack;
@property(nonatomic,assign)NSInteger defeat;
-(void)getState;
-(HCDGameState *)saveState;
-(void)fightBoss;
-(void)rebackState:(HCDGameState *)state;
@end
