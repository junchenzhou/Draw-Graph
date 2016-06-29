//
//  QuartzView.m
//  学习
//
//  Created by Apple on 16/6/16.
//  Copyright © 2016年 LG. All rights reserved.
//

#import "QuartzView.h"

@implementation QuartzView



- (void)drawRect:(CGRect)rect {
    
    // 1.获取绘图上下文
    CGContextRef contenxtRef = UIGraphicsGetCurrentContext();
    // 2.设置线宽和线条的颜色
    CGContextSetLineWidth(contenxtRef, 10);
    CGContextSetRGBStrokeColor(contenxtRef, 0, 1, 1, 1);
    
    /*下面绘制三条线段测试线段端点的形状*/
    //1.绘制线段（默认不绘制端点）
    const CGPoint points1[] = {CGPointMake(10, 85),CGPointMake(100, 85),CGPointMake(100, 85),CGPointMake(20, 115),};
    CGContextStrokeLineSegments(contenxtRef, points1, 4);
    //2.设置端点的形状：方形端点
    CGContextSetLineCap(contenxtRef, kCGLineCapSquare);
    const CGPoint points2[] = {CGPointMake(130, 85),CGPointMake(230, 85),CGPointMake(230, 85),CGPointMake(140, 115),};
    //绘制线段
    CGContextStrokeLineSegments(contenxtRef, points2, 4);
    //3.设置端点的形状：圆形端点
    CGContextSetLineCap(contenxtRef, kCGLineCapRound);
    const CGPoint points3[] = {CGPointMake(250, 85),CGPointMake(350, 85),CGPointMake(350, 85),CGPointMake(260, 115),};
    //绘制线段
    CGContextStrokeLineSegments(contenxtRef, points3, 4);
    
    
    /*下面绘制三条线段测试点线*/
    // 设置端点形状
    CGContextSetLineCap(contenxtRef, kCGLineCapButt);
    // 设置线宽
    CGContextSetLineWidth(contenxtRef, 10);
    // 设置点线模式：实线宽6，间距宽10
    CGFloat patterns1[] = {6,10};
    CGContextSetLineDash(contenxtRef, 0, patterns1, 1);
    // 定义两个点，绘制线段
    const CGPoint points4[] = {CGPointMake(20, 140),CGPointMake(300, 140)};
    CGContextStrokeLineSegments(contenxtRef, points4, 2);
    
    // 设置点线模式：实线宽6，间距宽10,但第一个线宽为3
    CGContextSetLineDash(contenxtRef, 3, patterns1, 1);
    // 定义两个点，绘制线段
    const CGPoint points5[] = {CGPointMake(20, 160),CGPointMake(300, 160)};
    CGContextStrokeLineSegments(contenxtRef, points5, 2);
    
    //
    CGFloat patterns2[] = {5,1,4,1,3,1,2,1,1,1,2,1,3,1,4,1,5};
    const CGPoint points6[] = {CGPointMake(20, 180),CGPointMake(300, 180)};
    CGContextSetLineDash(contenxtRef, 0, patterns2, 18);
    CGContextStrokeLineSegments(contenxtRef, points6, 2);
    
    
    
    
    /*下面填充矩形*/
    CGContextSetStrokeColorWithColor(contenxtRef, [UIColor redColor].CGColor);
    CGContextSetLineWidth(contenxtRef, 5);
    CGContextSetFillColorWithColor(contenxtRef, [UIColor blueColor].CGColor);
    //CGContextFillRect(contenxtRef, CGRectMake(20, 200, 100, 50));
    const CGRect rects[] = {CGRectMake(20, 200, 100, 50),CGRectMake(140, 200, 100, 50)};
    CGContextFillRects(contenxtRef, rects, 2);
    
    
    // 画一个椭圆（圆也是椭圆的一种）
    CGContextFillEllipseInRect(contenxtRef, CGRectMake(20, 300, 300, 200));
    
    
//    UIBezierPath *path = [UIBezierPath bezierPath];
//    [[UIColor redColor]setStroke];
//    path.lineWidth = 5;
//    [path addArcWithCenter:CGPointMake(150, 200) radius:80 startAngle:-0.5 * M_PI endAngle:M_2_PI clockwise:NO];
//    [path stroke];
    
}


@end
