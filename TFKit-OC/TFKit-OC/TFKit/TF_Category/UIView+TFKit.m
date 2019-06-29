//
//  UIView+TFKit.m
//  AnalysisAFNetworking
//
//  Created by Twisted Fate on 2018/12/19.
//  Copyright © 2018 TwistedFate. All rights reserved.
//

#import "UIView+TFKit.h"

@implementation UIView (TFKit)

//  返回高度
- (CGFloat)tf_height {
    return self.frame.size.height;
}

- (void)setTf_height:(CGFloat)tf_height {
    //  结构体的点语法 没有set get方法
    CGRect newframe = self.frame;
    newframe.size.height = tf_height;
    self.frame = newframe;
}

//  返回宽度
- (CGFloat)tf_width {
    return self.frame.size.width;
}

//  设置宽度
- (void)setTf_width:(CGFloat)tf_width {
    CGRect newframe = self.frame;
    newframe.size.width = tf_width;
    self.frame = newframe;
}

//  返回Y
- (CGFloat)tf_top {
    return self.frame.origin.y;
}

- (void)setTf_top:(CGFloat)tf_top {
    CGRect newframe = self.frame;
    newframe.origin.y = tf_top;
    self.frame = newframe;
}

//  返回X
- (CGFloat)tf_left {
    return self.frame.origin.x;
}

- (void)setTf_left:(CGFloat)tf_left {
    CGRect newframe = self.frame;
    newframe.origin.x = tf_left;
    self.frame = newframe;
}

//  返回Y + Height
- (CGFloat)tf_bottom {
    return self.frame.origin.y + self.frame.size.height;
}


- (void)setTf_bottom:(CGFloat)tf_bottom {
    CGRect newframe = self.frame;
    newframe.origin.y = tf_bottom - newframe.size.height;
    self.frame = newframe;
}

//  返回X + width
- (CGFloat)tf_right {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setTf_right:(CGFloat)tf_right {
    CGRect newFrame = self.frame;
    newFrame.origin.x = tf_right - newFrame.size.width;
    self.frame = newFrame;
}

- (CGFloat)tf_centerX {
    return self.center.x;
}

- (void)setTf_centerX:(CGFloat)tf_centerX {
    self.center = CGPointMake(tf_centerX, self.center.y);
}

- (CGFloat)tf_centerY {
    return self.center.y;
}

- (void)setTf_centerY:(CGFloat)tf_centerY {
    self.center = CGPointMake(self.center.x, tf_centerY);
    
}

- (void)tf_removeAllSubviews {
    [self.subviews enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [obj removeFromSuperview];
    }];
}

- (UIViewController *)tf_getCurrentViewController {
    
    UIResponder * next = [self nextResponder];
    while (next != nil) {
        if ([next isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)next;
        }
        next = [next nextResponder];
    }
    return nil;
}

@end
