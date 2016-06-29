//
//  UIView+Extension.m
//  FreeStudy
//
//  Created by Apple on 15/12/23.
//  Copyright © 2015年 LG. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

// x
-(void)setX:(CGFloat)x
{
    
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}
-(CGFloat)x
{
    
    return self.frame.origin.x;
}
// y
-(void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}
-(CGFloat)y
{
    return self.frame.origin.y;
}
// centerX
-(void)setCenterX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}
-(CGFloat)centerX
{
    return self.center.x;
}
// centerY
-(void)setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}
-(CGFloat)centerY
{
    return self.center.y;
}
// width
-(void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}
-(CGFloat)width
{
    return self.frame.size.width;
}
// height
-(void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}
-(CGFloat)height
{
    return self.frame.size.height;
}
// size
-(void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size ;
    self.frame = frame;
}
-(CGSize)size
{
    return self.frame.size;
}
// origin
-(void)setOrgin:(CGPoint)orgin{
    
    CGRect frame = self.frame;
    frame.origin = orgin;
    self.frame = frame;
}
-(CGPoint)orgin{
    return self.frame.origin;
}


@end
