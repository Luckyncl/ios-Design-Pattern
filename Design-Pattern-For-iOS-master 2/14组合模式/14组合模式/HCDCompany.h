//
//  HCDCompany.h
//  14组合模式
//
//

#import <Foundation/Foundation.h>

@protocol HCDCompany <NSObject>

-(void)add:(id<HCDCompany>)company;
-(void)remove:(id<HCDCompany>)company;
-(void)display;
-(void)lineofDuty;

@end
