//
//  DKSKeyChain.h
//  AlertAndPush
//
//  Created by aDu on 16/11/16.
//  Copyright © 2016年 DuKaiShun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DKSKeyChain : NSObject

+ (NSMutableDictionary *)getKeychainQuery:(NSString *)service;

+ (void)save:(NSString *)service data:(id)data;

+ (id)load:(NSString *)service;

+ (void)delete:(NSString *)service;

@end
