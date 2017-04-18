//
//  MyNavViewController.m
//  HuaFangJNR_iOS
//
//  Created by hello on 14-7-16.
//  Copyright (c) 2014年 hello. All rights reserved.
//

#import "MyNavViewController.h"

@interface MyNavViewController ()

@end

@implementation MyNavViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        // Custom initialization
//        self.navigationBarHidden = YES;
    
        self.navigationBar.translucent = NO;
        [self.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
        self.navigationBar.shadowImage = [[UIImage alloc] init];
        
        // 自定义返回按钮图标
        UIImage *backButtonImage = [[UIImage imageNamed:@"icon_back"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 20, 0, 0)];
        [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButtonImage forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
        
        
        UIView *line = [[UIView alloc] initWithFrame:CGRectMake(0, 43.5, self.view.frame.size.width, 0.5)];
        line.backgroundColor = [UIColor lightGrayColor];
        [self.navigationBar addSubview:line];
        
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
