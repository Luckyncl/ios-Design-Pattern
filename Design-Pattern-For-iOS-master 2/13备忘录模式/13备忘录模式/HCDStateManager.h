//

#import <Foundation/Foundation.h>

// 相当于Caretaker层 负责保存好备忘录 (他只有一个功能负责保存，，一定要注意， 在这里他写的不怎么对)

@class HCDGameState;
@interface HCDStateManager : NSObject
@property(nonatomic,strong)HCDGameState *gameState;
-(instancetype)initWithGameState:(HCDGameState *)gameState;
@end
