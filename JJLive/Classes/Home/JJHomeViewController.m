//
//  JJHomeViewController.m
//  JJLive
//
//  Created by 蒋俊 on 17/3/27.
//  Copyright © 2017年 蒋俊. All rights reserved.
//

#import "JJHomeViewController.h"
#import "UIColor+Extension.h"

@interface JJHomeViewController ()

@end

@implementation JJHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //返回指定RGB颜色值
    self.view.backgroundColor = [UIColor JJ_colorWithR:77 green:45 blue:34 alpha:1];
    [self setupUI];
    
}

#pragma mark -- 设置UI界面
-(void)setupUI{
    
    [self setupNav];
    
}

-(void)setupNav{
    
    //1.左边logo
    UIImage *logoImage =[UIImage imageNamed:@"home-logo"];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:logoImage style:UIBarButtonItemStylePlain target:self action:nil];
    
    //2.右侧收藏按钮
    UIImage *saveImage = [UIImage imageNamed:@"search_btn_follow"];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithImage:saveImage style:UIBarButtonItemStylePlain target:self action:@selector(clickRightBarButtonItem)];
    
    //3.设置中间的searchBar
    CGRect frame = CGRectMake(0, 0, 200, 32);
    UISearchBar *searchBar = [[UISearchBar alloc]initWithFrame:frame];
    searchBar.placeholder = @"主播/美女/帅哥";
    //设置搜索样式
    searchBar.searchBarStyle = UISearchBarStyleMinimal;
    //就是设置一下内置的searchBar的textField的文字颜色
    UITextField *field = [searchBar valueForKey:@"_searchField"];
    field.textColor = [UIColor redColor];
    
    
    
    self.navigationItem.titleView = searchBar;
    
    
    
    
    
    
    
    
    
}

//=================================================================
//                           事件处理
//=================================================================
#pragma mark - 事件处理
-(void)clickRightBarButtonItem{
    
    
    NSLog(@"点击了收藏按钮");
}








@end
