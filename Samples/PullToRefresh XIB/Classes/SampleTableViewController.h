//
//  SampleTableViewController.h
//  PullToRefresh XIB
//
//  Created by Tobias Tom on 19.08.10.
//  Copyright 2010 succont. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SuccontPullToRefreshView.h"

@interface SampleTableViewController : UITableViewController {
	SuccontPullToRefreshView *pullToRefreshView;
}

@property (nonatomic, retain) IBOutlet SuccontPullToRefreshView *pullToRefreshView;

@end
