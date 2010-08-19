//
//  SampleTableViewController.m
//  PullToRefresh Code
//
//  Created by Tobias Tom on 19.08.10.
//  Copyright 2010 succont. All rights reserved.
//

#import "SampleTableViewController.h"
#import "UIViewController+SuccontPullToRefresh.h"

@implementation SampleTableViewController

- (void)didLoadData {
	pullToRefreshView.loading = NO;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	
	pullToRefreshView = [[SuccontPullToRefreshView alloc] initWithFrame:CGRectMake(0, -50, 320, 50)];
	pullToRefreshView.backgroundColor = [UIColor lightGrayColor];
	pullToRefreshView.statusLabel.backgroundColor = [UIColor lightGrayColor];
	pullToRefreshView.statusLabel.textColor = [UIColor whiteColor];
	pullToRefreshView.statusLabel.shadowColor = [UIColor blackColor];
	pullToRefreshView.reloadImageView.image = [UIImage imageNamed:@"PullToRefresh"];
	
	[self.view addSubview:pullToRefreshView];
}

#pragma mark -
#pragma mark PullToRefresh implementation
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    [self pullToRefreshView:pullToRefreshView shouldHandleScrollViewDidScroll:scrollView];
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    [self pullToRefreshView:pullToRefreshView shouldHandleScrollViewDidEndDragging:scrollView willDecelerate:decelerate];
}

- (void)pullToRefreshShouldLoadData:(SuccontPullToRefreshView *)aPullToRefresh {
	aPullToRefresh.loading = YES;
	[self performSelector:@selector(didLoadData) withObject:nil afterDelay:5.0];
}

#pragma mark -
#pragma mark Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
	return [NSString stringWithFormat:@"Section %d", section];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
	cell.textLabel.text = [NSString stringWithFormat:@"Section %d, Row %d", indexPath.section, indexPath.row];
    return cell;
}

#pragma mark -
#pragma mark Memory management
- (void)dealloc {
	[pullToRefreshView release];

    [super dealloc];
}


@end

