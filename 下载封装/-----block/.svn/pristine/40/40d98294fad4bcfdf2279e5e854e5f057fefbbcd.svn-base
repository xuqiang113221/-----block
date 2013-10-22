//
//  Download.h
//  下载封装
//
//  Created by xuqiang on 13-10-15.
//  Copyright (c) 2013年 xuqiang. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^Block)(NSString*);
@interface Download : NSObject<NSURLConnectionDataDelegate>{
    NSMutableData *_data;
    Block _block;
}
@property (nonatomic,copy) Block block;
-(id)initWithDownloadUrl:(NSString*)url AndBlock:(void(^)(NSString*))CallBackData;
-(void)addDownload:(NSString*)url ;
@end
