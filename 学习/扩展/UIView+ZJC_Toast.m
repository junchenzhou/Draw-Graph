//
//  UIView+ZJC_Toast.m
//  自定义各种动画
//
//  Created by Apple on 16/5/5.
//  Copyright © 2016年 LG. All rights reserved.
//

#import "UIView+ZJC_Toast.h"


#define  KZJC_FONT_SIZE (14.0)
#define  KZJC_ANIMATION_DURATION (1.0)
#define  KZJC_ANIMATION_DELAY (0.5)

@implementation UIView (ZJC_Toast)

- (CATransform3D)loadTransform3D:(CGFloat)z{
    CATransform3D scale = CATransform3DIdentity;
    scale.m34 = -1.0 / 1000.0;
    CATransform3D transform = CATransform3DMakeTranslation(0.0, 0.0, z);
    return CATransform3DConcat(transform,scale);
}
- (void)toast:(NSString *)msg
{
    [self toast:msg duration:KZJC_ANIMATION_DELAY postion:BOTTOM type:WHITE_FONT];
}

- (void)toast:(NSString *)msg duration:(NSTimeInterval)duration
{
    [self toast:msg duration:duration postion:BOTTOM type:WHITE_FONT];
}

- (void)toast:(NSString *)msg postion:(ZJC_TOAST_POSTION)postion
{
    [self toast:msg duration:KZJC_ANIMATION_DELAY postion:postion type:WHITE_FONT];
}

- (void)toast:(NSString *)msg duration:(NSTimeInterval)duration postion:(ZJC_TOAST_POSTION)postion type:(ZJC_TOAST_TYPE)type
{
    [self createContentLabWithMessage:msg duration:duration postion:postion type:type];
}

- (UILabel*)createContentLabWithMessage:(NSString*)msg duration:(NSTimeInterval)duration postion:(ZJC_TOAST_POSTION)postion type:(ZJC_TOAST_TYPE)type{
    self.userInteractionEnabled = NO;
    CGSize      screenSize = [UIScreen mainScreen].bounds.size;
    CGFloat     contentLabY = 0.0;
    UIColor   * fontColor = nil;
    UIColor   * backColor = nil;
    
    switch (postion) {
        case TOP:
            contentLabY = 100.0;
            break;
        case MIDDLE:
            contentLabY = screenSize.height / 2.0;
            break;
        case BOTTOM:
            contentLabY = screenSize.height - 100.0;
            break;
        default:
            break;
    }
    
    switch (type) {
        case WHITE_FONT:
            fontColor = [UIColor whiteColor];
            backColor = [UIColor blackColor];
            break;
        case BLACK_FONT:
            fontColor = [UIColor blackColor];
            backColor = [UIColor colorWithRed:240 / 255.0 green:240 / 255.0 blue:240 / 255.0 alpha:1.0];
        default:
            break;
    }
    
    CGFloat     pading = 10.0;
#pragma clang diagnostic push
#pragma clang diagnostic ignored"-Wdeprecated-declarations"
    CGSize      msgSize = [msg sizeWithFont:[UIFont systemFontOfSize:KZJC_FONT_SIZE]
                          constrainedToSize:CGSizeMake(MAXFLOAT, 0)];
#pragma clang diagnostic pop
    CGFloat     contentLabWidth = msgSize.width + pading * 2.0;
    NSInteger   multiple = (NSInteger)(msgSize.width / (screenSize.width - pading * 2.0)) + 1;
    if(multiple > 1){
        contentLabWidth = screenSize.width - pading * 2.0;
    }
    UILabel * contentLab = [[UILabel alloc]initWithFrame:CGRectMake((screenSize.width - contentLabWidth) / 2.0,contentLabY,contentLabWidth,multiple * msgSize.height + pading)];
    contentLab.numberOfLines = 0;
    contentLab.backgroundColor = backColor;
    contentLab.textColor = fontColor;
    contentLab.alpha = 0.7;
    contentLab.font = [UIFont systemFontOfSize:KZJC_FONT_SIZE];
    contentLab.textAlignment = NSTextAlignmentCenter;
    contentLab.center = CGPointMake(screenSize.width / 2.0, contentLabY);
    contentLab.text = msg;
    contentLab.layer.cornerRadius = 8.0;
    contentLab.layer.masksToBounds = YES;
    contentLab.transform = CGAffineTransformMakeScale(0.5, 0.5);
    [self addSubview:contentLab];
    [UIView animateWithDuration:KZJC_ANIMATION_DURATION animations:^{
        contentLab.transform = CGAffineTransformMakeScale(1.3, 1.3);
    }completion:^(BOOL finished) {
        [UIView animateWithDuration:KZJC_ANIMATION_DURATION animations:^{
            contentLab.transform = CGAffineTransformIdentity;
        }completion:^(BOOL finished) {
            [self performSelector:@selector(clearContentLab:) withObject:contentLab afterDelay:duration];
        }];
        
    }];
    return contentLab;
}

- (void)clearContentLab:(UILabel *)contentLab{
    
    [UIView animateWithDuration:KZJC_ANIMATION_DURATION animations:^{
        contentLab.transform = CGAffineTransformMakeScale(0.5, 0.5);
    } completion:^(BOOL finished) {
        [contentLab removeFromSuperview];
        self.userInteractionEnabled = YES;
    }];
}


@end
