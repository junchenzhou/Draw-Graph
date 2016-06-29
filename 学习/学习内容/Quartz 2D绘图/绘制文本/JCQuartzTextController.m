//
//  JCQuartzTextController.m
//  学习
//
//  Created by Apple on 16/6/17.
//  Copyright © 2016年 LG. All rights reserved.
//

#import "JCQuartzTextController.h"
#import "QuartzTextView.h"
@interface JCQuartzTextController (){
    
    QuartzTextView *quartzTextView;
}

@end

@implementation JCQuartzTextController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)rotate:(UISlider *)sender {
    
    quartzTextView.rotateAngle = sender.value;
}
- (IBAction)scale:(UISlider *)sender {
    
    quartzTextView.scaleRate = sender.value;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
