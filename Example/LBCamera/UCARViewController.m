//
//  UCARViewController.m
//  LBCamera
//
//  Created by 549411835@qq.com on 06/14/2019.
//  Copyright (c) 2019 549411835@qq.com. All rights reserved.
//

#import "UCARViewController.h"
#import "UCARCameraViewController.h"
@import Masonry;

@interface UCARViewController ()

#pragma mark - 私有属性
@property (nonatomic, strong) UIButton *button;

@end

#pragma mark - @class

#pragma mark - 常量

#pragma mark - 枚举

@implementation UCARViewController

#pragma mark - Life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    [self configureNavigationbar];
    [self createSubViews];
    [self createSubViewsConstraints];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)dealloc {
    NSLog(@"%@ - dealloc",NSStringFromClass([self class]));
}

#pragma mark - Events

#pragma mark - UITextFieldDelegate

#pragma mark - UITableViewDataSource

#pragma mark - UITableViewDelegate

#pragma mark - UIOtherComponentDelegate

#pragma mark - Custom Delegates

#pragma mark - Public Methods

- (void)buttonAction {
    UCARCameraViewController *vc = [UCARCameraViewController new];
    vc.cameraTitle = @"自定义相机";
    [self presentViewController:vc animated:YES completion:nil];
}

#pragma mark - Private Methods
// 配置导航栏
- (void)configureNavigationbar {
    
}

// 添加子视图
- (void)createSubViews {
    [self.view addSubview:self.button];
}

// 添加约束
- (void)createSubViewsConstraints {
    [self.button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.view);
        make.width.mas_equalTo(300.f);
        make.height.mas_equalTo(300.f);
    }];
}

#pragma mark - Getters and Setters

- (UIButton *)button {
    if (!_button) {
        _button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [_button setTitle:@"点击打开相机" forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}


@end
