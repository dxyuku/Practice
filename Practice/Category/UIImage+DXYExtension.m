//
//  UIImage+DXYExtension.m
//  OKC
//
//  Created by 杜新元 on 16/4/19.
//  Copyright © 2016年 Kevin. All rights reserved.
//

#import "UIImage+DXYExtension.h"

@implementation UIImage (DXYExtension)
/** 返回圆形图片 */
- (UIImage *)circleImage {
    
    /** NO代表透明 */
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0);
    
    /** 获得上下文 */
    CGContextRef ref = UIGraphicsGetCurrentContext();
    
    /** 添加一个圆 */
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    CGContextAddEllipseInRect(ref, rect);
    
    /** 裁剪 */
    CGContextClip(ref);
    
    /** 将图片画上去 */
    [self drawInRect:rect];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
}
@end
