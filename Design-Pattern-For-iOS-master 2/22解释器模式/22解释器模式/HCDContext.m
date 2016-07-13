

#import "HCDContext.h"
/**
   包含解释器之外的一些全局信息
 */
@implementation HCDContext
-(instancetype)initWithInput:(NSString *)input{
    self = [super init];
    if (self) {
        _input = input;
    }
    return self;
}
-(NSString *)output{
    return [NSString stringWithFormat:@"输入的是%@",_input];
}
@end
