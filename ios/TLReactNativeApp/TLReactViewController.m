//
//  TLReactViewController.m
//  TLReactNativeApp
//
//  Created by lichuanjun on 2018/12/18.
//  Copyright © 2018 lichuanjun. All rights reserved.
//

#import "TLReactViewController.h"
#import "React/RCTRootView.h"

@interface TLReactViewController ()

@end

@implementation TLReactViewController

-(void)loadView {
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
//    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.bundle?platform=ios"];
    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://10.15.233.171:8081/index.bundle?platform=ios"];
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                        moduleName:@"TLReactNativeApp"
                                                 initialProperties:propertiesDict
                                                     launchOptions:nil];
    
    self.view = rootView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
