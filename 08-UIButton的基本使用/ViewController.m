//
//  ViewController.m
//  08-UIButton的基本使用
//
//  Created by xiaomage on 16/6/1.
//  Copyright © 2016年 赵恩峰. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 1.创建UIButton
    // 直接alloc/init创建出来的按钮默认是UIButtonTypeCustom
//    UIButton *btn = [[UIButton alloc] init];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 200, 80);
    // 2.设置按钮显示的文字
//    btn.titleLabel.text = @"我是按钮"; // 错误的写法
    [btn setTitle:@"我是按钮" forState:UIControlStateNormal];
    [btn setTitle:@"我是高亮按钮" forState:UIControlStateHighlighted];
    [btn setTitle:@"不可以点击按钮" forState:UIControlStateDisabled];
     // 2.设置按钮显示的图片
//    btn.imageView.image = [UIImage imageNamed:@"like"];  // 错误的写法
    [btn setImage:[UIImage imageNamed:@"like"] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"like_pressed"] forState:UIControlStateHighlighted];
    // 3.设置按钮的背景图片
    [btn setBackgroundImage:[UIImage imageNamed:@"buttongreen"] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:@"buttongreen_highlighted"] forState:UIControlStateHighlighted];
    // 4.设置按钮是否可以点击
//    btn.enabled =  NO;
    [self.view addSubview:btn];
    
    // 5.监听按钮的点击事件
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UISwitch *s = [[UISwitch alloc] init];
    [s addTarget:self action:@selector(switchClick:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:s];
}

- (void)switchClick:(UISwitch *)s
{
    NSLog(@"switchClick:--%d",s.isOn);
}
- (void)btnClick:(UIButton *)btn
{
    NSLog(@"btnClick--%@",btn);
}

- (IBAction)buttonClick {
    
    NSLog(@"buttonClick");
}

@end
