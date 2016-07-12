/// 

#import <Foundation/Foundation.h>


// 相当于Memento层
/**
 *  负责存储originator对象的内部状态，并可防止originator以外的其他对象访问备忘录Memento
 */
@interface HCDGameState : NSObject
@property(nonatomic,assign)NSInteger life;
@property(nonatomic,assign)NSInteger attack;
@property(nonatomic,assign)NSInteger defeat;
@end
