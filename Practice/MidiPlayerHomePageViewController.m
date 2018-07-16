//
//  MidiPlayerHomePageViewController.m
//  Practice
//
//  Created by dxykevin on 2018/7/13.
//  Copyright © 2018年 Kevin. All rights reserved.
//

#import "MidiPlayerHomePageViewController.h"

@interface MidiPlayerHomePageViewController ()
@property (weak, nonatomic) IBOutlet UIButton *classicalMusicBt;
@property (weak, nonatomic) IBOutlet UIButton *popMusicBt;
@property (weak, nonatomic) IBOutlet UIButton *rockMusicBt;
@property (weak, nonatomic) IBOutlet UIView *styleView;

@property (weak, nonatomic) IBOutlet UIButton *guitarBt;
@property (weak, nonatomic) IBOutlet UIButton *violinBt;

@property (weak, nonatomic) IBOutlet UIButton *pianoBt;
@property (weak, nonatomic) IBOutlet UIButton *drumsBt;
@property (weak, nonatomic) IBOutlet UIButton *ukuleleBt;
@property (weak, nonatomic) IBOutlet UIView *instrumentView;

@end

@implementation MidiPlayerHomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DXYLog(@"%lf %lf",kScreenWidth,kScreenHeight);
    // Do any additional setup after loading the view from its nib.
    
    [self layoutSubviews];
}

- (void)layoutSubviews {
    
    NSArray *instrumentNameArr = @[@"Guitar", @"Violin", @"Piano", @"Drums", @"Ukulele"];
    
    /** guitar */
    UILabel *guitarLb = [[UILabel alloc] init];
    [guitarLb setText:instrumentNameArr[0]];
    [guitarLb setTextColor:[UIColor whiteColor]];
    guitarLb.font = [UIFont systemFontOfSize:13];
    guitarLb.textAlignment = NSTextAlignmentLeft;
    [self.guitarBt addSubview:guitarLb];
    [guitarLb makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.guitarBt.left).offset(10);
        make.bottom.equalTo(self.guitarBt.bottom).offset(-2);
        make.right.equalTo(self.guitarBt.right).offset(-10);
        make.height.equalTo(25);
    }];
    
    /** 小提琴 */
    UILabel *violinLb = [[UILabel alloc] init];
    [violinLb setText:instrumentNameArr[1]];
    [violinLb setTextColor:[UIColor whiteColor]];
    violinLb.font = [UIFont systemFontOfSize:13];
    violinLb.textAlignment = NSTextAlignmentRight;
    [self.violinBt addSubview:violinLb];
    [violinLb makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.violinBt.left).offset(10);
        make.bottom.equalTo(self.violinBt.bottom).offset(-2);
        make.right.equalTo(self.violinBt.right).offset(-10);
        make.height.equalTo(25);
    }];
    
    /** piano */
    UILabel *pianoLb = [[UILabel alloc] init];
    [pianoLb setText:instrumentNameArr[2]];
    [pianoLb setTextColor:[UIColor whiteColor]];
    pianoLb.font = [UIFont systemFontOfSize:13];
    pianoLb.textAlignment = NSTextAlignmentRight;
    [self.pianoBt addSubview:pianoLb];
    [pianoLb makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.pianoBt.left).offset(2);
        make.bottom.equalTo(self.pianoBt.bottom).offset(-2);
        make.right.equalTo(self.pianoBt.right).offset(-10);
        make.height.equalTo(25);
    }];
    
    /** drums */
    UILabel *drumsLb = [[UILabel alloc] init];
    [drumsLb setText:instrumentNameArr[3]];
    [drumsLb setTextColor:[UIColor whiteColor]];
    drumsLb.font = [UIFont systemFontOfSize:13];
    drumsLb.textAlignment = NSTextAlignmentRight;
    [self.drumsBt addSubview:drumsLb];
    [drumsLb makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.drumsBt.left).offset(10);
        make.bottom.equalTo(self.drumsBt.bottom).offset(-2);
        make.right.equalTo(self.drumsBt.right).offset(-10);
        make.height.equalTo(25);
    }];
    
    /** ukulele */
    UILabel *ukuleleLb = [[UILabel alloc] init];
    [ukuleleLb setText:instrumentNameArr[4]];
    [ukuleleLb setTextColor:[UIColor whiteColor]];
    ukuleleLb.font = [UIFont systemFontOfSize:13];
    ukuleleLb.textAlignment = NSTextAlignmentRight;
    [self.ukuleleBt addSubview:ukuleleLb];
    [ukuleleLb makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.ukuleleBt.left).offset(10);
        make.bottom.equalTo(self.ukuleleBt.bottom).offset(-2);
        make.right.equalTo(self.ukuleleBt.right).offset(-10);
        make.height.equalTo(25);
    }];
    
    //self.backgroundColor = kUIColorFromRGB(0x4b4773);
    //v.layer.masksToBounds=YES;这行去掉
    self.guitarBt.layer.cornerRadius = 10;
    self.guitarBt.layer.masksToBounds = YES;
    self.violinBt.layer.cornerRadius = 10;
    self.violinBt.layer.masksToBounds = YES;
    self.pianoBt.layer.cornerRadius = 10;
    self.pianoBt.layer.masksToBounds = YES;
    self.drumsBt.layer.cornerRadius = 10;
    self.drumsBt.layer.masksToBounds = YES;
    self.ukuleleBt.layer.cornerRadius = 10;
    self.ukuleleBt.layer.masksToBounds = YES;
    self.classicalMusicBt.layer.cornerRadius = 10;
    self.classicalMusicBt.layer.masksToBounds = YES;
    self.popMusicBt.layer.cornerRadius = 10;
    self.popMusicBt.layer.masksToBounds = YES;
    self.rockMusicBt.layer.cornerRadius = 10;
    self.rockMusicBt.layer.masksToBounds = YES;
    
    self.styleView.layer.shadowColor = [UIColor blackColor].CGColor;
    self.styleView.layer.shadowOffset = CGSizeMake(2, 5);
    self.styleView.layer.shadowOpacity = 0.5;
    self.styleView.layer.shadowRadius = 5;
    self.styleView.layer.cornerRadius = 10;
    self.instrumentView.layer.shadowColor = [UIColor blackColor].CGColor;
    self.instrumentView.layer.shadowOffset = CGSizeMake(2, 5);
    self.instrumentView.layer.shadowOpacity = 0.5;
    self.instrumentView.layer.shadowRadius = 5;
    self.instrumentView.layer.cornerRadius = 10;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
