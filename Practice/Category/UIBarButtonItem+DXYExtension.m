//
//  UIBarButtonItem+DXYExtension.m
//  OKC
//
//  Created by 杜新元 on 16/3/24.
//  Copyright © 2016年 Kevin. All rights reserved.
//

#import "UIBarButtonItem+DXYExtension.h"

@implementation UIBarButtonItem (DXYExtension)
+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action {
    UIButton *button = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:(UIControlStateNormal)];
    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:(UIControlStateHighlighted)];
    button.size = button.currentBackgroundImage.size;
    [button addTarget:target action:action forControlEvents:(UIControlEventTouchUpInside)];
    return [[self alloc] initWithCustomView:button];
}
@end
