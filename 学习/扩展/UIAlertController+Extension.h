//
//  UIAlertController+Extension.h
//  微博
//
//  Created by Apple on 15/12/15.
//  Copyright © 2015年 LG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (Extension)

+(UIAlertController *)alertControllerWithTitle:(NSString *)title
                                       Message:(NSString *)message
                                PreferredStyle:(UIAlertControllerStyle )controllerStyle
                                   ActionTitle:(NSString *)actiontitle
                                   ActionStyle:(UIAlertActionStyle )actionStyle;


@end
