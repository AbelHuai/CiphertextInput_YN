//
//  MainViewController.m
//  CiphertextInput
//
//  Created by Abel on 17/4/18.
//  Copyright © 2017年 yangnan. All rights reserved.
//

#define IPHONE_WIDTH  [UIScreen mainScreen].bounds.size.width
#define IPHONE_HEIGTH [UIScreen mainScreen].bounds.size.height

#import "MainViewController.h"
#import "YNPayPasswordView.h"
#import "YNTradePasswordView.h"

@interface MainViewController ()<YNPayPasswordViewDelegate,YNTradePasswordViewDelegate> {
    YNTradePasswordView *_YNView;
}

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"密码";
    self.view.backgroundColor = [UIColor lightGrayColor];
    _YNView = [[YNTradePasswordView alloc]initWithFrame:CGRectMake(0, 0,IPHONE_WIDTH, IPHONE_HEIGTH-64) WithTitle:@"请输入密码"];
    _YNView.YNTradePasswordViewDelegate = self;
    if (![_YNView.TF becomeFirstResponder]){
        //成为第一响应者。弹出键盘
        [_YNView.TF becomeFirstResponder];
    }
    [self.view addSubview:_YNView];
    
    UIButton *rightBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0f) {
        rightBtn.imageEdgeInsets = UIEdgeInsetsMake(0, 10, 0, -10); //设置偏移
    }
    rightBtn.backgroundColor = [UIColor clearColor];
    [rightBtn setTitle:@"密码" forState:0];
    [rightBtn setTitleColor:[UIColor redColor] forState:0];
    [rightBtn addTarget:self action:@selector(rightBtn) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:rightBtn];
    [self.navigationItem setRightBarButtonItem:item];
    
}

#pragma mark  密码输入结束后调用此方法
-(void)YNTradePasswordView:(YNTradePasswordView *)view WithPasswordString:(NSString *)Password {
    NSLog(@"密码 = %@",Password);
    
}


#pragma mark -Action
- (void)rightBtn {
    [self.view endEditing:YES];
    [self payPasswordView];
}

- (void)payPasswordView {
    YNPayPasswordView *payPasswordView = [[YNPayPasswordView alloc]initWithFrame:CGRectMake(0, 0,IPHONE_WIDTH, IPHONE_HEIGTH) WithTitle:@"输入支付密码" WithSubTitle:@"" WithButton:@[@"取消",@"确认"]];
    payPasswordView.payPasswordDelegate = self;
    if (![payPasswordView.TF becomeFirstResponder]){
        //成为第一响应者。弹出键盘
        [payPasswordView.TF becomeFirstResponder];
    }
    [self.view.window addSubview:payPasswordView];
    
    //    HLWithdrawalsSuccessViewController *vc = [[HLWithdrawalsSuccessViewController alloc] init];
    //    vc.GoodsPaymentAndIntegralType = self.GoodsPaymentAndIntegralType;
    //    [self.navigationController pushViewController:vc animated:YES];
}
#pragma mark  密码输入结束后调用此方法
-(void)YNPayPasswordView:(YNPayPasswordView *)view WithPasswordString:(NSString *)Password WithButtonIndex:(NSInteger)buttonIndex {
    NSLog(@"密码 = %@",Password);
    if(buttonIndex == 1) {

    }
    view.TF.text = @"";
    [view hiddenAllPoint];
    
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
