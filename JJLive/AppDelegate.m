//
//  AppDelegate.m
//  JJLive
//
//  Created by 蒋俊 on 17/3/27.
//  Copyright © 2017年 蒋俊. All rights reserved.
//

#import "AppDelegate.h"
#import "JJTabBarControllerViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    //1.创建window并设置大小
    self.window = [[UIWindow alloc]init];
    //2.设置主窗口大小为屏幕尺寸
    self.window.frame = [UIScreen mainScreen].bounds;
    //设置个窗口颜色看效果
    //self.window.backgroundColor = [UIColor orangeColor];
    
    //3.设置窗口的根控制器
    self.window.rootViewController = [[JJTabBarControllerViewController alloc]init];
    //添加window的几种方法
    //1.使window成为主窗口出现
    [self.window makeKeyAndVisible];

    
    
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
