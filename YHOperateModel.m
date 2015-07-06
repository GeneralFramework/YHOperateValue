//
//  YHOperateModel.m
//  BlockTest
//
//  Created by yinhan on 15/7/6.
//  Copyright (c) 2015年 yinhan. All rights reserved.
//

#import "YHOperateModel.h"

static YHOperateModel * operateModel = nil;
@implementation YHOperateModel


+(instancetype)shared{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        operateModel = [[YHOperateModel alloc] init];
    });
    return operateModel;
}

-(instancetype)init{

    if (self = [super init]) {
        
    }
    return self;
}


-(NSString *)getResultOperate:(NSString *)operate NumberFirst:(NSString *)first NumberSecond:(NSString *)second{

    NSString * strResult = @"0";
    
    if (self.isResultFloat) {
        if ([operate isEqualToString:@"+"]) {
            strResult = [NSString stringWithFormat:@"%.2f", [first doubleValue] + [second doubleValue]];
            
        }else if ([operate isEqualToString:@"-"]){
            strResult = [NSString stringWithFormat:@"%.2f", [first doubleValue] - [second doubleValue]];
            
        }else if ([operate isEqualToString:@"*"]){
            strResult = [NSString stringWithFormat:@"%.2f", [first doubleValue] * [second doubleValue]];
            
        }else if ([operate isEqualToString:@"/"]){
            if ([second intValue] != 0) {
                strResult = [NSString stringWithFormat:@"%.2f", [first doubleValue] / [second doubleValue]];
                
            }else{
                strResult = @"0";
            }
        }
    }else{
        if ([operate isEqualToString:@"+"]) {
            strResult = [NSString stringWithFormat:@"%d", [first intValue] + [second intValue]];
            
        }else if ([operate isEqualToString:@"-"]){
            strResult = [NSString stringWithFormat:@"%d", [first intValue] - [second intValue]];
            
        }else if ([operate isEqualToString:@"*"]){
            strResult = [NSString stringWithFormat:@"%d", [first intValue] * [second intValue]];
            
        }else if ([operate isEqualToString:@"/"]){
            if ([second intValue] != 0) {
                strResult = [NSString stringWithFormat:@"%d", [first intValue] / [second intValue]];
    
            }else{
                strResult = @"0";
            }
        }
    }
    return strResult;
}
@end
