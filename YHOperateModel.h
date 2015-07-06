//
//  YHOperateModel.h
//  BlockTest
//
//  Created by yinhan on 15/7/6.
//  Copyright (c) 2015年 yinhan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YHOperateModel : NSObject
@property (assign) BOOL     isResultFloat;      //是否返回浮点数
+(instancetype)shared;
-(NSString *)getResultOperate:(NSString *)operate NumberFirst:(NSString *)first NumberSecond:(NSString *)second;

@end
