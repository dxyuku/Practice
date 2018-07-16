//
//  UIView+DXYExtension.m
//  OKC
//
//  Created by 杜新元 on 16/3/24.
//  Copyright © 2016年 Kevin. All rights reserved.
//

#import "UIView+DXYExtension.h"

@implementation UIView (DXYExtension)
/** 从xib加载视图 */
+ (instancetype)loadViewFromXib {
    
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] firstObject];
}

/** 判断控件是否真正显示在窗口 */
- (BOOL)isShowingOnKeyWindow {
    
    /** 主窗口 */
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    
    /** 以窗口左上角为坐标原点,计算self的矩形框 */
    CGRect newFrame = [keyWindow convertRect:self.frame fromView:self.superview];
    CGRect winBounds = keyWindow.bounds;
    
    /** 主窗口的bounds 和 self的矩形框是否有重叠 */
    BOOL intersects = CGRectIntersectsRect(newFrame, winBounds);
    
    return !self.isHidden && self.alpha > 0.01 && self.window == keyWindow && intersects;
}

#pragma mark - width的setter getter方法
- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}
- (CGFloat)width {
    return self.frame.size.width;
}


#pragma mark - height的setter getter方法
- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}
- (CGFloat)height {
    return self.frame.size.height;
}


#pragma mark - x的setter getter方法
- (void)setX:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}
- (CGFloat)x {
    return self.frame.origin.x;
}


#pragma mark - y的setter getter方法
- (void)setY:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}
- (CGFloat)y {
    return self.frame.origin.y;
}


#pragma mark - size的setter getter方法
- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}
- (CGSize)size {
    return self.frame.size;
}


#pragma mark - centerX的setter getter方法
- (void)setCenterX:(CGFloat)centerX {
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}
- (CGFloat)centerX {
    return self.center.x;
}


#pragma mark - centerY的setter getter方法
- (void)setCenterY:(CGFloat)centerY {
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}
- (CGFloat)centerY {
    return self.center.y;
}



@end
