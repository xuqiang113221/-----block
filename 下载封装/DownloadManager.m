//
//  DownloadManager.m
//  下载封装
//
//  Created by xuqiang on 13-10-15.
//  Copyright (c) 2013年 xuqiang. All rights reserved.
//

#import "DownloadManager.h"
static DownloadManager *manager = nil;
@implementation DownloadManager

+(DownloadManager*)shareDownloadWithUrl:(NSString*)url{
    if (manager == nil) {
        manager = [[DownloadManager alloc]initWithUrl:url];
    }
    return manager;
}
-(void)addDownloadWithUrl:(NSString*)url
{
    Download *download = [[Download alloc]initWithDownloadUrl:url AndBlock:^(NSString * str) {
        NSLog(@"在downloadmanager中--%@",str);
        NSLog(@"---------------------------------------");
        [[NSNotificationCenter defaultCenter] postNotificationName:url object:str];
    }];
}
-(id)initWithUrl:(NSString *)url
{
    if (self = [super init]) {
        [self addDownloadWithUrl:url];
    }
    return self;
}
@end
