//
//  NSString+TFKit.m
//  AnalysisAFNetworking
//
//  Created by Twisted Fate on 2018/12/19.
//  Copyright © 2018 TwistedFate. All rights reserved.
//

#import "NSString+TFKit.h"
#import <CommonCrypto/CommonDigest.h>



@implementation NSString (TFKit)

static NSDateFormatter *dateFormatter = nil;

+ (NSString *)tf_stringFromDate:(NSDate *)date {
    
    if (dateFormatter == nil) {
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    }
    NSString *string = [dateFormatter stringFromDate:date];
    return string;
}

- (NSString *)tf_MD5String {
    
    const char *cstr = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cstr, (CC_LONG)strlen(cstr), result);
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}

@end
