//
//  TF_ConfigHeader.h
//  AnalysisAFNetworking
//
//  Created by Twisted Fate on 2018/12/19.
//  Copyright © 2018 TwistedFate. All rights reserved.
//

#ifndef TF_ConfigHeader_h
#define TF_ConfigHeader_h

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define kScreenPoint6Scale [UIScreen mainScreen].bounds.size.width / 375.f

#define kNavigationBarColor [UIColor tf_colorWithHexString:@"008CE9"]

#define iPhoneX [TF_SystemConfig isiPhoneX]
#define kNavigationBarHeight ((iPhoneX) ? (24.f+64.f) : 64.f)
#define kStatusBarHeight ((iPhoneX) ? (20.f+24.f) : 20.f)
#define kTabbarHeight ((iPhoneX) ? 83.f : 49.f)

#define IsNilOrNull(_ref)   (((_ref) == nil) || ([(_ref) isEqual:[NSNull null]]))
#define IsStrEmpty(_ref)            (IsNilOrNull(_ref) || (![(_ref) isKindOfClass:[NSString class]]) || ([(_ref) isEqualToString:@""]))

#define BLOCK_EXEC(block, ...) if (block) { block(__VA_ARGS__); };
#define WS(weakSelf)    __weak __typeof(&*self)weakSelf = self


#ifdef DEBUG
#define LogInfo( s, ... ) NSLog( @"[LogInfo]<%@:(%d)> %@", [[NSString stringWithUTF8String:__FILE__] lastPathComponent], __LINE__, [NSString stringWithFormat:(s), ##__VA_ARGS__] )
#else
#define LogInfo( s, ... )
#endif

#endif /* TF_ConfigHeader_h */
