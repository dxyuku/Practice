//
//  ScrollViewController.m
//  Practice
//
//  Created by dxykevin on 2018/7/17.
//  Copyright © 2018年 Kevin. All rights reserved.
//

#import "ScrollViewController.h"
#import "DXYButton.h"
@interface ScrollViewController ()

@end

@implementation ScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIScrollView *scrowView = [[UIScrollView alloc] init];
    scrowView.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:scrowView];
    [scrowView makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.top).offset(100);
        make.left.equalTo(self.view.left).offset(30);
        make.right.equalTo(self.view.right).offset(-30);
        make.height.equalTo(120);
    }];
    
    NSArray *styleMusicTypeArray = @[@"Classical music", @"Pop music", @"Rock music", @"Hip-Hop music", @"Jazz music", @"Punk music", @"Rap music"];
    for (int i = 0; i < styleMusicTypeArray.count; i ++) {
        DXYButton *button = [[DXYButton alloc] init];
        [scrowView addSubview:button];
        [button setImage:[UIImage imageNamed:styleMusicTypeArray[i]] forState:(UIControlStateNormal)];
        button.titleLabel.font = [UIFont systemFontOfSize:10];
        [button setTitle:styleMusicTypeArray[i] forState:(UIControlStateNormal)];
        button.backgroundColor = [UIColor purpleColor];
        [button addTarget:self action:@selector(buttonClick:) forControlEvents:(UIControlEventTouchUpInside)];
        [button makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(scrowView.top).offset(12);
            make.left.equalTo(scrowView.left).offset(i * 120);
            make.height.equalTo(80);
            make.width.equalTo(120);
        }];
    }
    
    
    scrowView.contentSize = CGSizeMake(120 * styleMusicTypeArray.count, 80);
}

- (void)buttonClick:(UIButton *)button {
    
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
