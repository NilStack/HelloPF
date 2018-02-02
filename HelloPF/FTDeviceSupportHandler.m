//
//  FTDeviceSupportHandler.m
//  HelloPF
//
//  Created by 郭朋 on 2/2/18.
//  Copyright © 2018 郭朋. All rights reserved.
//

#import "FTDeviceSupportHandler.h"
#import "FTDeviceSupport.h"

static FTDeviceSupport *_supporter = nil;
static FTDeviceSupportHandler *_handler = nil;

@implementation FTDeviceSupportHandler

+ (FTDeviceSupportHandler*) sharedInstance {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSBundle *b = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FTServices.framework"];
        if (![b load]) {
            NSLog(@"Error"); // maybe throw an exception
        } else {
            _supporter = [NSClassFromString(@"FTDeviceSupport") valueForKey:@"sharedInstance"];
            _handler = [[FTDeviceSupportHandler alloc] init];
        }
    });
    return _handler;
}

- (NSString *)deviceName
{
    return [_supporter deviceName];
}

- (NSString *)productName
{
    return [_supporter productName];
}

- (BOOL)supportsApplePay
{
    return [_supporter supportsApplePay];
}

- (NSString *)deviceRegionInfo
{
    return [_supporter deviceRegionInfo];
}

@end
