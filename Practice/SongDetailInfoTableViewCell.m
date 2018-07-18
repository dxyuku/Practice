//
//  SongDetailInfoTableViewCell.m
//  Practice
//
//  Created by dxykevin on 2018/7/16.
//  Copyright © 2018年 Kevin. All rights reserved.
//

#import "SongDetailInfoTableViewCell.h"

@implementation SongDetailInfoTableViewCell
/** 通过代码创建 */
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setUp];
    }
    return self;
}

- (void)setUp {
    
    
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
