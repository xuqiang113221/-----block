//
//  ViewController.m
//  下载封装
//
//  Created by xuqiang on 13-10-15.
//  Copyright (c) 2013年 xuqiang. All rights reserved.
//

#import "ViewController.h"
#import "DownloadManager.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    DownloadManager *manager = [DownloadManager shareDownloadWithUrl:@"http://open.qyer.com/guide/get_all?client_secret=19bb4fd3044573e6aa88&client_id=qyer_guide_ios&mobile_guide=1&order_type=2"];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(finishdDown:) name:@"http://open.qyer.com/guide/get_all?client_secret=19bb4fd3044573e6aa88&client_id=qyer_guide_ios&mobile_guide=1&order_type=2" object:nil];
    
}
-(void)finishdDown:(NSNotification*)noti
{
    NSLog(@"-----------ViewController------------------");
    NSLog(@"%@",noti.object);
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
