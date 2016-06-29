//
//  UILabel+Extension.m
//  FreeStudy
//
//  Created by Apple on 16/2/23.
//  Copyright © 2016年 LG. All rights reserved.
//

#import "UILabel+Extension.h"

@implementation UILabel (Extension)


+(UILabel *)labelWithTitle:(NSString *)title{
    
    UILabel *titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 44)];
    titleLabel.text = title;
    titleLabel.textColor = [UIColor whiteColor];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    
    return titleLabel;
}

@end
