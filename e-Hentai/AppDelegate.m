//
//  AppDelegate.m
//  e-Hentai
//
//  Created by 啟倫 陳 on 2014/8/27.
//  Copyright (c) 2014年 ChilunChen. All rights reserved.
//

#import "AppDelegate.h"

#import "AppDelegate+SupportKit.h"

@implementation AppDelegate

#pragma mark - app life cycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //設定 hud 的基本參數
    [DaiInboxHUD setColors:@[[UIColor flatGreenColor], [UIColor flatBlackColor], [UIColor flatPinkColor], [UIColor flatOrangeColor]]];
    [DaiInboxHUD setBackgroundColor:[UIColor whiteColor]];
    [DaiInboxHUD setLineWidth:4.0f];
    [DaiInboxHUD setMaskColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.5f]];
    
    //supportkit
    [self setupSupportKit];
    
    //display
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    HentaiNavigationController *hentaiNavigation = [[HentaiNavigationController alloc] initWithRootViewController:[SliderViewController new]];
    hentaiNavigation.autoRotate = NO;
    hentaiNavigation.hentaiMask = UIInterfaceOrientationMaskPortrait;
    self.window.rootViewController = hentaiNavigation;
    [self.window makeKeyAndVisible];
    return YES;
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    return [GPPURLHandler handleURL:url sourceApplication:sourceApplication annotation:annotation];
}

@end
