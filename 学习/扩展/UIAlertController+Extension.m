//
//  UIAlertController+Extension.m
//  微博
//
//  Created by Apple on 15/12/15.
//  Copyright © 2015年 LG. All rights reserved.
//

#import "UIAlertController+Extension.h"

@implementation UIAlertController (Extension)

+(UIAlertController *)alertControllerWithTitle:(NSString *)title
                                       Message:(NSString *)message
                                PreferredStyle:(UIAlertControllerStyle)controllerStyle
                                   ActionTitle:(NSString *)actionTitle ActionStyle:(UIAlertActionStyle)actionStyle
{
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:controllerStyle];
    [alertController addAction:[UIAlertAction actionWithTitle:actionTitle style:actionStyle handler:nil]];
    
    return alertController;
    
}

@end
