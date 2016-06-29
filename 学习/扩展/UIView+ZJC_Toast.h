//
//  UIView+ZJC_Toast.h
//  自定义各种动画
//
//  Created by Apple on 16/5/5.
//  Copyright © 2016年 LG. All rights reserved.
//

/*
 用法:
 
 1. #import "UIView+ZJC_Toast.h"
 
 2. [self.view toast:@"亲爱的"];
    [self.view toast:@"亲爱的" postion:BOTTOM];
    [self.view toast:@"亲爱的" duration:0.5];
    [self.view toast:@"亲爱的" duration:0.5 postion:BOTTOM type:WHITE_FONT];
 */


#import <UIKit/UIKit.h>

typedef enum{
    TOP,
    MIDDLE,
    BOTTOM
}ZJC_TOAST_POSTION;

typedef enum {
    WHITE_FONT,
    BLACK_FONT,
}ZJC_TOAST_TYPE;

@interface UIView (ZJC_Toast)
/**
 *  toast展示
 *
 *  @param  msg         标签现实的内容
 *  @param  duration    标签持续的时间
 *  @param  type        标签文字的类型
 */
- (void)toast:(NSString *)msg;

- (void)toast:(NSString *)msg duration:(NSTimeInterval)duration;

- (void)toast:(NSString *)msg postion:(ZJC_TOAST_POSTION)postion;

- (void)toast:(NSString *)msg duration:(NSTimeInterval)duration postion:(ZJC_TOAST_POSTION)postion type:(ZJC_TOAST_TYPE)type;

@end
