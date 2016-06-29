
//
//  UIButton+Extension.m
//  FreeStudy
//
//  Created by Apple on 15/12/30.
//  Copyright © 2015年 LG. All rights reserved.
//

#import "UIButton+Extension.h"

@implementation UIButton (Extension)


// 文字按钮
+(UIButton *)buttonWithTitle:(NSString *)title
                  TitleColor:(UIColor *)titleColor
               HigTitleColor:(UIColor *)higTitleColor
                   TitleFont:(NSInteger)titleFont
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button setTitleColor:higTitleColor forState:UIControlStateHighlighted];
    button.titleLabel.font = [UIFont systemFontOfSize:titleFont];
    
    return button;
}


+(UIButton *)buttonWithTitle:(NSString *)title
                  TitleColor:(UIColor *)titleColor
                   TitleFont:(NSInteger)titleFont
                    BacColor:(UIColor *)bacColor
                SelBackColor:(UIColor *)selBackColor
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageWithColor:bacColor] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageWithColor:selBackColor] forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:titleFont];
    
    return button;
}

+(UIButton *)buttonWithTitle:(NSString *)title
                  TitleColor:(UIColor *)titleColor
                   TitleFont:(NSInteger)titleFont
                    BacColor:(UIColor *)bacColor
                SelBackColor:(UIColor *)selBackColor
                      Target:(id)target
                      Action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageWithColor:bacColor] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageWithColor:selBackColor] forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:titleFont];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return button;
}

// 图片按钮
+(UIButton *)buttonWithNorImage:(NSString *)norImage
                       SelImage:(NSString *)selImage
                       BacColor:(UIColor *)bacColor
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:norImage] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:selImage] forState:UIControlStateHighlighted];
    [button setBackgroundColor:bacColor];
    
    return button;
}


+(UIButton *)buttonWithNorImage:(NSString *)norImage
                       SelImage:(NSString *)selImage
                       BacColor:(UIColor *)bacColor
                   SelBackColor:(UIColor *)selBackColor
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:norImage] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:selImage] forState:UIControlStateHighlighted];
    [button setBackgroundColor:bacColor];
    [button setBackgroundImage:[UIImage imageWithColor:selBackColor] forState:UIControlStateSelected];
    
    return button;
}


+(UIButton *)buttonWithNorImage:(NSString *)norImage
                       SelImage:(NSString *)selImage
                       BacColor:(UIColor *)bacColor
                   SelBackColor:(UIColor *)selBackColor
                         Target:(id)target
                         Action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:norImage] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:selImage] forState:UIControlStateSelected];
    [button setBackgroundImage:[UIImage imageWithColor:bacColor] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageWithColor:selBackColor] forState:UIControlStateNormal];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return button;
}

// 图片+文字按钮(图片在右，文字在左)
+(UIButton *)buttonWithTitle:(NSString *)title
                   titleFont:(NSInteger)titleFont
                   backColor:(UIColor *)backColor
                    NorImage:(NSString *)norImage
                    SelImage:(NSString *)selImage
                  TitleColor:(UIColor *)titleColor
               selTitleColor:(UIColor *)selTitleColor
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:titleFont];
    [button setImage:[UIImage imageNamed:norImage] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:selImage] forState:UIControlStateSelected];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button setTitleColor:selTitleColor forState:UIControlStateSelected];
    button.backgroundColor = backColor;
//    CGFloat labelW = button.titleLabel.width;
//    CGFloat imageW = button.imageView.width;
//    button.titleEdgeInsets = UIEdgeInsetsMake(0, -imageW, 0, imageW);
//    button.imageEdgeInsets = UIEdgeInsetsMake(0, labelW, 0, -imageW);
//    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    
    return button;
}
+(UIButton *)buttonWithTitle:(NSString *)title
                   titleFont:(NSInteger)titleFont
                    backColor:(UIColor *)backColor
                    NorImage:(NSString *)norImage
                    SelImage:(NSString *)selImage
                  TitleColor:(UIColor *)titleColor
               selTitleColor:(UIColor *)selTitleColor
                      Target:(id)target
                      Action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:titleFont];
    [button setImage:[UIImage imageNamed:norImage] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:selImage] forState:UIControlStateSelected];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button setTitleColor:selTitleColor forState:UIControlStateSelected];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor = backColor;
//    CGFloat labelW = button.titleLabel.width;
//    CGFloat imageW = button.imageView.width;
//    button.titleEdgeInsets = UIEdgeInsetsMake(0, -imageW, 0, imageW);
//    button.imageEdgeInsets = UIEdgeInsetsMake(0, labelW, 0, -imageW);
//    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    
    return button;
}


@end
