//
//  AppDelegate.m
//  Santa Monica
//
//  Created by John Blanchard on 10/25/14.
//  Copyright (c) 2014 John Blanchard. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [Fabric with:@[TwitterKit, CrashlyticsKit]];

    return YES;
}

- (void)applicationDidEnterBackground:(UIApplication *)application {

}

@end
