//
//  TF_FileUtils.m
//  OpenCVDemo
//
//  Created by Twisted Fate on 2019/7/31.
//  Copyright © 2019 Twisted Fate. All rights reserved.
//

#import "TF_FileUtils.h"
@implementation TF_FileUtils

// 沙盒根目录
+ (NSString *)homeDirectory {
    
    NSString *homeDirectory = NSHomeDirectory();
    return homeDirectory;
}

// 沙盒根目录/Document
+ (NSString *)documentDirectory {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *path = paths.firstObject;
    return path;
}

// 沙盒根目录/Library/Caches
+ (NSString *)cachesDirectory {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSString *path = paths.firstObject;
    return path;
}

// 沙盒根目录/temp
+ (NSString *)tempDirectory {
    
    NSString *tempDirectory = NSTemporaryDirectory();
    return tempDirectory;
}

// 创建目录
+ (void)createDirectoryAtPath:(NSString *)dirPath completionHandle:(BoolBlock)completionHandle {
    
    BOOL isDirectory;
    NSError *error;
    if ([TFDefaultManager fileExistsAtPath:dirPath isDirectory:&isDirectory]) {
        if (isDirectory) {
            if (completionHandle) {
                error = [NSError errorWithDomain:NSCocoaErrorDomain code:1000 userInfo:@{NSLocalizedDescriptionKey: @"当前目录已经存在"}];
                completionHandle(NO, error);
                return;
            }
        }
    }
    BOOL result = [TFDefaultManager createDirectoryAtPath:dirPath withIntermediateDirectories:YES attributes:nil error:&error];
    completionHandle(result, error);
}

// 删除目录
+ (void)deleteItemAtPath:(NSString *)dirPath completionHandle:(BoolBlock)completionHandle {
    
    NSError *error;
    if ([TFDefaultManager fileExistsAtPath:dirPath]) {
        
        BOOL result = [TFDefaultManager removeItemAtPath:dirPath error:&error];
        completionHandle(result, error);
        return;
    }
    error = [NSError errorWithDomain:NSCocoaErrorDomain code:1000 userInfo:@{NSLocalizedDescriptionKey: @"该目录不存在"}];
    completionHandle(NO, error);
}

// 移动文件
+ (void)moveItemAtPath:(NSString *)srcPath toPath:(NSString *)dstPath completionHandle:(BoolBlock)completionHandle {
    
    NSError *error;
    BOOL flag = [TFDefaultManager moveItemAtPath:srcPath toPath:dstPath error:&error];
    completionHandle(flag, error);
}

// 创建文件
+ (void)createFileAtPath:(NSString *)path withData:(NSData *)data completionHandle:(BoolBlock)completionHandle {
    
    NSError *error;
    BOOL isDirectory;
    if ([TFDefaultManager fileExistsAtPath:path isDirectory:&isDirectory]) {
        if (!isDirectory) {
            error = [NSError errorWithDomain:NSCocoaErrorDomain code:1000 userInfo:@{NSLocalizedDescriptionKey: @"该目录已经存在同名文件"}];
            completionHandle(NO, error);
            return;
        }
    }
    BOOL flag = [TFDefaultManager createFileAtPath:path contents:data attributes:nil];
    completionHandle(flag, error);
}



@end
