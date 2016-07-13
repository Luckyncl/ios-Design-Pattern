

#import <Foundation/Foundation.h>
#import "HCDContext.h"


/**
 *  抽象表达式，声明一个抽象的解释操作，这个接口为抽象语法树中所有的结点所共享
 */
@interface HCDAbstractExpression : NSObject
-(void)interpret:(HCDContext *)context;
@end
