//
//  TXTradePasswordView.m
//  TF
//
//  Created by --- on 16/1/3.
//  Copyright © 2016年 吴天祥. All rights reserved.
//

#import "YNTradePasswordView.h"

#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)
#define  boxWidth  50//密码框的宽度
#define DEFAULTFONT(SIZE)  [UIFont systemFontOfSize:SIZE]
#define HLDefaultBGColor [UIColor colorWithRed:248.0f/255.0f green:248.0f/255.0f blue:248.0f/255.0f alpha:1.0f]
#define HLLineColor [UIColor lightGrayColor]
#define HLTextRedColor [UIColor redColor]

@implementation YNTradePasswordView

- (id)initWithFrame:(CGRect)frame WithTitle :(NSString *)title
{
    self = [super initWithFrame:frame];// 先调用父类的initWithFrame方法
    if (self)
    {
        ///标题
        _lable_title = [[UILabel alloc]init];
        _lable_title.frame = CGRectMake(0, 25, SCREEN_WIDTH, 15);
        _lable_title.text = title;
        _lable_title.textAlignment=1;
        _lable_title.font = [UIFont systemFontOfSize:14];
        _lable_title.textColor = [UIColor darkGrayColor];
        [self addSubview:_lable_title];
        
        
        ///  TF
        _TF = [[UITextField alloc]init];
        _TF.frame = CGRectMake(0, 0, 0, 0);
        _TF.delegate = self;
        _TF.keyboardType=UIKeyboardTypeNumberPad;
        [_TF addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
        [self addSubview:_TF];
        
        
        
        
        ///  假的输入框
        _view_box = [[UIView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH-boxWidth*6)/2, CGRectGetMaxY(_lable_title.frame)+25, boxWidth, boxWidth)];
        [_view_box.layer setBorderWidth:0.5];
        _view_box.backgroundColor = [UIColor whiteColor];
        _view_box.layer.borderColor = [HLLineColor CGColor];
        [self addSubview:_view_box];
        _view_box2 = [[UIView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH-boxWidth*6)/2+boxWidth*1-0.5, _view_box.frame.origin.y, boxWidth, boxWidth)];
        _view_box2.backgroundColor = [UIColor whiteColor];
        [_view_box2.layer setBorderWidth:0.5];
        _view_box2.layer.borderColor = [HLLineColor CGColor];
        [self addSubview:_view_box2];
        _view_box3 = [[UIView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH-boxWidth*6)/2+boxWidth*2-1, _view_box.frame.origin.y, boxWidth, boxWidth)];
        [_view_box3.layer setBorderWidth:0.5];
        _view_box3.backgroundColor = [UIColor whiteColor];
        _view_box3.layer.borderColor = [HLLineColor CGColor];
        [self addSubview:_view_box3];
        _view_box4 = [[UIView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH-boxWidth*6)/2+boxWidth*3-1.5, _view_box.frame.origin.y, boxWidth, boxWidth)];
        [_view_box4.layer setBorderWidth:0.5];
        _view_box4.backgroundColor = [UIColor whiteColor];
        _view_box4.layer.borderColor = [HLLineColor CGColor];
        [self addSubview:_view_box4];
        _view_box5 = [[UIView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH-boxWidth*6)/2+boxWidth*4-2, _view_box.frame.origin.y, boxWidth, boxWidth)];
        [_view_box5.layer setBorderWidth:0.5];
        _view_box5.backgroundColor = [UIColor whiteColor];
        _view_box5.layer.borderColor = [HLLineColor CGColor];
        [self addSubview:_view_box5];
        _view_box6 = [[UIView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH-boxWidth*6)/2+boxWidth*5-2.5, _view_box.frame.origin.y, boxWidth, boxWidth)];
        [_view_box6.layer setBorderWidth:0.5];
        _view_box6.backgroundColor = [UIColor whiteColor];
        _view_box6.layer.borderColor = [HLLineColor CGColor];
        [self addSubview:_view_box6];
        
        
        ///   密码点
        _lable_point = [[UILabel alloc]init];
        _lable_point.frame = CGRectMake((_view_box.frame.size.width-10)/2, (_view_box.frame.size.width-10)/2, 10, 10);
        [_lable_point.layer setCornerRadius:5];
        [_lable_point.layer setMasksToBounds:YES];
        _lable_point.backgroundColor = [UIColor blackColor];
        [_view_box addSubview:_lable_point];
        
        _lable_point2 = [[UILabel alloc]init];
        _lable_point2.frame = CGRectMake((_view_box.frame.size.width-10)/2, (_view_box.frame.size.width-10)/2, 10, 10);
        [_lable_point2.layer setCornerRadius:5];
        [_lable_point2.layer setMasksToBounds:YES];
        _lable_point2.backgroundColor = [UIColor blackColor];
        [_view_box2 addSubview:_lable_point2];
        
        
        _lable_point3 = [[UILabel alloc]init];
        _lable_point3.frame = CGRectMake((_view_box.frame.size.width-10)/2, (_view_box.frame.size.width-10)/2, 10, 10);
        [_lable_point3.layer setCornerRadius:5];
        [_lable_point3.layer setMasksToBounds:YES];
        _lable_point3.backgroundColor = [UIColor blackColor];
        [_view_box3 addSubview:_lable_point3];
        
        _lable_point4 = [[UILabel alloc]init];
        _lable_point4.frame = CGRectMake((_view_box.frame.size.width-10)/2, (_view_box.frame.size.width-10)/2, 10, 10);
        [_lable_point4.layer setCornerRadius:5];
        [_lable_point4.layer setMasksToBounds:YES];
        _lable_point4.backgroundColor = [UIColor blackColor];
        [_view_box4 addSubview:_lable_point4];
        
        _lable_point5 = [[UILabel alloc]init];
        _lable_point5.frame = CGRectMake((_view_box.frame.size.width-10)/2, (_view_box.frame.size.width-10)/2, 10, 10);
        [_lable_point5.layer setCornerRadius:5];
        [_lable_point5.layer setMasksToBounds:YES];
        _lable_point5.backgroundColor = [UIColor blackColor];
        [_view_box5 addSubview:_lable_point5];
        
        _lable_point6 = [[UILabel alloc]init];
        _lable_point6.frame = CGRectMake((_view_box.frame.size.width-10)/2, (_view_box.frame.size.width-10)/2, 10, 10);
        [_lable_point6.layer setCornerRadius:5];
        [_lable_point6.layer setMasksToBounds:YES];
        _lable_point6.backgroundColor = [UIColor blackColor];
        [_view_box6 addSubview:_lable_point6];
        
        _lable_point.hidden=YES;
        _lable_point2.hidden=YES;
        _lable_point3.hidden=YES;
        _lable_point4.hidden=YES;
        _lable_point5.hidden=YES;
        _lable_point6.hidden=YES;
    }
    return self;
}
- (void) textFieldDidChange:(id) sender {
    
    UITextField *_field = (UITextField *)sender;
    
    switch (_field.text.length) {
        case 0:{
            _lable_point.hidden=YES;
            _lable_point2.hidden=YES;
            _lable_point3.hidden=YES;
            _lable_point4.hidden=YES;
            _lable_point5.hidden=YES;
            _lable_point6.hidden=YES;
        }
            break;
        case 1:{
            _lable_point.hidden=NO;
            _lable_point2.hidden=YES;
            _lable_point3.hidden=YES;
            _lable_point4.hidden=YES;
            _lable_point5.hidden=YES;
            _lable_point6.hidden=YES;
        }
            break;
        case 2:{
            _lable_point.hidden=NO;
            _lable_point2.hidden=NO;
            _lable_point3.hidden=YES;
            _lable_point4.hidden=YES;
            _lable_point5.hidden=YES;
            _lable_point6.hidden=YES;
        }
            break;
        case 3:{
            _lable_point.hidden=NO;
            _lable_point2.hidden=NO;
            _lable_point3.hidden=NO;
            _lable_point4.hidden=YES;
            _lable_point5.hidden=YES;
            _lable_point6.hidden=YES;
        }
            break;
        case 4:{
            _lable_point.hidden=NO;
            _lable_point2.hidden=NO;
            _lable_point3.hidden=NO;
            _lable_point4.hidden=NO;
            _lable_point5.hidden=YES;
            _lable_point6.hidden=YES;
        }
            break;
        case 5:{
            _lable_point.hidden=NO;
            _lable_point2.hidden=NO;
            _lable_point3.hidden=NO;
            _lable_point4.hidden=NO;
            _lable_point5.hidden=NO;
            _lable_point6.hidden=YES;
        }
            break;
        case 6:{
            _lable_point.hidden=NO;
            _lable_point2.hidden=NO;
            _lable_point3.hidden=NO;
            _lable_point4.hidden=NO;
            _lable_point5.hidden=NO;
            _lable_point6.hidden=NO;
        }
            break;
            
        default:
            break;
    }
    if (_field.text.length==6){
        [self.YNTradePasswordViewDelegate YNTradePasswordView:self WithPasswordString:_field.text];
    } 
}
- (void)hiddenAllPoint {
    _lable_point.hidden=YES;
    _lable_point2.hidden=YES;
    _lable_point3.hidden=YES;
    _lable_point4.hidden=YES;
    _lable_point5.hidden=YES;
    _lable_point6.hidden=YES;
}
@end
