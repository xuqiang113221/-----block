//
//  DownloadManager.h
//  下载封装
//
//  Created by xuqiang on 13-10-15.
//  Copyright (c) 2013年 xuqiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Download.h"
@interface DownloadManager : NSObject
+(DownloadManager*)shareDownloadWithUrl:(NSString*)url;
-(id)initWithUrl:(NSString*)url;
@end
