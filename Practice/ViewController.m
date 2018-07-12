//
//  ViewController.m
//  Practice
//
//  Created by dxykevin on 2018/7/4.
//  Copyright © 2018年 Kevin. All rights reserved.
//

#import "ViewController.h"
#define MAS_SHORTHAND
#define MAS_SHORTHAND_GLOBALS
#import <Masonry.h>
#import "MasonryViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    [self testH];
    
    DXYLog(@"没办法，我就是这么强大。");
    NSLog(@"没办法，我就是这么强大。");
    
    int a[] = {2,6,3,85,23,12};
    for (int i = 0; i < 6 - 1; i ++) {
        for (int j = 0; j < 6 - 1 - i; j ++) {
            if (a[j] > a[j + 1]) {
                int temp = a[j];
                a[j] = a[j + 1];
                a[j + 1] = temp;
            }
            
        }
    }
    
    for (int i = 0; i < 6; i ++) {
        NSLog(@"%d ",a[i]);
    }
    
    DXYLog(@"创建了joe分支");
}

- (void)testH {
    
    UIView *myView = [[UIView alloc] init];
    [self.view addSubview:myView];
    myView.backgroundColor = [UIColor purpleColor];
    
    [myView makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.top).offset(10);
        make.left.equalTo(self.view.left).offset(10);
        make.right.equalTo(self.view.right).offset(-10);
        make.bottom.equalTo(self.view.bottom).offset(-10);
    }];
    
    UIButton *bt = [[UIButton alloc] init];
    [bt addTarget:self action:@selector(pushView) forControlEvents:(UIControlEventTouchUpInside)];
    [bt setTitle:@"点击一下" forState:(UIControlStateNormal)];
    [bt setTitle:@"我被点击了" forState:(UIControlStateHighlighted)];
//    bt.backgroundColor = [UIColor yellowColor];
    [myView addSubview:bt];
    [bt makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(120);
        make.height.equalTo(55);
        make.center.equalTo(myView.center);
    }];
}

- (void)pushView {
    
    MasonryViewController *masView = [[MasonryViewController alloc] init];
    [self presentViewController:masView animated:YES completion:^{
        NSLog(@"跳转完成");
    }];
    NSLog(@"我被点击了，啦啦啦啦啦！");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
