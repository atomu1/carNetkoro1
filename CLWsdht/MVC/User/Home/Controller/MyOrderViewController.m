//
//  MyOrderViewController.m
//  CLWsdht
//
//  Created by koroysta1 on 16/4/7.
//  Copyright © 2016年 时代宏图. All rights reserved.
//

#import "MyOrderViewController.h"
#import "TheOrderViewController.h"
#import "MaintainOrderViewController.h"

@interface MyOrderViewController ()
//维修订单
@property (weak, nonatomic) IBOutlet UILabel *maintainOrderFirth;//待确认
@property (weak, nonatomic) IBOutlet UILabel *maintainOrderSecond;//待评价
@property (weak, nonatomic) IBOutlet UILabel *maintainOrderThird;//已取消
@property (weak, nonatomic) IBOutlet UILabel *maintainOrderFourth;//待付款
@property (weak, nonatomic) IBOutlet UILabel *maintainOrderFifth;//已交易

//购买配件订单
@property (weak, nonatomic) IBOutlet UILabel *buyPartOrderFirst;//待确认
@property (weak, nonatomic) IBOutlet UILabel *buyPartOrderSecond;//待发货
@property (weak, nonatomic) IBOutlet UILabel *buyPartOrderTirth;//待评价
@property (weak, nonatomic) IBOutlet UILabel *buyPartOrderFourth;//已取消
@property (weak, nonatomic) IBOutlet UILabel *buyPartOrderFifth;//待付款
@property (weak, nonatomic) IBOutlet UILabel *buyPartOrderSixth;//待交易
@property (weak, nonatomic) IBOutlet UILabel *buyPartOrderSeven;//已交易
@property (weak, nonatomic) IBOutlet UILabel *buyPartOrderEight;//退货申请


@end

@implementation MyOrderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationItem setTitle:@"我的订单"];
    //设置圆角
    [_maintainOrderFirth.layer setMasksToBounds:YES];
    [_maintainOrderFirth.layer setCornerRadius:11];
    [_maintainOrderSecond.layer setMasksToBounds:YES];
    [_maintainOrderSecond.layer setCornerRadius:11];
    [_maintainOrderThird.layer setMasksToBounds:YES];
    [_maintainOrderThird.layer setCornerRadius:11];
    [_maintainOrderFourth.layer setMasksToBounds:YES];
    [_maintainOrderFourth.layer setCornerRadius:11];
    [_maintainOrderFifth.layer setMasksToBounds:YES];
    [_maintainOrderFifth.layer setCornerRadius:11];
    
    [_buyPartOrderFirst.layer setMasksToBounds:YES];
    [_buyPartOrderFirst.layer setCornerRadius:11];
    [_buyPartOrderSecond.layer setMasksToBounds:YES];
    [_buyPartOrderSecond.layer setCornerRadius:11];
    [_buyPartOrderTirth.layer setMasksToBounds:YES];
    [_buyPartOrderTirth.layer setCornerRadius:11];
    [_buyPartOrderFourth.layer setMasksToBounds:YES];
    [_buyPartOrderFourth.layer setCornerRadius:11];
    [_buyPartOrderFifth.layer setMasksToBounds:YES];
    [_buyPartOrderFifth.layer setCornerRadius:11];
    [_buyPartOrderSixth.layer setMasksToBounds:YES];
    [_buyPartOrderSixth.layer setCornerRadius:11];
    [_buyPartOrderSeven.layer setMasksToBounds:YES];
    [_buyPartOrderSeven.layer setCornerRadius:11];
    [_buyPartOrderEight.layer setMasksToBounds:YES];
    [_buyPartOrderEight.layer setCornerRadius:11];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -- 维修订单
//待确认
- (IBAction)confirmBtn:(UIButton *)sender {
    [self setHidesBottomBarWhenPushed:YES];
    MaintainOrderViewController *mainOrderVC = [[MaintainOrderViewController alloc] init];
    _mainState = @"0";
    mainOrderVC.orderState = _mainState;
    [self.navigationController pushViewController:mainOrderVC animated:YES];
}

//待付款
- (IBAction)payBtn:(UIButton *)sender {
    [self setHidesBottomBarWhenPushed:YES];
    MaintainOrderViewController *mainOrderVC = [[MaintainOrderViewController alloc] init];
    _mainState = @"1";
    mainOrderVC.orderState = _mainState;
    [self.navigationController pushViewController:mainOrderVC animated:YES];
}
//待评价
- (IBAction)judgeBtn:(UIButton *)sender {
    [self setHidesBottomBarWhenPushed:YES];
    MaintainOrderViewController *mainOrderVC = [[MaintainOrderViewController alloc] init];
    _mainState = @"2";
    mainOrderVC.orderState = _mainState;
    [self.navigationController pushViewController:mainOrderVC animated:YES];
}

//已交易
- (IBAction)tardeBtn:(UIButton *)sender {
    [self setHidesBottomBarWhenPushed:YES];
    MaintainOrderViewController *mainOrderVC = [[MaintainOrderViewController alloc] init];
    _mainState = @"3";
    mainOrderVC.orderState = _mainState;
    [self.navigationController pushViewController:mainOrderVC animated:YES];
}

//已取消
- (IBAction)cancelBtn:(UIButton *)sender {
    [self setHidesBottomBarWhenPushed:YES];
    MaintainOrderViewController *mainOrderVC = [[MaintainOrderViewController alloc] init];
    _mainState = @"4";
    mainOrderVC.orderState = _mainState;
    [self.navigationController pushViewController:mainOrderVC animated:YES];
}

#pragma mark -- 购买配件订单
//待确认
- (IBAction)confirmBuy:(UIButton *)sender {
    [self setHidesBottomBarWhenPushed:YES];
    TheOrderViewController *theOrderVC = [[TheOrderViewController alloc] init];
    _state = @"0";
    theOrderVC.orderState = _state;
    [self.navigationController pushViewController:theOrderVC animated:YES];
}

//待付款
- (IBAction)payBuy:(UIButton *)sender {
    [self setHidesBottomBarWhenPushed:YES];
    TheOrderViewController *theOrderVC = [[TheOrderViewController alloc] init];
    _state = @"1";
    theOrderVC.orderState = _state;
    [self.navigationController pushViewController:theOrderVC animated:YES];
}

//待发货
- (IBAction)dispatchBuy:(UIButton *)sender {
    [self setHidesBottomBarWhenPushed:YES];
    TheOrderViewController *theOrderVC = [[TheOrderViewController alloc] init];
    _state = @"2";
    theOrderVC.orderState = _state;
    [self.navigationController pushViewController:theOrderVC animated:YES];
}

//待收货
- (IBAction)putBuy:(UIButton *)sender {
    [self setHidesBottomBarWhenPushed:YES];
    TheOrderViewController *theOrderVC = [[TheOrderViewController alloc] init];
    _state = @"3";
    theOrderVC.orderState = _state;
    [self.navigationController pushViewController:theOrderVC animated:YES];
}

//待评价
- (IBAction)judgeBuy:(UIButton *)sender {
    [self setHidesBottomBarWhenPushed:YES];
    TheOrderViewController *theOrderVC = [[TheOrderViewController alloc] init];
    _state = @"4";
    theOrderVC.orderState = _state;
    [self.navigationController pushViewController:theOrderVC animated:YES];
}

//已交易
- (IBAction)tardeBuy:(UIButton *)sender {
}

//已取消
- (IBAction)cancelBuy:(UIButton *)sender {
}

//退货申请
- (IBAction)returnBuy:(UIButton *)sender {
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
