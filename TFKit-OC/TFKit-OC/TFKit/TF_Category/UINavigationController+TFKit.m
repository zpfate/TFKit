//
//  UINavigationController+TFKit.m
//  TFKit-OC
//
//  Created by Twisted Fate on 2019/6/29.
//  Copyright © 2019 TwistedFate. All rights reserved.
//

#import "UINavigationController+TFKit.h"
#import "UIColor+TFKit.h"
@implementation UINavigationController (TFKit)

- (void)tf_pushViewController:(UIViewController *)viewController animated:(BOOL)animated hideTabbar:(BOOL)hide {
    [self pushViewController:viewController animated:animated];
    viewController.hidesBottomBarWhenPushed = hide;
}

- (void)tf_setNavigationBarTitleColor:(NSString *)hexString fontSize:(CGFloat)fontSize {
    
    [self.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor tf_colorWithHexString:hexString], NSFontAttributeName: [UIFont systemFontOfSize:fontSize]}];
}

@end
