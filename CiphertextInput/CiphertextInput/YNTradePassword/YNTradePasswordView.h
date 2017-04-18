//
//  TXTradePasswordView.h
//  TF
//
//  Created by --- on 16/1/3.
//  Copyright © 2016年 吴天祥. All rights reserved.
//

#import <UIKit/UIKit.h>




@class YNTradePasswordView;

@protocol YNTradePasswordViewDelegate <NSObject>

@optional

-(void)YNTradePasswordView:(YNTradePasswordView *)view WithPasswordString:(NSString *)Password;

@end


@interface YNTradePasswordView : UIView <UITextFieldDelegate>

@property (nonatomic,assign)id <YNTradePasswordViewDelegate>YNTradePasswordViewDelegate;



- (id)initWithFrame:(CGRect)frame WithTitle :(NSString *)title;

- (void)hiddenAllPoint;

///标题
@property (nonatomic,strong)UILabel *lable_title;
///  TF
@property (nonatomic,strong)UITextField *TF;

///  假的输入框
@property (nonatomic,strong)UIView *view_box;
@property (nonatomic,strong)UIView *view_box2;
@property (nonatomic,strong)UIView *view_box3;
@property (nonatomic,strong)UIView *view_box4;
@property (nonatomic,strong)UIView *view_box5;
@property (nonatomic,strong)UIView *view_box6;

///   密码点
@property (nonatomic,strong)UILabel *lable_point;
@property (nonatomic,strong)UILabel *lable_point2;
@property (nonatomic,strong)UILabel *lable_point3;
@property (nonatomic,strong)UILabel *lable_point4;
@property (nonatomic,strong)UILabel *lable_point5;
@property (nonatomic,strong)UILabel *lable_point6;
@end
