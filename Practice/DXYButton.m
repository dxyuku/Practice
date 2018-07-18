//
//  DXYButton.m
//  Practice
//
//  Created by dxykevin on 2018/7/17.
//  Copyright © 2018年 Kevin. All rights reserved.
//

#define titleFont [UIFont systemFontOfSize:17.0]

#import "DXYButton.h"

@implementation DXYButton
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        // 1、顶部图片
        self.imageView.contentMode = UIViewContentModeScaleAspectFit;
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return self;
}
- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGFloat x = 0;
    CGFloat y = contentRect.size.height * 0.8;
    return CGRectMake(x,y,contentRect.size.width,contentRect.size.height * 0.2);
    
}
- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat x = 0;
    CGFloat y = 0;
    return CGRectMake(x,y,contentRect.size.width ,contentRect.size.height * 0.8);
}


@end

