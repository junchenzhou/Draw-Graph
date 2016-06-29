//
//  QuartzStar.m
//  学习
//
//  Created by Apple on 16/6/17.
//  Copyright © 2016年 LG. All rights reserved.
//

#import "QuartzStar.h"
#import "Context.h"
@implementation QuartzStar

-(void)drawRect:(CGRect)rect
{
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    CGContextBeginPath(contextRef);
    CGContextAddStar(contextRef, 5, 70, 210, 60);
    CGContextAddRoundRect(contextRef, 10, 70, 160, 70, 10);
    CGContextClosePath(contextRef);
    CGContextSetRGBStrokeColor(contextRef, 1, 0, 1, 1);
    CGContextSetLineWidth(contextRef, 5);
    CGContextStrokePath(contextRef);
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path addArcWithCenter:CGPointMake(200, 350) radius:50 startAngle:0 endAngle:M_PI *  2 clockwise:NO];
    [[UIColor redColor] setStroke];
    [path stroke];
    
    CGFloat dig = 4 * M_PI / 5 ;
    [path moveToPoint:CGPointMake(200, 400)];
    for (int i = 1; i <= 5; i++) {
        CGFloat x = sin(i * dig);
        CGFloat y = cos(i * dig);
        // 绘制从当前点连接到指定点的线条
        [[UIColor greenColor] setStroke];
        [path addLineToPoint:CGPointMake(x * 50 + 200, y * 50 +350)];
        [path stroke];
    }
    
}

@end
