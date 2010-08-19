//
//  PullToRefresh_CodeAppDelegate.m
//  PullToRefresh Code
//
//  Created by Tobias Tom on 19.08.10.
//  Copyright succont 2010. All rights reserved.
//

#import "PullToRefresh_CodeAppDelegate.h"
#import "SampleTableViewController.h"

@implementation PullToRefresh_CodeAppDelegate

@synthesize window;

#pragma mark -
#pragma mark Application lifecycle
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    SampleTableViewController *viewController = [[SampleTableViewController alloc] initWithStyle:UITableViewStylePlain];

	[window addSubview:viewController.view];
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
