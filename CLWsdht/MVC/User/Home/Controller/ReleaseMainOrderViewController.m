//
//  ReleaseMainOrderViewController.m
//  CLWsdht
//
//  Created by koroysta1 on 16/4/25.
//  Copyright © 2016年 时代宏图. All rights reserved.
//

#import "ReleaseMainOrderViewController.h"

@interface ReleaseMainOrderViewController ()

@end

@implementation ReleaseMainOrderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationItem setTitle:@"发布维修抢单"];
    UIBarButtonItem *cancelBarBtn = [[UIBarButtonItem alloc] initWithTitle:@"取消" style:UIBarButtonItemStylePlain target:nil action:@selector(cancelBarBtnClicked:)];
    [self.navigationItem setRightBarButtonItem:cancelBarBtn];
    NSLog(@"dic = %@",_jpushDict);
    // Do any additional setup after loading the view from its nib.
}


#pragma mark -- 左上角取消按钮的响应事件
- (void)cancelBarBtnClicked:(UIBarButtonItem *)btn{
    
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
