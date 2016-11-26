//
//  ViewController.m
//  PictureScroller
//
//  Created by yunjobs on 16/11/26.
//  Copyright © 2016年 yunjobs. All rights reserved.
//

#import "ViewController.h"

#import "YQBannerView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *array = @[
                       @{@"image":@"1.jpg",@"title":@"这是标题0",@"id":@"10085",@"url":@"https://www.baidu.com",},
                       @{@"image":@"2.jpg",@"title":@"这是标题1",@"id":@"10086",@"url":@"https://www.baidu.com",},
                       @{@"image":@"3.jpg",@"title":@"这是标题2",@"id":@"10087",@"url":@"https://www.baidu.com",}];
    NSMutableArray *items = [NSMutableArray array];
    for (NSDictionary *dic in array) {
        YQBannerItem *item = [YQBannerItem itemWithDictionary:dic];
        [items addObject:item];
    }
    
    YQBannerView *bannerView = [[YQBannerView alloc] initWithFrame:CGRectMake(0, 120, self.view.frame.size.width, 120)];
    bannerView.items = items;
    bannerView.pageControlShowStyle = YQPageControlShowStyleCenter;
    [self.view addSubview:bannerView];
    
    [bannerView itemPress:^(NSInteger index, YQBannerItem *item) {
        NSLog(@"点击了第%ld个,标题是\"%@\"",index, item.title);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
