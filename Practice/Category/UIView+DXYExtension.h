//
//  UIView+DXYExtension.h
//  OKC
//
//  Created by 杜新元 on 16/3/24.
//  Copyright © 2016年 Kevin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (DXYExtension)
@property (nonatomic,assign) CGFloat width;
@property (nonatomic,assign) CGFloat height;
@property (nonatomic,assign) CGFloat x;
@property (nonatomic,assign) CGFloat y;
@property (nonatomic,assign) CGFloat centerX;
@property (nonatomic,assign) CGFloat centerY;
@property (nonatomic,assign) CGSize size;

/** 在分类中声明@preperty,只会生成方法的声明,不会生成方法的实现和带有_下划线的成员变量 */

/** 判断控件是否真正显示在窗口 */
- (BOOL)isShowingOnKeyWindow;

/** 从xib加载视图 */
+ (instancetype)loadViewFromXib;
@end
