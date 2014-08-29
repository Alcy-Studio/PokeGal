//
//  PGWalkSVController.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "PGWalkSVController.h"
#import "PGWalkSVController+Auto.h"

//Additional
#import "PGAchiViewController.h"
#import "PGWalkViewController.h"
#import "PGAttrViewController.h"

//Constants
#import "ConstantsPGSV.h"

//Repo
#import "MAct.h"
@interface PGWalkSVController (PrivateMethods)

- (void)loadScrollViewWithPage:(int)page;
- (void)scrollViewDidScroll:(UIScrollView *)sender;

@end

@implementation PGWalkSVController



//static NSUInteger kNumberOfPagesForSV = 3;




@synthesize scrollView, viewControllers, pageControl;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
 // Custom initialization
 }
 return self;
 }
 */

/*
 // Implement loadView to create a view hierarchy programmatically, without using a nib.
 - (void)loadView {
 }
 */



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	[self autoSetup];
	// view controllers are created lazily
    // in the meantime, load the array with placeholders which will be replaced on demand
    NSMutableArray *controllers = [[NSMutableArray alloc] init];
    for (unsigned i = 0; i < kNumberOfPagesForSV; i++) {
        [controllers addObject:[NSNull null]];
    }
    self.viewControllers = controllers;
    [controllers release];
	
    // a page is the width of the scroll view
    scrollView.pagingEnabled = YES;
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * kNumberOfPagesForSV, scrollView.frame.size.height);
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    scrollView.scrollsToTop = NO;
    scrollView.delegate = self;
	
	//scrollView.backgroundColor = [UIColor blackColor];
    pageControl.numberOfPages = kNumberOfPagesForSV;
    pageControl.currentPage = 0;
	
    // pages are created on demand
    // load the visible page
    // load the page on either side to avoid flashes when the user starts scrolling
	
	
	
	//PGAchiViewController *vc1 = [[PGAchiViewController alloc] initWithPageNumber:kSVPage1];
	PGAchiViewController *vc1 = [[PGAchiViewController alloc] init];
	
	CGRect frame = scrollView.frame;
	
	frame.origin.x = frame.size.width * kSVPage1;
	frame.origin.y = 0;
	vc1.view.frame = frame;
	//vc1.view.page = kSVPage1;	// tag our images for later use when we place them in serial fashion
	vc1.title = @"PGAchiViewController";
	
	[viewControllers replaceObjectAtIndex:kSVPage1 withObject:vc1];
	[vc1 release];
	
	
	
	
	
	//PGWalkViewController *vc2 = [[PGWalkViewController alloc] initWithPageNumber:kSVPage2];
	PGWalkViewController *vc2 = [[PGWalkViewController alloc] init];
	
	frame.origin.x = frame.size.width * kSVPage2;
	frame.origin.y = 0;
	vc2.view.frame = frame;
	//vc2.view.page = kSVPage2;	// tag our images for later use when we place them in serial fashion
	vc2.title = @"PGWalkViewController";
	
	
	
	[viewControllers replaceObjectAtIndex:kSVPage2 withObject:vc2];
	[vc2 release];
	
	//[(PGWalkViewController*)[viewControllers objectAtIndex:kSVPage2] autoSetup];
	
	
	
	//PGAttrViewController *vc3 = [[PGAttrViewController alloc] initWithPageNumber:kSVPage3];
	PGAttrViewController *vc3 = [[PGAttrViewController alloc] init];
	
	frame.origin.x = frame.size.width * kSVPage3;
	frame.origin.y = 0;
	vc3.view.frame = frame;
	//vc3.view.page = kSVPage3;	// tag our images for later use when we place them in serial fashion
	vc3.title = @"PGAttrViewController";
	
	
	[viewControllers replaceObjectAtIndex:kSVPage3 withObject:vc3];
	[vc3 release];
	
	//[self loadScrollViewWithPage:0];
    //[self loadScrollViewWithPage:1];
	
	
	CGPoint p;
	p.x = scrollView.frame.size.width;
	p.y = 0;
	[scrollView setContentOffset:p];
	
}

- (void)loadScrollViewWithPage:(int)page {
    if (page < 0) return;
    if (page >= kNumberOfPagesForSV) return;
	
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	//PGAchiViewController *c1 = ((PGAchiViewController*)[viewControllers objectAtIndex:page]);
	//PGWalkViewController *c2 = [viewControllers objectAtIndex:page];
	//PGAttrViewController *c3 = [viewControllers objectAtIndex:page];
	
	//Set frame for Controller
	UIViewController *controller = [viewControllers objectAtIndex:page];
	
	// replace the placeholder if necessary
	
    // add the controller's view to the scroll view
    if (nil == controller.view.superview) {
        /*
		 CGRect frame = scrollView.frame;
		 frame.origin.x = frame.size.width * page;
		 frame.origin.y = 0;
		 controller.view.frame = frame;
		 */
		switch (page) {
			case kSVPage1:
				//[scrollView addSubview:c1.view];
				[scrollView addSubview: 
				 ((PGAchiViewController*)[viewControllers objectAtIndex:page]).view];
				break;
			case kSVPage2:
				[scrollView addSubview: 
				 ((PGWalkViewController*)[viewControllers objectAtIndex:page]).view];
				break;
			case kSVPage3:
				[scrollView addSubview: 
				 ((PGAttrViewController*)[viewControllers objectAtIndex:page]).view];
				break;
			default:
				break;
		}
    }
	[pool release];
}

- (void)scrollViewDidScroll:(UIScrollView *)sender {
    // We don't want a "feedback loop" between the UIPageControl and the scroll delegate in
    // which a scroll event generated from the user hitting the page control triggers updates from
    // the delegate method. We use a boolean to disable the delegate logic when the page control is used.
	/*
	 if (pageControlUsed) {
	 // do nothing - the scroll was initiated from the page control, not the user dragging
	 return;
	 }
	 */
    // Switch the indicator when more than 50% of the previous/next page is visible
    
	CGFloat pageWidth = scrollView.frame.size.width;
    int page = floor((scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    pageControl.currentPage = page;
	
    // load the visible page and the page on either side of it (to avoid flashes when the user starts scrolling)
    [self loadScrollViewWithPage:page - 1];
    [self loadScrollViewWithPage:page];
    [self loadScrollViewWithPage:page + 1];
	
    // A possible optimization would be to unload the views+controllers which are no longer visible
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
	if ((interfaceOrientation == UIInterfaceOrientationPortrait) || (interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown))
		return YES;
	return NO;
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the Walk view.
    // e.g. self.myOutlet = nil;
	
	self.scrollView = nil;
	
}


- (void)dealloc {
	[scrollView release];
	for (UIViewController* vc in self.viewControllers) {
		[vc release];
	}
	[viewControllers release];
	[pageControl release];
	
	
    [super dealloc];
}

@end
