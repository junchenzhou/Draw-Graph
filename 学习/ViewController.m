//
//  ViewController.m
//  学习
//
//  Created by Apple on 16/6/16.
//  Copyright © 2016年 LG. All rights reserved.
//

#import "ViewController.h"
#import "LearnUIImageController.h"
#import "JCQuartzController.h"
#import "JCQuartzTextController.h"
#import "JCQuartzStarController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)UIImageLearn:(UIButton *)sender {
    
    LearnUIImageController *learnUIImageVC = [[LearnUIImageController alloc]init];
    [self.navigationController pushViewController:learnUIImageVC animated:NO];
}
- (IBAction)Quartz:(UIButton *)sender {
    
    JCQuartzController *quarzVC = [[JCQuartzController alloc]initWithNibName:@"JCQuartzController" bundle:nil];
    [self.navigationController pushViewController:quarzVC animated:NO];
    
}
- (IBAction)QuartzText:(UIButton *)sender {
    
    JCQuartzTextController *quarzTextVC = [[JCQuartzTextController alloc]initWithNibName:@"JCQuartzTextController" bundle:nil];
    [self.navigationController pushViewController:quarzTextVC animated:NO];
}
- (IBAction)QuartzStar:(UIButton *)sender {
    
    JCQuartzStarController *quartzStarVC = [[JCQuartzStarController alloc]initWithNibName:@"JCQuartzStarController" bundle:nil];
    [self.navigationController pushViewController:quartzStarVC animated:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
