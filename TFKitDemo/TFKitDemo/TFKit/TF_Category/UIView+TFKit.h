//
//  UIView+TFKit.h
//  AnalysisAFNetworking
//
//  Created by Twisted Fate on 2018/12/19.
//  Copyright © 2018 TwistedFate. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (TFKit)

@property (nonatomic, assign) CGFloat tf_height;

@property (nonatomic, assign) CGFloat tf_width;

@property (nonatomic, assign) CGFloat tf_top;

@property (nonatomic, assign) CGFloat tf_left;

@property (nonatomic, assign) CGFloat tf_bottom;

@property (nonatomic, assign) CGFloat tf_right;

@property (nonatomic, assign) CGFloat tf_centerX;

@property (nonatomic, assign) CGFloat tf_centerY;


- (void)tf_removeAllSubviews;

- (UIViewController *)tf_getCurrentViewController;

@end

NS_ASSUME_NONNULL_END
