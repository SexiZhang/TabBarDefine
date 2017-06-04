//
//  ZYYTabBarViewController.m
//  DefineTabbar_KVC
//
//  Created by 莹莹张 on 2017/6/4.
//  Copyright © 2017年 莹莹张. All rights reserved.
//

#import "ZYYTabBarViewController.h"
#import "ZYYOneViewController.h"
#import "ZYYTwoViewController.h"
#import "ZYYThreeViewController.h"
#import "ZYYFourViewController.h"
#import "ZYYMiddleViewController.h"
#import "ZYYTabBar.h"

@interface ZYYTabBarViewController ()

@end

@implementation ZYYTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    [self addChildVC];
    
    ZYYTabBar *tabBar = [[ZYYTabBar alloc] init];
    [self setValue:tabBar forKeyPath:@"tabBar"];
}

- (void)addChildVC {
    [self setChildController:[[ZYYOneViewController alloc] init] title:@"首页" normalImage:@"nav-home-def" selectedImage:@"nav-home-focus"];
    [self setChildController:[[ZYYTwoViewController alloc] init] title:@"社区" normalImage:@"nav-community-def" selectedImage:@"nav-community-focus"];
    [self setChildController:[[ZYYMiddleViewController alloc] init] title:@"" normalImage:@"release" selectedImage:@"release"];
    [self setChildController:[[ZYYThreeViewController alloc] init] title:@"消息" normalImage:@"nav-news-default" selectedImage:@"nav-news-focus"];
    [self setChildController:[[ZYYFourViewController alloc] init] title:@"我的" normalImage:@"nav-my-default" selectedImage:@"nav-my-focus"];
}

- (void)setChildController:(UIViewController *)controller title:(NSString *)title normalImage:(NSString *)normalImage selectedImage:(NSString *)selecedImage {
    controller.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(100)/100.0 green:arc4random_uniform(100)/100.0 blue:arc4random_uniform(100)/100.0 alpha:1.0];
    controller.tabBarItem.title = title;
    controller.tabBarItem.image = [[UIImage imageNamed:normalImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    controller.tabBarItem.selectedImage = [[UIImage imageNamed:selecedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UINavigationController *vc = [[UINavigationController alloc] initWithRootViewController:controller];
    [self addChildViewController:vc];
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
