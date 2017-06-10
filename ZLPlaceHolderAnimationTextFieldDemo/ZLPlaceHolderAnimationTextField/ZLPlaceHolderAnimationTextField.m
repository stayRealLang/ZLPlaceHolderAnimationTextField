//
//  ZLPlaceHolderAnimationTextField.m
//  ZLPlaceHolderAnimationTextFieldDemo
//
//  Created by 郎 on 2017/6/11.
//  Copyright © 2017年 郎. All rights reserved.
//

#import "ZLPlaceHolderAnimationTextField.h"

static const CGFloat zAnimationTime = 2.f;

@interface ZLPlaceHolderAnimationTextField ()

@property (nonatomic,strong) UILabel *aniPlaceholderLabel;

@end

@implementation ZLPlaceHolderAnimationTextField

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupPlaceHolderLabel];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setupPlaceHolderLabel];
    }
    return self;
}
//创建placeHolder的label并初始化
- (void)setupPlaceHolderLabel{
    self.placeholder = @"";
    
    self.aniPlaceholderLabel = [[UILabel alloc] initWithFrame:self.bounds];
    self.aniPlaceholderLabel.userInteractionEnabled = NO;
    self.aniPlaceholderLabel.textAlignment = NSTextAlignmentLeft;
    
    self.aniPlaceholderLabel.font = self.font;
    self.placeholderFont = self.aniPlaceholderLabel.font;
    
    self.aniPlaceholderLabel.textColor = [UIColor lightGrayColor];
    self.placeholderColor = self.aniPlaceholderLabel.textColor;
    
    self.aniPlaceHolderColor = self.placeholderColor;
    self.aniPlaceHolderfont = self.font;
    
    //设置clipsToBounds为NO时aniPlaceholderLabel才能上升到textfield之外
    self.clipsToBounds = NO;
    [self addSubview:self.aniPlaceholderLabel];
    
}

- (void)setPlaceholderFont:(UIFont *)placeholderFont{
    _placeholderFont = placeholderFont;
    self.aniPlaceholderLabel.font = _placeholderFont;
}

- (void)setPlaceholderColor:(UIColor *)placeholderColor{
    _placeholderColor = placeholderColor;
    self.aniPlaceholderLabel.textColor = _placeholderColor;
}
-(void)setPlaceholder:(NSString *)placeholder{
    
    self.aniPlaceholderLabel.text = placeholder;
}
- (void)setText:(NSString *)text{
    [super setText:text];
    if (text.length > 0) {
        [self riseType];
    }else{
        //**当赋值为空，但是为焦点的时候，placeholder会下降，所以需要添加此条件
        if (!self.isFirstResponder) {
            [self dropdownType];
        }
    }
}

//成为焦点
- (BOOL)becomeFirstResponder{
    if (self.text.length == 0) {//输入框为空
        [self riseAnimation];
    }
    return [super becomeFirstResponder];
}
//失去焦点
- (BOOL)resignFirstResponder{
    if (self.text.length == 0) {//输入框为空
        [self dropdownAnimation];
    }
    return [super resignFirstResponder];
}

//上升动画
- (void)riseAnimation{
    
    [UIView animateWithDuration:zAnimationTime animations:^{
        [self riseType];
    }];
}
//下降动画
- (void)dropdownAnimation{
    
    [UIView animateWithDuration:zAnimationTime animations:^{
        [self dropdownType];
    }];
}
//上升状态
- (void)riseType{
    CGRect frame = self.aniPlaceholderLabel.frame;
    frame.origin.y = -self.frame.size.height+10;
    
    self.aniPlaceholderLabel.font = self.aniPlaceHolderfont;
    self.aniPlaceholderLabel.textColor = self.aniPlaceHolderColor;
    self.aniPlaceholderLabel.frame = frame;
}
//下降状态
- (void)dropdownType{
    self.aniPlaceholderLabel.font = self.placeholderFont;
    self.aniPlaceholderLabel.textColor = self.placeholderColor;
    self.aniPlaceholderLabel.frame = self.bounds;
}



@end
