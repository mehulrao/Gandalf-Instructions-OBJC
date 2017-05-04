//
//  AppDelegate.m
//  Gandalf-Instructions-OBJC
//
//  Created by Mehul Rao on 4/28/17.
//  Copyright © 2017 Mehul Rao. All rights reserved.
//

#import "AppDelegate.h"
@import Firebase;
@import GoogleMobileAds;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // Use Firebase library to configure APIs
    [FIRApp configure];
    // Initialize Google Mobile Ads SDK
    [GADMobileAds configureWithApplicationID:@"ca-app-pub-2616840641282201~6106939171"];
    
    return YES;
}

@end
