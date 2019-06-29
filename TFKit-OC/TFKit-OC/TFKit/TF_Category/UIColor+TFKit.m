//
//  UIColor+TFKit.m
//  TFKit-OC
//
//  Created by Twisted Fate on 2019/6/29.
//  Copyright © 2019 TwistedFate. All rights reserved.
//

#import "UIColor+TFKit.h"

@implementation UIColor (TFKit)

+ (UIColor *)tf_colorWithHexString:(NSString *)string {
    
    NSString *pureHexString = [[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    NSString *resultHexString = pureHexString;
    if ([pureHexString hasPrefix:@"#"] && [pureHexString length] == 7) {
        resultHexString = [pureHexString substringFromIndex:1];
    } else if ([pureHexString hasPrefix:@"0x"] && [pureHexString length] == 8) {
        resultHexString = [pureHexString substringFromIndex:2];
    }
    
    if ([resultHexString length] != 6) {
        return [UIColor whiteColor];
    }
    
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [resultHexString substringWithRange:range];
    
    range.location += range.length ;
    NSString *gString = [resultHexString substringWithRange:range];
    
    range.location += range.length ;
    NSString *bString = [resultHexString substringWithRange:range];
    
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:1.0f];
}
@end
