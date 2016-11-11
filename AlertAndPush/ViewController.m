//
//  ViewController.m
//  AlertAndPush
//
//  Created by aDu on 16/11/11.
//  Copyright © 2016年 DuKaiShun. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"

@interface ViewController ()

@property (nonatomic, strong) FirstViewController *firstVC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)showAlert:(UIButton *)sender {
    self.firstVC = [[FirstViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:_firstVC];
    if ([[UIDevice currentDevice].systemVersion floatValue] >= 8.0) {
        self.navigationController.definesPresentationContext = YES;
        nav.modalPresentationStyle = UIModalPresentationOverCurrentContext;
        [self presentViewController:nav animated:NO completion:nil];
    } else {
        self.view.window.rootViewController.modalPresentationStyle = UIModalPresentationCurrentContext;
        [self presentViewController:nav animated:NO completion:nil];
        self.view.window.rootViewController.modalPresentationStyle = UIModalPresentationFullScreen;
    }
}

@end
