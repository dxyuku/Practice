//
//  UIBarButtonItem+DXYExtension.h
//  OKC
//
//  Created by 杜新元 on 16/3/24.
//  Copyright © 2016年 Kevin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (DXYExtension)
/** 创建UIBarButtonItem */
+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;
@end
