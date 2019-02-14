//
//  BHExampleViewController.m
//  BHDemo
//
//  Created by QiaoBaHui on 2018/9/18.
//  Copyright © 2018年 QiaoBaHui. All rights reserved.
//

#import "BHExampleViewController.h"
#import "SAMKeychain.h"

@interface BHExampleViewController ()

@end

static NSString *const DEMO_VIEWS_STORYBOARD_NAME = @"DemoViews";


@implementation BHExampleViewController

+ (instancetype)create {
  UIStoryboard *demoViewsStoryboard = [UIStoryboard storyboardWithName:DEMO_VIEWS_STORYBOARD_NAME bundle:nil];
  return [demoViewsStoryboard instantiateViewControllerWithIdentifier:NSStringFromClass([BHExampleViewController class])];
}

#pragma mark - ViewController LifeCycle

- (void)viewDidLoad {
  [super viewDidLoad];
	
	// ======= 存储数据 =======
	BOOL isSucceed1 = [SAMKeychain setPassword:@"111111" forService:@"QBH1" account:@"qiaobahui1"];
	NSLog(@"isSucceed : %@", isSucceed1 ? @"YES" : @"NO"); // YES

	BOOL isSucceed2 = [SAMKeychain setPassword:@"222222" forService:@"QBH2" account:@"qiaobahui2"];
	NSLog(@"isSucceed : %@", isSucceed2 ? @"YES" : @"NO"); // YES

	// ======= 获取数据 =======
	NSString *password1 = [SAMKeychain passwordForService:@"QBH1" account:@"qiaobahui1"];
	NSLog(@"password1: %@", password1); // 111111
	
	NSString *password2 = [SAMKeychain passwordForService:@"QBH2" account:@"qiaobahui2"];
	NSLog(@"password2: %@", password2); // 222222
	
	// ======= 获取所有账户 =======
	NSArray *allAccounts = [SAMKeychain allAccounts];
	NSLog(@"allAccounts: %@", allAccounts);
	
	// ======= 获取指定账户 =======
	NSArray *accountsForService = [SAMKeychain accountsForService:@"QBH1"];
	NSLog(@"accountsForService`QBH1`: %@", accountsForService);
}

@end
