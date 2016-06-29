//
//  Context.h
//  PathTest
//
//  Created by yeeku on 14/12/14.
//  Copyright (c) 2014年 crazyit.org. All rights reserved.
//

#ifndef PathTest_Context_h
#define PathTest_Context_h
/*
 该函数负责绘制圆角矩形。x1、y2：是圆角矩形左上角的座标；width、height：控制圆角矩行的宽、高；
 radius：控制圆角矩形的四个圆角的半径
 */
void CGContextAddRoundRect(CGContextRef c, CGFloat x1 , CGFloat y1
	, CGFloat width , CGFloat height , CGFloat radius)
{
	CGContextMoveToPoint (c, x1 + radius , y1);  // 移动到左上角
	// 添加一条连接到右上角的线段
	CGContextAddLineToPoint(c , x1 + width - radius, y1);
	// 添加一段圆弧
	CGContextAddArcToPoint(c , x1 + width , y1, x1 + width, y1 + radius, radius);
	// 添加一条连接到右下角的线段
	CGContextAddLineToPoint(c , x1 + width, y1 + height - radius);
	// 添加一段圆弧
	CGContextAddArcToPoint(c , x1 + width, y1 + height
		, x1 + width - radius , y1 + height , radius);
	// 添加一条连接到左下角的线段
	CGContextAddLineToPoint(c , x1 + radius, y1 + height);
	// 添加一段圆弧
	CGContextAddArcToPoint(c , x1, y1 + height , x1, y1 + height - radius , radius);	// 添加一条连接到左上角的线段
	CGContextAddLineToPoint(c , x1 , y1 + radius);
	// 添加一段圆弧
	CGContextAddArcToPoint(c , x1 , y1 , x1 + radius , y1 , radius);
}
/*
 该函数负责绘制多角星。n：该参数通常应设为奇数，控制绘制N角星。
 dx、dy：控制N角星的中心。size：控制N角星的大小
 */
void CGContextAddStar(CGContextRef c , NSInteger n,
					  CGFloat dx , CGFloat dy , NSInteger size)
{
	CGFloat dig = 4 * M_PI / n ;
	CGContextMoveToPoint(c , dx , dy + size);  // 移动到指定点
	for(int i = 1 ; i <= n ; i++)
	{
		CGFloat x = sin(i * dig);
		CGFloat y = cos(i * dig);
		// 绘制从当前点连接到指定点的线条
		CGContextAddLineToPoint(c , x * size + dx ,y * size + dy);
	}
}
#endif
