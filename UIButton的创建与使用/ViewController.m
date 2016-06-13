//
//  ViewController.m
//  UIButton的创建与使用
//
//  Created by 思久科技 on 16/6/13.
//  Copyright © 2016年 Seejoys. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:button];
    
    //将button移到最后一层
    [self.view sendSubviewToBack:button];
    
    //设置大小位置
    [button setFrame:CGRectMake(16, 30, 200, 50)];
    //设置中心点
    [button setCenter:self.view.center];
    //设置使能
    [button setEnabled:YES];
    
    //设置背景颜色
    [button setBackgroundColor:[UIColor blueColor]];
    //设置背景图片
    [button setBackgroundImage:[UIImage imageNamed:@"正常状态"] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:@"高亮状态"] forState:UIControlStateHighlighted];
    
    //设置圆角  圆角半径：5.0
    [button.layer setCornerRadius:5.0];
    [button.layer setMasksToBounds:YES];
    
    //设置边框  边框宽度：3.0 边框颜色：红色
    [button.layer setBorderWidth:3.0];
    [button.layer setBorderColor:[[UIColor redColor] CGColor]];
    
    //设置标题
    [button setTitle:@"正常状态" forState:UIControlStateNormal];
    [button setTitle:@"高亮状态" forState:UIControlStateHighlighted];
    //设置标题字体
    [button.titleLabel setFont:[UIFont systemFontOfSize:15]];
    //设置属性标题
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:@""];
    [button setAttributedTitle:attributedString forState:UIControlStateNormal];
    
    //设置标题颜色
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
    
    //设置图标
    [button setImage:[UIImage imageNamed:@"mortgage"] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@""] forState:UIControlStateHighlighted];
    
    //设置标题偏移 UIEdgeInsetsMake(上, 左, 下, 右)
    [button setTitleEdgeInsets:UIEdgeInsetsMake(10, 10, 0, 0)];
    
    //设置图标偏移 UIEdgeInsetsMake(上, 左, 下, 右)
    [button setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 10, 10)];
    
    //添加目标动作响应
    [button addTarget:self action:@selector(holdDownButtonTouchDown:) forControlEvents:UIControlEventTouchDown];
    [button addTarget:self action:@selector(holdDownButtonTouchUpOutside:) forControlEvents:UIControlEventTouchUpOutside];
    [button addTarget:self action:@selector(holdDownButtonTouchUpInside:) forControlEvents:UIControlEventTouchUpInside];
    [button addTarget:self action:@selector(holdDownDragOutside:) forControlEvents:UIControlEventTouchDragExit];
    [button addTarget:self action:@selector(holdDownDragInside:) forControlEvents:UIControlEventTouchDragEnter];
}

//按住按钮触摸下来
- (void)holdDownButtonTouchDown:(UIButton *)sender
{
    NSLog(@"按住按钮触摸下来");
}

//按住按钮触摸离开
- (void)holdDownButtonTouchUpOutside:(UIButton *)sender
{
    NSLog(@"按住按钮触摸离开");
}

//按住按钮触摸到里面
- (void)holdDownButtonTouchUpInside:(UIButton *)sender
{
    NSLog(@"按住按钮触摸到里面");
}

//按下后拖到外面
- (void)holdDownDragOutside:(UIButton *)sender
{
    NSLog(@"按下后拖到外面");
}

//按下后拖到内部
- (void)holdDownDragInside:(UIButton *)sender
{
    NSLog(@"按下后拖到内部");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
