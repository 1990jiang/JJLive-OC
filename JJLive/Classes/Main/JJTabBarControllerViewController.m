//
//  JJTabBarControllerViewController.m
//  JJLive
//
//  Created by 蒋俊 on 17/3/27.
//  Copyright © 2017年 蒋俊. All rights reserved.
//

#import "JJTabBarControllerViewController.h"
#import "JJHomeViewController.h"
#import "JJRankViewController.h"
#import "JJDiscoverController.h"
#import "JJProfileController.h"
#import "JJNavigationController.h"

@interface JJTabBarControllerViewController ()

@end

@implementation JJTabBarControllerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
#pragma mark -- 有一个原则不要放太多代码在viewDidLoad中，尽量精简为方法，这样看着一目了然
    //******创建一个统一的UITabBarItem 对象(关键啊)******//
    [self setsetTitleTextAttributes];
    //******* 创建子控制器 **********//
    [self setupChildViewControllers];
  
    
    
    
}


#pragma mark -- 添加子控制器
-(void)setsetTitleTextAttributes
{
    UITabBarItem *item = [UITabBarItem appearance];
    /** 文字属性 **/
    // 普通状态下的文字属性
    NSMutableDictionary *normalAttrs = [NSMutableDictionary dictionary];
    normalAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    normalAttrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    //设置item的普通状态文字属性
    [item setTitleTextAttributes:normalAttrs forState:UIControlStateNormal];
    
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    //设置item的选中状态文字属性
    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    
    
}
#pragma mark -- 添加子控制器的方法(初始化子控制器)
//这样写更加严谨，你怎么创建的我不管，你自己创建好，再扔给我吧
-(void)setupChildViewController:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    
    //这里为什么要把颜色注释掉:因为我们想要实现四个子控制器的懒加载，用到时再调用
    //我们在不注释这句时，在每个子控制器中去打印一下方法，结果发现程序运行时，所有的子控制器都已经创建了。所以这不是我们想要的
    //vc.view.backgroundColor = XMGRandomColor;
    
    //设置标签栏第一个标题
    vc.tabBarItem.title = title;
    //设置普通状态和选中状态下得图片并添加到根控制器上
    if(image.length)//判断图片具有
    {
        vc.tabBarItem.image = [UIImage imageNamed:image];
        vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    }
    [self addChildViewController:vc];
}
#pragma mark -- 在添加子控制器
-(void)setupChildViewControllers
{
    
#pragma mark -- 因为我们每个模块还需要有导航控制器，所以我们得将导航控制器作为标签控制器的子控制器--把导航控制器全部换为我们自定义的
    
    [self setupChildViewController:[[JJNavigationController alloc]initWithRootViewController:[[JJHomeViewController alloc]init]] title:@"首页" image:@"live-n" selectedImage:@"live-p"];
    
    [self setupChildViewController:[[JJRankViewController alloc]init]title:@"排行" image:@"ranking-n" selectedImage:@"ranking-p"];
    
    [self setupChildViewController:[[JJNavigationController alloc]initWithRootViewController:[[JJDiscoverController alloc]init]] title:@"发现" image:@"found-n" selectedImage:@"found-p"];
    
    [self setupChildViewController:[[JJProfileController alloc]init]title:@"我" image:@"mine-n" selectedImage:@"mine-p"];
}






















@end
