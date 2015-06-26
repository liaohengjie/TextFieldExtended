//
//  ViewController.m
//  textField
//
//  Created by 叶星龙 on 15/6/26.
//  Copyright (c) 2015年 叶星龙. All rights reserved.
//

#import "ViewController.h"
#import "BATextField.h"
@interface ViewController ()

@property (nonatomic ,weak) BATextField *text;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    BATextField *text =[[BATextField alloc]initWithFrame:(CGRect){10,100,200,50}];
    text.isNumber=YES;
    text.textField.placeholder=@"请输入手机号";
    text.textField.backgroundColor=[UIColor lightGrayColor];
    [self.view addSubview:text];
    _text=text;
    UIButton *btn =[[UIButton alloc]initWithFrame:(CGRect){10,CGRectGetMaxY(text.frame)+5,200,50}];
    btn.backgroundColor=[UIColor redColor];
    [btn setTitle:@"点击判断第一栏输入是否为手机号" forState:UIControlStateNormal];
    btn.titleLabel.font=[UIFont systemFontOfSize:12];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    // Do any additional setup after loading the view, typically from a nib.
}


-(void)btnClick
{
    NSLog(@"%@",_text.textField.text);
    if (_text.textField.text.length<11) {
        NSLog(@"手机号11位,你特么在逗我?");
        return;
    }
    BOOL is = [_text isValidPhone:_text.textField.text];
    if (is) {
        NSLog(@"真");
    }else
    {
        NSLog(@"假");
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
