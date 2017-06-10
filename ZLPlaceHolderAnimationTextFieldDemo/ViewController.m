//
//  ViewController.m
//  ZLPlaceHolderAnimationTextFieldDemo
//
//  Created by 郎 on 2017/6/11.
//  Copyright © 2017年 郎. All rights reserved.
//

#import "ViewController.h"
#import "ZLPlaceHolderAnimationTextField.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupAnimaitonTextField];
    
}

- (void)setupAnimaitonTextField{
    
    CGFloat textFieldWidth = self.view.frame.size.width - 40;
    CGFloat textFieldHeight = 30;
    
    ZLPlaceHolderAnimationTextField *loginTextField = [[ZLPlaceHolderAnimationTextField alloc]initWithFrame:CGRectMake(20, 40, textFieldWidth, textFieldHeight)];
    loginTextField.placeholder = @"手机号码";
    loginTextField.aniPlaceHolderColor = [UIColor blueColor];
    loginTextField.aniPlaceHolderfont = [UIFont systemFontOfSize:12];
    [self.view addSubview:loginTextField];
    
    ZLPlaceHolderAnimationTextField *passwordTextField = [[ZLPlaceHolderAnimationTextField alloc]initWithFrame:CGRectMake(20, 90, textFieldWidth, textFieldHeight)];
    passwordTextField.placeholder = @"请输入密码";
    passwordTextField.aniPlaceHolderColor = [UIColor blueColor];
    passwordTextField.aniPlaceHolderfont = [UIFont systemFontOfSize:12];
    [self.view addSubview:passwordTextField];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

@end
