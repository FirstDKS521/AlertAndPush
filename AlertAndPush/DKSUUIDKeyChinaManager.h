//
//  DKSUUIDKeyChinaManager.h
//  AlertAndPush
//
//  Created by aDu on 16/11/16.
//  Copyright © 2016年 DuKaiShun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DKSUUIDKeyChinaManager : NSObject

/**
 * 存储UUID
 */
+ (void)saveUUID:(NSString *)UUID;

/**
 * 读取UUID
 */
+ (NSString *)readUUID;

/**
 * 删除UUID
 */
+ (void)deleteUUID;

@end
