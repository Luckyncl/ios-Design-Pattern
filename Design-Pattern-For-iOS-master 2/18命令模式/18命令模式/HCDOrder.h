//
//  HCDOrder.h
//  18命令模式
//
//

#import <Foundation/Foundation.h>
#import "HCDOrder.h"
#import "HCDWorker.h"
@interface HCDOrder : NSObject
@property(nonatomic,copy)NSString *orderString;



/**
   用来声明执行操作的接口
 */

/**
 *  用于实例化对象，
 
       
 */
-(instancetype)initWithOrderString:(NSString *)orderString;


// 定义了一个接口
-(void)executeOrder;
@end
