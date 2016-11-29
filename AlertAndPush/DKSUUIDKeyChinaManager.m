//
//  DKSUUIDKeyChinaManager.m
//  AlertAndPush
//
//  Created by aDu on 16/11/16.
//  Copyright © 2016年 DuKaiShun. All rights reserved.
//

#import "DKSUUIDKeyChinaManager.h"
#import "DKSKeyChain.h"

static NSString * const KEY_IN_KEYCHAIN_UUID = @"唯一识别的KEY_UUID";
static NSString * const KEY_UUID = @"唯一识别的key_uuid";

@implementation DKSUUIDKeyChinaManager

+ (void)saveUUID:(NSString *)UUID
{
    NSMutableDictionary *usernamepasswordKVPairs = [NSMutableDictionary dictionary];
    [usernamepasswordKVPairs setObject:UUID forKey:KEY_UUID];
    [DKSKeyChain save:KEY_IN_KEYCHAIN_UUID data:usernamepasswordKVPairs];
}

+ (NSString *)readUUID
{
    NSMutableDictionary *usernamepasswordKVPair = (NSMutableDictionary *)[DKSKeyChain load:KEY_IN_KEYCHAIN_UUID];
    return [usernamepasswordKVPair objectForKey:KEY_UUID];
}

+ (void)deleteUUID
{
    [DKSKeyChain delete:KEY_IN_KEYCHAIN_UUID];
}

@end
