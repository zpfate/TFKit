//
//  UINavigationController+TFKit.h
//  TFKit-OC
//
//  Created by Twisted Fate on 2019/6/29.
//  Copyright © 2019 TwistedFate. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UINavigationController (TFKit)

- (void)tf_pushViewController:(UIViewController *)viewController animated:(BOOL)animated hideTabbar:(BOOL)hide;

- (void)tf_setNavigationBarTitleColor:(NSString *)hexString fontSize:(CGFloat)fontSize;

@end

NS_ASSUME_NONNULL_END
