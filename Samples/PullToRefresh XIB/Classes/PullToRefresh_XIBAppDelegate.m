//
//  PullToRefresh_XIBAppDelegate.m
//  PullToRefresh XIB
//
//  Created by Tobias Tom on 19.08.10.
//  Copyright succont 2010. All rights reserved.
//

#import "PullToRefresh_XIBAppDelegate.h"

@implementation PullToRefresh_XIBAppDelegate

@synthesize window;

#pragma mark -
#pragma mark Application lifecycle
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    [window makeKeyAndVisible];
	
	return YES;
}

#pragma mark -
#pragma mark Memory management
- (void)dealloc {
    [window release];

    [super dealloc];
}

@end
