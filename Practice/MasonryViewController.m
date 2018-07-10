//
//  MasonryViewController.m
//  Practice
//
//  Created by dxykevin on 2018/7/9.
//  Copyright © 2018年 Kevin. All rights reserved.
//

#import "MasonryViewController.h"
#define MAS_SHORTHAND
#define MAS_SHORTHAND_GLOBALS
#import <Masonry.h>
@interface MasonryViewController ()
@property (nonatomic,copy) NSDate *startDate;
@end

@implementation MasonryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor orangeColor];
    [self test2];
}

- (void)viewWillAppear:(BOOL)animated {
    
    self.startDate = [NSDate date];
    NSLog(@"%@",self.startDate);
}

- (void)viewWillDisappear:(BOOL)animated {
    
    double dat = -[self.startDate timeIntervalSinceDate:[NSDate date]];
    NSLog(@"时间间隔为：%.2f秒",dat);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"回到上一个页面");
    }];
}

- (void)test5 {
    
    UIView *blueView = UIView.new;
    blueView.backgroundColor = [UIColor colorWithRed:183 / 255.0 green:211 / 255.0 blue:250 / 255.0 alpha:1];
    [self.view addSubview:blueView];
    UIView *redView = UIView.new;
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    CGFloat margin = 20;
    CGFloat height = 50;
    [blueView makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.left).offset(margin);
        make.right.equalTo(redView.left).offset(-margin);
        make.bottom.equalTo(self.view.bottom).offset(-margin);
        make.height.equalTo(height);
        //make.top.equalTo(redView.top);
        //make.bottom.equalTo(redView.bottom);
        //make.width.equalTo(redView.width);
    }];
    [redView makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.view.right).offset(-margin);
        make.width.equalTo(blueView.width);
        make.height.equalTo(blueView.height);
        make.top.equalTo(blueView.top).offset(-100);
    }];
    // /** 会将以前的所有约束删掉,添加新的约束 */
    // [blueView mas_remakeConstraints:^(MASConstraintMaker *make) {
    //
    // }];
    //
    // /** 将会覆盖以前的某些约束 */
    // [blueView mas_updateConstraints:^(MASConstraintMaker *make) {
    //
    // }];
    
}


- (void)test4 {
    UIView *blueView = UIView.new;
    blueView.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:blueView];
    
    [blueView makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.view.width);
        make.height.equalTo(self.view.height);
        make.centerX.equalTo(self.view.centerX);
        make.centerY.equalTo(self.view.centerY);
    }];
}

- (void)test3 {
    UIView *blueView = UIView.new;
    blueView.backgroundColor = [UIColor colorWithRed:183 / 255.0 green:211 / 255.0 blue:250 / 255.0 alpha:1];
    [self.view addSubview:blueView];
    /**
     距离父控件四周都是50间距
     */
    // [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
    // make.left.mas_equalTo(self.view.mas_left).offset(50);
    // make.right.mas_equalTo(self.view.mas_right).offset(-50);
    // make.top.mas_equalTo(self.view.mas_top).offset(50);
    // make.bottom.mas_equalTo(self.view.mas_bottom).offset(-50);
    // }];
    // [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
    // make.left.mas_equalTo(self.view).offset(50);
    // make.right.mas_equalTo(self.view).offset(-50);
    // make.top.mas_equalTo(self.view).offset(50);
    // make.bottom.mas_equalTo(self.view).offset(-50);
    // }];
    // [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
    // make.left.offset(50);
    // make.right.offset(-50);
    // make.top.offset(50);
    // make.bottom.offset(-50);
    // }];
    // [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
    // make.left.top.offset(50);
    // make.right.bottom.offset(-50);
    // }];
    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.edges.equalTo(self.view).insets(UIEdgeInsetsMake(60, 40, 20, 10));
    }];
}

- (void)test2 {
    UIView *blueView = UIView.new;
    blueView.backgroundColor = [UIColor colorWithRed:183 / 255.0 green:211 / 255.0 blue:250 / 255.0 alpha:1];
    [self.view addSubview:blueView];
    /**
     尺寸限制: 父控件一半
     位置: 居中
     */
    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(self.view).multipliedBy(0.5);
        make.center.mas_equalTo(self.view);
    }];
}

- (void)test1 {
    UIView *blueView = UIView.new;
    blueView.backgroundColor = [UIColor colorWithRed:183 / 255.0 green:211 / 255.0 blue:250 / 255.0 alpha:1];
    [self.view addSubview:blueView];
    /**
     尺寸限制: 100 X 100
     位置: 粘着父控件右下角,间距是20
     */
    /** 这个方法只会添加新的约束 */
    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
        /** 在这个block里利用make对象创建新的约束 */
        /** 尺寸约束 */
        make.width.equalTo(100);
        make.height.equalTo(100);
        make.right.equalTo(self.view.mas_right).offset(-20);
        make.bottom.equalTo(self.view.mas_bottom).offset(-20);
    }];
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
