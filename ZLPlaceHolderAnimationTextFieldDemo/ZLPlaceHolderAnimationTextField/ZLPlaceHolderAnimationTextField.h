//
//  ZLPlaceHolderAnimationTextField.h
//  ZLPlaceHolderAnimationTextFieldDemo
//
//  Created by 郎 on 2017/6/11.
//  Copyright © 2017年 郎. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZLPlaceHolderAnimationTextField : UITextField

//未获得焦点时的placeholder颜色,默认值lightGray
@property (nonatomic,strong) UIColor *placeholderColor;
//未获得焦点时的placeholder字体,默认与自身的font一致
@property (nonatomic,strong) UIFont *placeholderFont;

//获得焦点时的placeholder颜色,默认值lightGray
@property(nonatomic,strong)UIColor *aniPlaceHolderColor;
//获得焦点时的placeholder字体,默认与自身的font一致
@property(nonatomic,strong)UIFont *aniPlaceHolderfont;

@end
