//
//  ViewController.m
//  22解释器模式
//
//  Created by 黄成都 on 15/8/27.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDContext.h"
#import "HCDTerminalExpression.h"
#import "HCDNonterminalExpression.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    /**
        解释器模式（interpreter），给定一个语言，定义它的文法的一种表示，并定义一个解释器，这个解释器使用该表示来解释语言中的句子。
     
     
                正则表达式就是他的一种应用。
     
     
     
            当有一个语言需要解释执行，并且你可将该语言中的句子表示为一个抽象语法树时，可使用解释器模式
     */
    HCDContext *context = [[HCDContext alloc]initWithInput:@"12345"];
    NSMutableArray *list = [[NSMutableArray alloc]init];
    
    [list addObject:[[HCDTerminalExpression alloc]init]];
    
    [list addObject:[[HCDNonterminalExpression alloc]init]];
    
    [list addObject:[[HCDTerminalExpression alloc]init]];
    
    [list addObject:[[HCDTerminalExpression alloc]init]];
    
    for(HCDAbstractExpression *exp in list) {
        [exp interpret:context];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
