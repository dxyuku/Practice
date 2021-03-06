//
//  CustomAlphabetLsitViewController.m
//  Practice
//
//  Created by dxykevin on 2018/7/16.
//  Copyright © 2018年 Kevin. All rights reserved.
//

#import "CustomAlphabetLsitViewController.h"
CGFloat kPadding = 20;
@interface CustomAlphabetLsitViewController () <UITableViewDelegate, UITableViewDataSource>
/** 歌单列表 */
@property (nonatomic,strong) UITableView *songTableView;
/** 字母表视图 */
@property (nonatomic,strong) UIView *alphabetView;
/** 当前选中的字母(默认为A) */
@property (nonatomic,strong) UIButton *currentSelectedButton;
@end

@implementation CustomAlphabetLsitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self layoutSubviews];
}

- (void)layoutSubviews {
    
    UIImageView *purpleView = [[UIImageView alloc] init];
    purpleView.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:purpleView];
    
    UIView *alphabetView = [[UIView alloc] init];
    alphabetView.backgroundColor = [UIColor whiteColor];
    self.alphabetView = alphabetView;
    [self.view addSubview:alphabetView];
    
    UITableView *songTableView = [[UITableView alloc] init];
    songTableView.delegate = self;
    songTableView.dataSource = self;
    
    //设置行cell高（默认44px）
    [songTableView setRowHeight:50];
    //设置分割线颜色
    [songTableView setSeparatorColor:[UIColor redColor]];
    [self.view addSubview:songTableView];
    self.songTableView = songTableView;
    
    [purpleView makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.equalTo(self.view);
//        make.top.equalTo(self.view.top);
//        make.left.equalTo(self.view.left);
//        make.right.equalTo(self.view.right);
        make.height.equalTo(kAutoScaleX(240));
    }];
    
    [alphabetView makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(kAutoScaleX(kPadding));
        make.right.equalTo(self.view).offset(kAutoScaleX(-kPadding));
        make.top.equalTo(purpleView.bottom).offset(-kAutoScaleX(60));
        make.height.equalTo(kAutoScaleX(120));
    }];
    [self.view bringSubviewToFront:alphabetView];
    
    [songTableView makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(alphabetView.bottom);
        make.left.right.bottom.equalTo(self.view);
    }];
    
    NSString *alphabetStr = @"";
    CGFloat buttonW = (kScreenWidth - 4 * kPadding) / 13;
    CGFloat buttonH = (kAutoScaleX(120) - 2 * 5) / 2;
    NSLog(@"%.2f %.2f",buttonW,buttonH);
    for (int i = 65; i < 91; i ++) {
        alphabetStr = [NSString stringWithFormat:@"%c",i];
        //DXYLog(@"%@",alphabetStr);
        UIButton *button = [UIButton buttonWithType:(UIButtonTypeCustom)];
        [button addTarget:self action:@selector(buttonClick:) forControlEvents:(UIControlEventTouchUpInside)];
        [button setTitle:alphabetStr forState:(UIControlStateNormal)];
        [button setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
//        button.backgroundColor = [UIColor cyanColor];
        button.tag = i + 200;
        
        /** 默认A按钮为选中状态 */
        
        if (i == 65) {
            self.currentSelectedButton = button;
        }
        int col = i - 65;
        if (i < 78) {
            button.frame = CGRectMake(col * buttonW + kPadding, 5, buttonW, buttonH);
        }
        else {
            col = i - 78;
            button.frame = CGRectMake(col * buttonW + kPadding, 5 + buttonH, buttonW, buttonH);
        }
        
        [alphabetView addSubview:button];
    }
}

- (void)buttonClick:(UIButton *)bt {
    
    int i = (int)bt.tag - 265;
    /** 滑动到指定位置 */
    [self.songTableView selectRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:i] animated:NO scrollPosition:(UITableViewScrollPositionTop)];
    [self.currentSelectedButton setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    self.currentSelectedButton.backgroundColor = [UIColor whiteColor];
    [bt setTitleColor:[UIColor whiteColor] forState:(UIControlStateNormal)];
    bt.backgroundColor = [UIColor orangeColor];
    self.currentSelectedButton = bt;
    NSLog(@"%li",(long)bt.tag);
}


-(void)scrollViewDidScroll:(UIScrollView *)scrollView{



    NSIndexPath *path =  [self.songTableView indexPathForRowAtPoint:CGPointMake(scrollView.contentOffset.x, scrollView.contentOffset.y)];

    [self.currentSelectedButton setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    self.currentSelectedButton.backgroundColor = [UIColor whiteColor];
    UIButton *button = (UIButton *)[self.alphabetView viewWithTag:path.section + 265];
    [button setTitleColor:[UIColor whiteColor] forState:(UIControlStateNormal)];
    button.backgroundColor = [UIColor orangeColor];
    self.currentSelectedButton = button;


}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 26;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 13;
}

/** 返回每组头标题 */
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {

//    UIButton *bt = (UIButton *)[self.alphabetView viewWithTag:section + 265];
//    [bt setTitleColor:[UIColor greenColor] forState:(UIControlStateNormal)];
    
    return [NSString stringWithFormat:@"%c",(int)section + 65];
//    NSString *headerViewString = [NSString stringWithFormat:@"%c",(int)section];
//    return headerViewString;
}

//- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
//    DXYLog(@"%@",[NSString stringWithFormat:@"第%ld分区开始",section + 1]);
//    return @"分区结束";
//}

static NSString *cellID = @"cellID";

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellID];
    }
    
    return cell;
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
