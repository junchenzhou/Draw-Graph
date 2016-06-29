//
//  LearnUIImageController.m
//  学习
//
//  Created by Apple on 16/6/16.
//  Copyright © 2016年 LG. All rights reserved.
//

#import "LearnUIImageController.h"

@interface LearnUIImageController ()
{
    UIImageView *_imageView;     //显示图片的UIImageView
    NSTimer *_timer;     //定时器
    CGFloat _screenWidth;
}

@end

@implementation LearnUIImageController

/******************
 
 使用UIImage加载多张图片来显示蝴蝶挥舞翅膀的画面
 
 ********************/


- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"UIImage学习";
    _screenWidth = [UIScreen mainScreen].bounds.size.width ;
    self.view.backgroundColor = [UIColor greenColor];
    
    _imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 250, 41, 43)];
    
    _imageView.image = [UIImage animatedImageNamed:@"butterfly_f" duration:0.5];

    [self.view addSubview:_imageView];
        //启动NSTimer定时器来改变UIImageView的位置
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(changePos) userInfo:nil repeats:YES];
}

-(void)changePos{
    
    CGPoint currentPos = _imageView.center ;
    
    //计算一个－5到5之间的随机数
    int y = arc4random() % 10 - 5 ;
    if (currentPos.x > _screenWidth) {
        _imageView.center = CGPointMake(2, 200) ;
    }else{
        
        _imageView.center = CGPointMake(currentPos.x + 4, currentPos.y + y) ;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
