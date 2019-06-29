//
//  UIDevice+TFKit.m
//  AnalysisAFNetworking
//
//  Created by Twisted Fate on 2018/12/19.
//  Copyright © 2018 TwistedFate. All rights reserved.
//

#import "UIDevice+TFKit.h"

@implementation UIDevice (TFKit)

+ (BOOL)tf_isiPhoneX {
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        // 获取屏幕的宽度和高度，取较大一方判断是否为 812.0 或 896.0
        CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
        CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
        CGFloat maxLength = screenWidth > screenHeight ? screenWidth : screenHeight;
        if (maxLength == 812.0f || maxLength == 896.0f) {
            return YES;
        }
    }
    return NO;
}

+ (void)tf_setOrientation:(UIInterfaceOrientation)orientation {
    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
        SEL selector = NSSelectorFromString(@"setOrientation:");
        NSInvocation* invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
        [invocation setSelector:selector];
        [invocation setTarget:[UIDevice currentDevice]];
        [invocation setArgument:&orientation atIndex:2];
        [invocation invoke];
    }
}

+ (void)tf_setRotateToSatusBarOrientation {
    UIInterfaceOrientation deviceOri = (UIInterfaceOrientation)[UIDevice currentDevice].orientation;
    UIInterfaceOrientation statusBarOri = [UIApplication sharedApplication].statusBarOrientation;
    if (UIInterfaceOrientationIsLandscape(statusBarOri)) {
        //解锁后,可能会导致设备方向与状态栏方向不一致,强制先让设备旋转到状态栏方向
        if (statusBarOri != deviceOri) {
            [self tf_setOrientation:[UIApplication sharedApplication].statusBarOrientation];
        }
        
        [self tf_setOrientation:UIInterfaceOrientationPortrait];
    }
    else {
        [self tf_setOrientation:UIInterfaceOrientationLandscapeLeft];
    }
}
@end
