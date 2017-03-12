//
//  ViewController.m
//  SecrectYellowBicycle
//
//  Created by huyiyong on 17/3/6.
//  Copyright © 2017年 huyiyong. All rights reserved.
//

#import "ViewController.h"
#import "ZBarSDK.h"

@interface ViewController ()<ZBarReaderDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *TJBtn = [[UIButton alloc] initWithFrame:CGRectMake(30, 270, 120, 50)];
    [TJBtn setTitle:@"添加" forState:UIControlStateNormal];
    [TJBtn addTarget:self action:@selector(tjClick:) forControlEvents:UIControlEventTouchUpOutside];
    [TJBtn setTitleColor:[UIColor brownColor] forState:UIControlStateNormal];
    [self.view addSubview:TJBtn];
    
    UIButton *SMBtn = [[UIButton alloc] initWithFrame:CGRectMake(240, 270, 120, 50)];
    [SMBtn setTitle:@"扫描" forState:UIControlStateNormal];
    [SMBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [SMBtn addTarget:self action:@selector(smClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:SMBtn];
}
#pragma mark 添加
-(void)tjClick:(UIButton*)btn{

}
#pragma mark 扫描
-(void)smClick:(UIButton*)btn{
    
    ZBarReaderViewController*reader = [[ZBarReaderViewController alloc]init];
    
    reader.readerDelegate=self;
    
    ZBarImageScanner*scanner = reader.scanner;

    [scanner setSymbology:ZBAR_I25 config:ZBAR_CFG_ENABLE to:0];
    
    [self presentViewController:reader animated:YES completion:nil];

}


@end
