//
//  TFKit.h
//  TFKit-OC
//
//  Created by Twisted Fate on 2019/6/19.
//  Copyright © 2019 TwistedFate. All rights reserved.
//

#ifndef TFKit_h
#define TFKit_h

#import "NSData+TFKit.h"
#import "NSString+TFKit.h"
#import "UIDevice+TFKit.h"
#import "UIView+TFKit.h"
#import "UIView+Toast.h"


// UI相关
#define kLightGrayColor [UIColor tf_colorWithHexString:@"f0f0f0"] // 页面背景
#define kMainTitleTextColor [UIColor tf_colorWithHexString:@"444444"]   // 主标题字色
#define kSubTitleTextColor [UIColor tf_colorWithHexString:@"b0b0b0"]   // 副标题字色
#define kDarkRedColor [UIColor tf_colorWithHexString:@"d0021b"]//警示深红色

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define kScreenPoint6HalfScale [UIScreen mainScreen].bounds.size.width / 375.f

#define kNavigationBarColor [UIColor tf_colorWithHexString:@"008CE9"]


#define IsNilOrNull(_ref)   (((_ref) == nil) || ([(_ref) isEqual:[NSNull null]]))
#define IsStrEmpty(_ref)            (IsNilOrNull(_ref) || (![(_ref) isKindOfClass:[NSString class]]) || ([(_ref) isEqualToString:@""]))

#define BLOCK_EXEC(block, ...) if (block) { block(__VA_ARGS__); };
#define WS(weakSelf)    __weak __typeof(&*self)weakSelf = self


#ifdef DEBUG
#define LogInfo( s, ... ) NSLog( @"[LogInfo]<%@:(%d)> %@", [[NSString stringWithUTF8String:__FILE__] lastPathComponent], __LINE__, [NSString stringWithFormat:(s), ##__VA_ARGS__] )
#else
#define LogInfo( s, ... )
#endif

// Block
typedef void (^BoolBlock)(BOOL flag, NSError *error);
typedef void (^ErrorBlock)(NSError *error);
typedef void (^ArrayBlock)(NSMutableArray *models, NSError *error);


//
typedef NS_ENUM(NSUInteger, TF_DataLoadingType) {
    TF_DataLoadingTypeRefresh = 1,
    TF_DataLoadingTypeInfinite
};

#endif /* TFKit_h */
