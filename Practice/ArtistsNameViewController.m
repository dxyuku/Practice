//
//  ArtistsNameViewController.m
//  Practice
//
//  Created by dxykevin on 2018/7/19.
//  Copyright © 2018年 Kevin. All rights reserved.
//

#import "ArtistsNameViewController.h"
#import "ArtistsNameTableViewCell.h"
@interface ArtistsNameViewController () <UITableViewDelegate, UITableViewDataSource>

@end
static NSString *identifier = @"ArtistsNameTableViewCell";
@implementation ArtistsNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITableView *songDetailTableView = [[UITableView alloc] init];
    [songDetailTableView registerClass:[ArtistsNameTableViewCell class] forCellReuseIdentifier:identifier];
    songDetailTableView.delegate = self;
    songDetailTableView.dataSource = self;
    [self.view addSubview:songDetailTableView];
    [songDetailTableView makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view).insets(UIEdgeInsetsMake(20, 20, 20, 20));
    }];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 10;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ArtistsNameTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ArtistsNameTableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.selectedBackgroundView = [[UIView alloc] initWithFrame:cell.frame];
    cell.selectedBackgroundView.backgroundColor = [UIColor redColor];
}
/** cell的高度 */
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return kAutoScaleX(100);
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
