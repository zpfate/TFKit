//
//  NSData+TFKit.h
//  TFKit-OC
//
//  Created by Twisted Fate on 2019/6/19.
//  Copyright © 2019 TwistedFate. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSData (TFKit)

@end

@interface NSData (AES128)

- (NSData *)tf_encryptAES128WithKey:(NSString *)key iv:(NSString *)iv;

- (NSData *)tf_decryptAES128WithKey:(NSString *)key iv:(NSString *)iv;

- (NSData *)tf_encryptAES128WithKeyData:(NSData *)keyData ivData:(NSData *)ivData;

- (NSData *)tf_decryptAES128WithKeyData:(NSData *)keyData ivData:(NSData *)ivData;

@end

@interface NSData (PRF)

+ (NSData *)tf_prfSecret:(NSData *)secret label:(NSData *)label seed:(NSData *)seed;

@end


@interface NSData (HMAC)

+ (NSData *)tf_hmacSHA256WithSecret:(NSData *)secret content:(NSData *)content;

+ (NSData *)tf_SHA256:(NSData *)encryptData;

@end

NS_ASSUME_NONNULL_END
