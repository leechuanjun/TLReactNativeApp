//
//  TLRootViewController.m
//  TLReactNativeApp
//
//  Created by lichuanjun on 2018/12/18.
//  Copyright © 2018 lichuanjun. All rights reserved.
//

#import "TLRootViewController.h"
#import "TLReactViewController.h"

@interface TLRootViewController ()

@end

@implementation TLRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"NativeRNApp";
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btnReactNative = [[UIButton alloc] initWithFrame:CGRectMake(150, 150, 120, 40)];
    [btnReactNative setTitle:@"调用RN代码" forState:UIControlStateNormal];
    [btnReactNative setBackgroundColor:[UIColor grayColor]];
    [btnReactNative addTarget:self action:@selector(reactNativeTap) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnReactNative];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)reactNativeTap {
    TLReactViewController *rnVC = [[TLReactViewController alloc] init];
    [self.navigationController pushViewController:rnVC animated:YES];
}

@end
