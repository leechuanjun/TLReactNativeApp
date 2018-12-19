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

@property (nonatomic, strong) NSURL *jsCodeLocation;
@property (nonatomic, strong) NSDictionary *propertiesDict;
@end

@implementation TLReactViewController

-(void)loadView {
    self.propertiesDict = @{
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

    // for release
    self.jsCodeLocation = [[NSBundle mainBundle] URLForResource:@"bundle/index.ios" withExtension:@"jsbundle"];
    //for debug
//    self.jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.bundle?platform=ios"];
//    self.jsCodeLocation = [NSURL URLWithString:@"http://10.15.233.171:8081/index.bundle?platform=ios"];
    if (self.jsCodeLocation == nil) {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"警告" message:@"加载index.ios.jsbundle文件失败" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            
        }];
        [alertController addAction:okAction];
        [self presentViewController:alertController animated:YES completion:nil];
        return [super loadView];
    }
    
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:self.jsCodeLocation
                                                        moduleName:@"TLReactNativeApp"
                                                 initialProperties:self.propertiesDict
                                                     launchOptions:nil];

    self.view = rootView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
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
