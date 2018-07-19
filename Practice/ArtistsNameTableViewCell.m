//
//  ArtistsNameTableViewCell.m
//  Practice
//
//  Created by dxykevin on 2018/7/19.
//  Copyright © 2018年 Kevin. All rights reserved.
//

#import "ArtistsNameTableViewCell.h"

@implementation ArtistsNameTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self customSubviews];
    }
    return self;
}

- (void)customSubviews {
    
    UILabel *rankLabel = [[UILabel alloc] init];
    [rankLabel setText:@"1"];
    [rankLabel setTextColor:[UIColor blackColor]];
    [self.contentView addSubview:rankLabel];
    
    UILabel *songNameLabel = [[UILabel alloc] init];
    [songNameLabel setText:@"Poker Face"];
    [songNameLabel setTextColor:[UIColor blackColor]];
    [self.contentView addSubview:songNameLabel];
    
    UILabel *aritistNameLabel = [[UILabel alloc] init];
    [aritistNameLabel setText:@"Lady Gaga"];
    [aritistNameLabel setTextColor:[UIColor lightGrayColor]];
    [self.contentView addSubview:aritistNameLabel];
    
    UIButton *playButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
    playButton.backgroundColor = [UIColor cyanColor];
    [self.contentView addSubview:playButton];
    
    UIButton *moreInfomationButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
    moreInfomationButton.backgroundColor = [UIColor orangeColor];
    [self.contentView addSubview:moreInfomationButton];
    
    [rankLabel makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(kAutoScaleX(20));
        make.centerY.equalTo(self.contentView.centerY);
        make.height.width.equalTo(kAutoScaleX(10));
    }];
    
    [moreInfomationButton makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(rankLabel.centerY);
        make.right.equalTo(self.contentView.right).offset(-kAutoScaleX(20));
        make.height.width.equalTo(kAutoScaleX(10));
    }];
    
    [playButton makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(rankLabel.centerY);
        make.right.equalTo(moreInfomationButton.left).offset(-kAutoScaleX(20));
        make.height.width.equalTo(kAutoScaleX(10));
    }];
    
    [songNameLabel makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView.top);
        make.left.equalTo(rankLabel.right).offset(kAutoScaleX(20));
        make.height.equalTo(kAutoScaleX(50));
        make.right.equalTo(playButton.left);
    }];
    
    [aritistNameLabel makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.contentView.bottom);
        make.left.equalTo(songNameLabel.left);
        make.height.equalTo(kAutoScaleX(50));
        make.right.equalTo(songNameLabel.right);
    }];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
