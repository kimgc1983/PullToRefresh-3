# PullToRefresh

Another, category based, implementation of the popular pull-to-refresh feature for iOS devices.

This classes work with alloc/init code inside the controller class, __and__ with views linked within Interface Builder files.

The goal was to keep the code to implement this feature as clean and simple as possible, and remove the requirement to subclass a interface from this project.

Of course, this project was inspired by the (initial?) implementation inside [Tweetie 2](http://www.atebits.com/tweetie-iphone/) and the various projects that reimplemented this behaviour ([EGOTableViewPullRefresh](http://github.com/enormego/EGOTableViewPullRefresh) and [PullToRefresh](http://github.com/leah/PullToRefresh)).

## Installation

* Copy the files from the [Classes](http://github.com/tobiastom/PullToRefresh/blob/master/Classes/) directory into your project
* Implement the following two methods inside your UITableViewController:

    - (void)scrollViewDidScroll:(UIScrollView *)scrollView {
        [self pullToRefreshView:pullToRefresh shouldHandleScrollViewDidScroll:scrollView];
    }
    
    - (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
        [self pullToRefreshView:pullToRefresh shouldHandleScrollViewDidEndDragging:scrollView willDecelerate:decelerate];
    }
    
    - (void)pullToRefreshShouldLoadData:(SuccontPullToRefreshView *)aPullToRefresh {
        // implement the reload feature here or call an exiting selector
    }

* Once the data was loaded, just set the loading indicator of the instance back to NO:

    self.pullToRefresh.loading = NO;

For details, take a look into the samples inside the [Samples](http://github.com/tobiastom/PullToRefresh/blob/master/Samples/) directory. Once uses raw sourcecode to define the view, one uses only Interface Builder to archive the same goal.

If you would like to implement your very own behaviour, you can easily subclass SuccontPullToRefreshView.
