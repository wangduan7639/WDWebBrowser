//
//  ViewController.m
//  WebBrowserDemo
//
//  Created by wd on 15/11/12.
//  Copyright © 2015年 wd. All rights reserved.
//

#import "ViewController.h"
#import "WDWebViewViewController.h"
#import <Masonry/Masonry.h>
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface ViewController ()

@property (nonatomic, strong) UITextField * textField;
@property (nonatomic, strong) UIButton * goButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.title = @"WebBrowser";
    [self setupViews];
    [self setupRAC];
}

- (void)setupViews
{
    self.textField = [[UITextField alloc] initWithFrame:CGRectZero];
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    self.textField.placeholder = @"请输入网址";
    [self.view addSubview:self.textField];
    [self.textField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(10);
        make.right.equalTo(self.view).with.offset(-10);
        make.height.mas_equalTo(30);
        make.top.equalTo(self.view).with.offset(80);
    }];
    
    self.goButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.goButton setTitle:@"Go" forState:UIControlStateNormal];
    self.goButton.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.goButton];
    [self.goButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo(50);
        make.height.mas_equalTo(30);
        make.top.equalTo(self.textField.mas_bottom).with.offset(20);
    }];
    
}

- (void)setupRAC
{
    @weakify(self);
    self.goButton.rac_command = [[RACCommand alloc] initWithEnabled:[self.textField.rac_textSignal map:^id(NSString * text) {
        return @(text && text.length > 0);
    }] signalBlock:^RACSignal *(id input) {
        @strongify(self);
        NSString * urlString = self.textField.text;
        if (![urlString hasPrefix:@"http://"]) {
            urlString = [NSString stringWithFormat:@"http://%@",urlString];
        }
        WDWebViewViewController * webViewController = [[WDWebViewViewController alloc] initWithUrlString:urlString];
        [self.navigationController pushViewController:webViewController animated:YES];
        return [RACSignal empty];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
