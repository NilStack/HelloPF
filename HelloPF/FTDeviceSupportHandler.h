//
//  FTDeviceSupportHandler.h
//  HelloPF
//
//  Created by 郭朋 on 2/2/18.
//  Copyright © 2018 郭朋. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FTDeviceSupportHandler : NSObject

+ (FTDeviceSupportHandler*) sharedInstance;

- (NSString *)deviceName;
- (NSString *)productName;
- (BOOL)supportsApplePay;
- (NSString *)deviceRegionInfo;

@end
