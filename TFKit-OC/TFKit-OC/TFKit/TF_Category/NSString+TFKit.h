//
//  NSString+TFKit.h
//  AnalysisAFNetworking
//
//  Created by Twisted Fate on 2018/12/19.
//  Copyright © 2018 TwistedFate. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (TFKit)

+ (NSString *)tf_stringFromDate:(NSDate *)date;

- (NSString *)tf_MD5String;

@end

NS_ASSUME_NONNULL_END
