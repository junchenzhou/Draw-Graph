//
//  UIBarButtonItem+Extension.h
//  FreeStudy
//
//  Created by Apple on 15/12/24.
//  Copyright © 2015年 LG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)

// 左边item
+(UIBarButtonItem *)leftItemWithLabelText:(NSString *)text Target:(id)target Action:(SEL)action;
// 左边自定义图片item
+(UIBarButtonItem *)leftItemWithLabelText:(NSString *)text Image:(NSString*)image HighlightImage:(NSString *)highlightImage Target:(id)target Action:(SEL)action;

// 右边item是图片
+(UIBarButtonItem *)rightItemWithImage:(NSString *)imageName WithHighlightedImage:(NSString *)highImageName Target:(id)target Action:(SEL)action;

// 右边item是文字
+(UIBarButtonItem *)rightItemWithTitle:(NSString *)title Target:(id)target Action:(SEL)action;


@end
