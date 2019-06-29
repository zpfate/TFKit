//
//  UIDevice+TFKit.h
//  AnalysisAFNetworking
//
//  Created by Twisted Fate on 2018/12/19.
//  Copyright © 2018 TwistedFate. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIDevice (TFKit)

+ (BOOL)tf_isiPhoneX;

/*
 *  @brief  强制设置屏幕方向
 *
 *  @param orientation 将要设置的屏幕方向
 */
+ (void)tf_setOrientation:(UIInterfaceOrientation)orientation;

/**
 *  强制设备旋转到状态栏方向，解决设备方向与状态栏方向不一致的情况
 */
+ (void)tf_setRotateToSatusBarOrientation;

@end

NS_ASSUME_NONNULL_END
