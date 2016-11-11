//
//  FirstViewController.m
//  AlertAndPush
//
//  Created by aDu on 16/11/11.
//  Copyright © 2016年 DuKaiShun. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"返回";
    self.view.backgroundColor = [UIColor grayColor];
    self.view.alpha = 0.7;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}

- (IBAction)closeSelf:(id)sender {
    [self dismissViewControllerAnimated:NO completion:nil];
}

- (IBAction)pushVC:(id)sender {
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondVC animated:YES];
}

@end
