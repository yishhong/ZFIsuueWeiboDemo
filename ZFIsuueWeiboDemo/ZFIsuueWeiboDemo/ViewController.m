//
//  ViewController.m
//  ZFIsuueWeiboDemo
//
//  Created by 张锋 on 16/5/24.
//  Copyright © 2016年 张锋. All rights reserved.
//

#import "ViewController.h"
#import "ZFWeiboButton.h"
#import "ZFIssueWeiboView.h"

#define SCREENWIDTH  [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height

@interface ViewController () <ZFIssueWeiboViewDelegate>

- (IBAction)issueWeibo:(id)sender;

@end

@implementation ViewController

- (IBAction)issueWeibo:(id)sender {
    ZFIssueWeiboView *view = [ZFIssueWeiboView initIssueWeiboView];
    view.frame = CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGHT);
    view.delegate = self;
    [self.view addSubview:view];
}

- (void)animationHasFinishedWithButton:(ZFWeiboButton *)button
{
    NSLog(@"%zd", button.tag);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

@end
