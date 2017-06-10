# ZLPlaceHolderAnimationTextField
输入时placeholder带弹起动画的TextField


![image](https://github.com/stayRealLang/ZLPlaceHolderAnimationTextField/blob/master/ZLPlaceHolderAnimationTextFieldDemo/Resource/placeholderAnimationGIF.gif)


仅需设置成为焦点后的属性即可
```
    ZLPlaceHolderAnimationTextField *loginTextField = [[ZLPlaceHolderAnimationTextField alloc]initWithFrame:CGRectMake(20, 40, textFieldWidth, textFieldHeight)];
    loginTextField.placeholder = @"手机号码";
    loginTextField.aniPlaceHolderColor = [UIColor blueColor];
    loginTextField.aniPlaceHolderfont = [UIFont systemFontOfSize:12];
```

也可以通过修改placeholderColor和placeholderFont来设置成为焦点之前的placeholder属性
