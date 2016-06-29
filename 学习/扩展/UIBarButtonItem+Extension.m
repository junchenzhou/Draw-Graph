//
//  UIBarButtonItem+Extension.m
//  FreeStudy
//
//  Created by Apple on 15/12/24.
//  Copyright © 2015年 LG. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)


+(UIBarButtonItem *)leftItemWithLabelText:(NSString *)text Target:(id)target Action:(SEL)action{
    
    UIButton *naButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [naButton setImage:[UIImage imageNamed:@"更多"] forState:UIControlStateNormal];
    [naButton setImage:[UIImage imageNamed:@"更多-交互"] forState:UIControlStateHighlighted];
    [naButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [naButton setTitleColor:LGColor(204, 238, 253, 1.0) forState:UIControlStateHighlighted];
    [naButton setTitle:text forState:UIControlStateNormal];
    naButton.titleLabel.font = [UIFont systemFontOfSize:18];
    [naButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    // button自适应宽度
    NSDictionary *attributes = @{NSFontAttributeName:[UIFont systemFontOfSize:18]};
    CGFloat length = [text boundingRectWithSize:CGSizeMake(320, 2000) options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil].size.width;
    naButton.frame = CGRectMake(0, 0, length + 25, 40);
   naButton.imageEdgeInsets = UIEdgeInsetsMake(12, -15, 12, 0);
   naButton.titleEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
    
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:naButton];
    
    return item;

    /*
    UIView *navigationLeftView = [[UIView alloc]init];
    navigationLeftView.frame = CGRectMake(0, 0, 200, 40);
    navigationLeftView.userInteractionEnabled = YES;
    
    UIImageView *imageView = [[UIImageView alloc]init];
    [imageView setImage:[UIImage imageNamed:@"更多"]];
    [imageView setHighlightedImage:[UIImage imageNamed:@"更多-交互"]];
    
    UILabel *label = [[UILabel alloc]init];
    label.textColor = [UIColor whiteColor];
    label.highlightedTextColor = [UIColor yellowColor];
    label.font = [UIFont systemFontOfSize:18];
    label.text = text;
    
    UIButton *button = [[UIButton alloc]init];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    [navigationLeftView addSubview:imageView];
    [navigationLeftView addSubview:label];
    [navigationLeftView addSubview:button];
    // 布局
    [imageView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(imageView.superview.mas_top).with.offset(12);
        make.left.equalTo(imageView.superview.mas_left).with.offset(0);
        make.bottom.equalTo(imageView.superview.mas_bottom).with.offset(-12);
        make.width.equalTo(@20);
    }];
    [label mas_updateConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(label.superview.mas_top);
        make.left.equalTo(imageView.mas_right).with.offset(5);
        make.bottom.equalTo(label.superview.mas_bottom);
        make.right.equalTo(label.superview.mas_right);
    }];
    [button mas_updateConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(button.superview.mas_top);
        make.left.equalTo(button.superview.mas_left);
        make.width.height.equalTo(button.superview);
    }];
    */
}
+(UIBarButtonItem *)leftItemWithLabelText:(NSString *)text Image:(NSString*)image HighlightImage:(NSString *)highlightImage Target:(id)target Action:(SEL)action{
    
    UIButton *naButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [naButton setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [naButton setImage:[UIImage imageNamed:highlightImage] forState:UIControlStateHighlighted];
    [naButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [naButton setTitleColor:LGColor(204, 238, 253, 1.0) forState:UIControlStateHighlighted];
    [naButton setTitle:text forState:UIControlStateNormal];
    naButton.titleLabel.font = [UIFont systemFontOfSize:17];
    [naButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    // button自适应宽度
    NSDictionary *attributes = @{NSFontAttributeName:[UIFont systemFontOfSize:15]};
    CGFloat length = [text boundingRectWithSize:CGSizeMake(320, 2000) options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil].size.width;
    if (length > 240) {
        naButton.frame = CGRectMake(0, 0, 240, 40);
    }else{
        naButton.frame = CGRectMake(0, 0, length + 25, 40);
    }
    naButton.imageEdgeInsets = UIEdgeInsetsMake(10, -15, 10, 0);
    naButton.titleEdgeInsets = UIEdgeInsetsMake(0, -15, 0, 0);
    
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:naButton];
    
    return item;
}

+(UIBarButtonItem *)rightItemWithImage:(NSString *)imageName WithHighlightedImage:(NSString *)highImageName Target:(id)target Action:(SEL)action{
    
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [rightButton setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [rightButton setBackgroundImage:[UIImage imageNamed:highImageName] forState:UIControlStateHighlighted];
    [rightButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    rightButton.size = rightButton.currentBackgroundImage.size;
    //rightButton.frame = CGRectMake(0, 0, 50, 50);
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:rightButton];
    /*
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 30, 49)];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:imageName]];
    imageView.center = view.center;
    UIButton *button = [[UIButton alloc]initWithFrame:view.frame];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:imageView];
    [view addSubview:button];
     UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:view];
    */
    return item;
}
+(UIBarButtonItem *)rightItemWithTitle:(NSString *)title Target:(id)target Action:(SEL)action{
    
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    rightButton.frame = CGRectMake(0, 0, 60, 40);
    [rightButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [rightButton setTitleColor:LGColor(204, 238, 253, 1.0) forState:UIControlStateHighlighted];
    [rightButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [rightButton setTitle:title forState:UIControlStateNormal];
    rightButton.titleLabel.font = [UIFont systemFontOfSize:15];
    // button自适应宽度
    NSDictionary *attributes = @{NSFontAttributeName:[UIFont systemFontOfSize:15]};
    CGFloat length = [title boundingRectWithSize:CGSizeMake(320, 2000) options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil].size.width;
    rightButton.frame = CGRectMake(0, 0, length, 40);
    rightButton.titleEdgeInsets = UIEdgeInsetsMake(0, 0, 0, -15);
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:rightButton];
    
    return item;
}

@end
