//
//  TF_FileUtils.h
//  OpenCVDemo
//
//  Created by Twisted Fate on 2019/7/31.
//  Copyright © 2019 Twisted Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TF_ConfigHeader.h"

NS_ASSUME_NONNULL_BEGIN

#define TFDefaultManager [NSFileManager defaultManager]
@interface TF_FileUtils : NSObject

+ (NSString *)homeDirectory;

+ (NSString *)documentDirectory;

+ (NSString *)cachesDirectory;

+ (NSString *)tempDirectory;

+ (void)createDirectoryAtPath:(NSString *)dirPath completionHandle:(BoolBlock)completionHandle;

+ (void)deleteItemAtPath:(NSString *)dirPath completionHandle:(BoolBlock)completionHandle;

+ (void)moveItemAtPath:(NSString *)srcPath toPath:(NSString *)dstPath completionHandle:(BoolBlock)completionHandle;

+ (void)createFileAtPath:(NSString *)path withData:(NSData *)data completionHandle:(BoolBlock)completionHandle;

@end

NS_ASSUME_NONNULL_END
