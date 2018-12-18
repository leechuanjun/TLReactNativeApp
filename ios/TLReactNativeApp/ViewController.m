//
//  ViewController.m
//  TLReactNativeApp
//
//  Created by lichuanjun on 2018/12/18.
//  Copyright © 2018 lichuanjun. All rights reserved.
//

#import "ViewController.h"
#import "React/RCTRootView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)highScoreButtonPressed:(id)sender {
    NSLog(@"High Score Button Pressed");
    
    NSDictionary *propertiesDict = @{
                                     @"scores" : @[
                                             @{
                                                 @"name" : @"Alex",
                                                 @"value" : @"42"
                                                 },
                                             @{
                                                 @"name" : @"Joel",
                                                 @"value" : @"10"
                                                 }
                                             ]
                                     };
    
    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.bundle?platform=ios"];
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation moduleName:@"TLReactNativeApp" initialProperties:propertiesDict launchOptions:nil];
    
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view = rootView;
    [self presentViewController:vc animated:YES completion:nil];
}


@end
