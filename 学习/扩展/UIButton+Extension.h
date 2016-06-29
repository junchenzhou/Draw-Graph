//
//  UIButton+Extension.h
//  FreeStudy
//
//  Created by Apple on 15/12/30.
//  Copyright © 2015年 LG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Extension)

/**
 *  文字按钮
 *
 *  @param  title           按钮的标题
 *  @param  titleColor      按钮的标题颜色
 *  @param  higTitleColor   按钮的标题高高亮大小
 *  @param  titleFont       按钮的标题字体大小
 */
+(UIButton *)buttonWithTitle:(NSString *)title
                  TitleColor:(UIColor *)titleColor
               HigTitleColor:(UIColor *)higTitleColor
                   TitleFont:(NSInteger)titleFont;

/**
 *  文字按钮
 *
 *  @param  title             按钮的标题
 *  @param  titleColor        按钮的标题颜色
 *  @param  titleFont         按钮的标题字体大小
 *  @param  bacColor          按钮的背景色
 *  @param  selBackColor      按钮的选中时候的背景色
 */
+(UIButton *)buttonWithTitle:(NSString *)title
                  TitleColor:(UIColor *)titleColor
                   TitleFont:(NSInteger)titleFont
                    BacColor:(UIColor *)bacColor
                SelBackColor:(UIColor *)selBackColor;
/**
 *  文字按钮
 *
 *  @param  title             按钮的标题
 *  @param  titleColor        按钮的标题颜色
 *  @param  titleFont         按钮的标题字体大小
 *  @param  bacColor          按钮的背景色
 *  @param  selBackColor      按钮的选中时候的背景色
 *  @param  target            监听对象
 *  @param  action            响应事件
 */
+(UIButton *)buttonWithTitle:(NSString *)title
                  TitleColor:(UIColor *)titleColor
                   TitleFont:(NSInteger)titleFont
                    BacColor:(UIColor *)bacColor
                SelBackColor:(UIColor *)selBackColor
                      Target:(id)target
                      Action:(SEL)action;

/**
 *  图片按钮(只包含图片)
 *
 *  @param  norImage        按钮图片
 *  @param  selImage        按钮选中时候的图片
 */
+(UIButton *)buttonWithNorImage:(NSString *)norImage
                       SelImage:(NSString *)selImage
                       BacColor:(UIColor *)bacColor;

/**
 *  图片按钮(只包含图片)
 *
 *  @param  norImage          按钮图片
 *  @param  selImage          按钮选中时候的图片
 *  @param  bacColor          按钮的背景色
 *  @param  selBackColor      按钮的选中时候的背景色
 */
+(UIButton *)buttonWithNorImage:(NSString *)norImage
                       SelImage:(NSString *)selImage
                       BacColor:(UIColor *)bacColor
                   SelBackColor:(UIColor *)selBackColor;

/**
 *  图片按钮(只包含图片)
 *
 *  @param  norImage          按钮图片
 *  @param  selImage          按钮选中时候的图片
 *  @param  bacColor          按钮的背景色
 *  @param  selBackColor      按钮的选中时候的背景色
 *  @param  target            监听对象
 *  @param  action            响应事件
 */
+(UIButton *)buttonWithNorImage:(NSString *)norImage
                       SelImage:(NSString *)selImage
                       BacColor:(UIColor *)bacColor
                   SelBackColor:(UIColor *)selBackColor
                         Target:(id)target
                         Action:(SEL)action;


/**
 *  图片+文字(不声明响应事件）
 *
 *  @param  title             按钮的标题
 *  @param  titleFont         按钮的标题字体的大小
 *  @param  backColor         按钮的背景色
 *  @param  norImage          常态图片
 *  @param  selImage          选中时候的图片
 *  @param  titleColor        常态文字的颜色
 *  @param  selTitleColor     选中文字的颜色
 */
+(UIButton *)buttonWithTitle:(NSString *)title
                   titleFont:(NSInteger)titleFont
                   backColor:(UIColor *)backColor
                    NorImage:(NSString *)norImage
                    SelImage:(NSString *)selImage
                  TitleColor:(UIColor *)titleColor
               selTitleColor:(UIColor *)selTitleColor;



/**
 *  图片+文字（声明响应事件）
 *
 *  @param  title             按钮的标题
 *  @param  titleFont         按钮的标题字体的大小
 *  @param  backColor         按钮的背景色
 *  @param  norImage          常态图片
 *  @param  selImage          选中时候的图片
 *  @param  titleColor        常态文字的颜色
 *  @param  selTitleColor     选中文字的颜色
 *  @param  target            监听对象
 *  @param  action            响应事件
 */
+(UIButton *)buttonWithTitle:(NSString *)title
                   titleFont:(NSInteger)titleFont
                   backColor:(UIColor *)backColor
                    NorImage:(NSString *)norImage
                    SelImage:(NSString *)selImage
                  TitleColor:(UIColor *)titleColor
               selTitleColor:(UIColor *)selTitleColor
                      Target:(id)target
                      Action:(SEL)action;

@end
