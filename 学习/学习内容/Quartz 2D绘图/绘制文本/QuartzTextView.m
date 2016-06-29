//
//  QuartzTextView.m
//  学习
//
//  Created by Apple on 16/6/17.
//  Copyright © 2016年 LG. All rights reserved.
//

#import "QuartzTextView.h"

@implementation QuartzTextView

-(void)setRotateAngle:(CGFloat)rotateAngle
{
    if (_rotateAngle != rotateAngle) {
        _rotateAngle = rotateAngle;
        [self setNeedsDisplay];
    }
}
-(void)setScaleRate:(CGFloat)scaleRate
{
    if (_scaleRate != scaleRate) {
        _scaleRate = scaleRate ;
        [self setNeedsDisplay];
    }
}


-(void)drawRect:(CGRect)rect
{
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    // 设置字符间距
    CGContextSetCharacterSpacing(contextRef, 5);
    // 设置填充颜色
    CGContextSetRGBFillColor(contextRef, 1, 0, 1, 1);
    // 设置线条颜色
    CGContextSetRGBStrokeColor(contextRef, 0, 0, 1, 1);
    
    // 绘制文本
    [@"谁的青春不迷茫" drawAtPoint:CGPointMake(10 ,20)
             withAttributes:@{NSFontAttributeName:
                                  [UIFont fontWithName:@"Arial Rounded MT Bold" size: 45],
                              NSForegroundColorAttributeName: [UIColor magentaColor]}];
    
    
    // 设置使用描边模式绘制文字
//    kCGTextFill,
//    kCGTextStroke,
//    kCGTextFillStroke,
//    kCGTextInvisible,
//    kCGTextFillClip,
//    kCGTextStrokeClip,
//    kCGTextFillStrokeClip,
//    kCGTextClip
    CGContextSetTextDrawingMode (contextRef, kCGTextStroke);
    // 绘制文字
    [@"白日依山尽" drawAtPoint:CGPointMake(10 ,80)
                 withAttributes:@{NSFontAttributeName:
                                      [UIFont fontWithName:@"Heiti SC" size: 40],
                                  NSForegroundColorAttributeName:[UIColor blueColor]}];
    // 设置使用填充、描边模式绘制文字
    CGContextSetTextDrawingMode(contextRef, kCGTextFillStroke);
    // 绘制文字
    [@"黄河入海流" drawAtPoint:CGPointMake(10 ,130)
              withAttributes:@{NSFontAttributeName:
                                   [UIFont fontWithName:@"Heiti SC" size: 40],
                               NSForegroundColorAttributeName:[UIColor magentaColor]}];
    
    
    
    // 定义一个垂直镜像的变换矩阵
    CGAffineTransform yRevert = CGAffineTransformMake(1, 0, 0, -1, 0, 0);
    // 为yRevert变换矩阵根据scaleRate添加缩放变换矩阵
    CGAffineTransform scale = CGAffineTransformScale(yRevert,
                                                     self.scaleRate, self. scaleRate);
    // 为scale变换矩阵根据rotateAngle添加旋转变换矩阵
    CGAffineTransform rotate = CGAffineTransformRotate(scale,
                                                       M_PI * self.rotateAngle / 180);
    // 对CGContextRef绘制文字时应用变换
    CGContextSetTextMatrix(contextRef, rotate);
    // 设置绘制文本的字体和字体大小
    CGContextSelectFont(contextRef, "Courier New" , 40, kCGEncodingMacRoman);
    CGContextShowTextAtPoint(contextRef, 50, 250, "crazyit.org", 11);  // 绘制文本
    
    

}

@end
