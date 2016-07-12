//
//  HCDConcreteCompany.m
//  14组合模式
//
//
//

#import "HCDConcreteCompany.h"

@interface HCDConcreteCompany ()
@property(nonatomic,strong)NSMutableArray *childList;

@end

@implementation HCDConcreteCompany
-(instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        _name = name;
        _childList = [NSMutableArray array];
    }
    return self;
}

-(void)add:(id<HCDCompany>)company{
    [self.childList addObject:company];
}
-(void)remove:(id<HCDCompany>)company{
    [self.childList removeObject:company];
}
-(void)display{
    NSLog(@"%@的子公司",self.name);
    for (id<HCDCompany> company in self.childList) {
        [company display];
    }
}
-(void)lineofDuty{
    NSLog(@"%@的子公司的职责",self.name);
    for (id<HCDCompany> company in self.childList) {
        [company lineofDuty];
    }
}
@end
