//
//  ViewController.m
//  ZlinkModulesForiOS
//
//  Created by JLei on 2018/2/9.
//  Copyright © 2018年 助力互联. All rights reserved.
//

#import "ViewController.h"
#import "ZlinkShareViewController.h"
#import "ZlinkUploadImageViewController.h"
#import "ZlinkPhotoBrowserViewController.h"
#import "ZlinkRecordAudioViewController.h"
#import "ZlinkRecordVideoViewController.h"
#import "AmapViewController.h"
#import "JPushViewController.h"
#import "ThirdPartyLoginController.h"
#import "PayViewController.h"
#import "LoginViewController.h"
#import "ChangePswController.h"
#import "QRCodeViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic,strong) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.title = @"iOS模块";
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 64) style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.tableFooterView = [UIView new];
    [self.view addSubview:self.tableView];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 88;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 12;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    NSArray *titleArr = @[@"分享模块",@"图片压缩上传、断点续传",@"图片放大、拖动、缩放、滚动",@"音频录制、压缩、上传、断点续传",@"视频录制、压缩、上传、断点续传",@"消息推送(极光)",@"高德地图",@"第三方登录",@"支付",@"登录",@"修改密码",@"二维码"];
    cell.textLabel.text = titleArr[indexPath.row];
    cell.textLabel.font = [UIFont systemFontOfSize:15];
    cell.textLabel.textColor = [UIColor blackColor];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case 0:
        {
            //分享
            [self.navigationController pushViewController:[ZlinkShareViewController new] animated:YES];
        }
            break;
        case 1:
        {
            //图片上传
            [self.navigationController pushViewController:[ZlinkUploadImageViewController new] animated:YES];
        }
            break;
        case 2:
        {
            //图片浏览器
            [self.navigationController pushViewController:[ZlinkPhotoBrowserViewController new] animated:YES];
        }
            break;
        case 3:
        {
            //录音
            [self.navigationController pushViewController:[ZlinkRecordAudioViewController new] animated:YES];
        }
            break;
        case 4:
        {
            //录视频
            [self.navigationController pushViewController:[ZlinkRecordVideoViewController new] animated:YES];
        }
            break;
        case 5:
        {
            //推送
            [self.navigationController pushViewController:[JPushViewController new] animated:YES];
        }
            break;
        case 6:
        {
            //地图
            [self.navigationController pushViewController:[AmapViewController new] animated:YES];
        }
            break;
        case 7:
        {
            //第三方登录
            [self.navigationController pushViewController:[ThirdPartyLoginController new] animated:YES];
        }
            break;
        case 8:
        {
            //支付
            [self.navigationController pushViewController:[PayViewController new] animated:YES];
        }
            break;
        case 9:
        {
            //登录
            [self.navigationController pushViewController:[LoginViewController new] animated:YES];
        }
            break;
        case 10:
        {
            //修改密码
            [self.navigationController pushViewController:[ChangePswController new] animated:YES];
        }
            break;
        case 11:
        {
            //修改密码
            [self.navigationController pushViewController:[QRCodeViewController new] animated:YES];
        }
            break;
        default:
            break;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
