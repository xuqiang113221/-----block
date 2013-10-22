//
//  Download.m
//  下载封装
//
//  Created by xuqiang on 13-10-15.
//  Copyright (c) 2013年 xuqiang. All rights reserved.
//

#import "Download.h"

@implementation Download
@synthesize block = _block;
-(id)initWithDownloadUrl:(NSString*)url AndBlock:(void(^)(NSString*))CallBackData
{
    if (self = [super init]) {
        _data = [[NSMutableData alloc]init];
        [self addDownload:[url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
      self.block = CallBackData;
    }
    return self;
}
-(void)addDownload:(NSString *)url{
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    [NSURLConnection connectionWithRequest:request delegate:self];
}
-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    if (_data) {
        [_data setLength:0];
    }
}
-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [_data appendData:data];
}
-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"%@",error);
}
-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSString *dataStr = [[NSString alloc]initWithData:_data encoding:NSUTF8StringEncoding];
    
    _block(dataStr);
}
@end
