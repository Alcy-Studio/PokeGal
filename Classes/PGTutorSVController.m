//
//  PGTutorSVController.m
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PGTutorSVController.h"

//Auto
#import "PGTutorSVController+Auto.h"

//Additional
#import "PGTutorPageViewController.h"

//Method
#import "MUi.h"

//Constants
#import "ConstantsSceneCode.h"
#import "ConstantsTmpTutor.h"

@interface PGTutorSVController ()

-(NSUInteger)setNumberOfPages;
-(void)setSV;

- (void)loadScrollViewWithPage:(int)page;
- (void)scrollViewDidScroll:(UIScrollView *)sender;
//- (void)scrollViewUnload:(int)page;
- (void)scrollViewUnload;




@end

@implementation PGTutorSVController

@synthesize view1, view2; 
@synthesize scrollView; 
@synthesize pageControl, viewControllers;

@synthesize lock;

//- (id)initWithPageNumber:(int)page{return self;}

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
 // Custom initialization
 }
 return self;
 }
 */
-(NSUInteger)setNumberOfPages{
	NSUInteger i = [[NSUserDefaults standardUserDefaults] integerForKey:kTmpTutorScene];
	
	switch (i) {
		case kSceneCodePGMain:
			return kNumOfPagesForTutorMain;
			break;
		case kSceneCodePGAchi:
			return kNumOfPagesForTutorAchi;
			break;
		case kSceneCodePGAttr:
			return kNumOfPagesForTutorAttr;
			break;
		case kSceneCodePGDate:
			return kNumOfPagesForTutorDate;
			break;
		case kSceneCodePGWalk:
			return kNumOfPagesForTutorWalk;
			break;
		case kSceneCodePGEvent:
			return kNumOfPagesForTutorEvent;
			break;
		case kSceneCodePGMap:
			return kNumOfPagesForTutorMap;
			break;
		case kSceneCodePGArrange:
			return kNumOfPagesForTutorArrange;
			break;
		case kSceneCodePGPlace:
			return kNumOfPagesForTutorPlace;
			break;
		case kSceneCodePGSchedule:
			return kNumOfPagesForTutorSchedule;
			break;
		case kSceneCodePGDetail:
			return kNumOfPagesForTutorDetail;
			break;
		case kSceneCodePGSMS:
			return kNumOfPagesForTutorSms;
			break;
			
		default:
			break;
	}
	return kNumOfPagesForTutorNil;

}

-(void)setSV{
	
	
	//Test
	//[MUi modifyUserDefaultWithKey:kTmpTutorScene value:kSceneCodePGSMS]; 
	//Test
	
	
	//setup numberOfPages
	numberOfPages = [self setNumberOfPages];
	if (numberOfPages == kNumOfPagesForTutorNil) {
		NSLog(@"Number of Pages for Tutorial == 0!");
		return;
	}
	//NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	
	//numberOfPages = [self setNumberOfPages:[ud integerForKey:kTmpTutorScene]]
	
    // view controllers are created lazily
    // in the meantime, load the array with placeholders which will be replaced on demand
    NSMutableArray *controllers = [[NSMutableArray alloc] init];
    for (unsigned i = 0; i < numberOfPages; i++) {
        [controllers addObject:[NSNull null]];
    }
    self.viewControllers = controllers;
    [controllers release];
	
    // a page is the width of the scroll view
    scrollView.pagingEnabled = YES;
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * numberOfPages, scrollView.frame.size.height);
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    scrollView.scrollsToTop = NO;
    scrollView.delegate = self;
	
    pageControl.numberOfPages = numberOfPages;
    pageControl.currentPage = 0;
	
    // pages are created on demand
    // load the visible page
    // load the page on either side to avoid flashes when the user starts scrolling
    [self loadScrollViewWithPage:0];
    [self loadScrollViewWithPage:1];
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	[self setSV];
	//Don't load autoSetup in this case, manual load autoSetup after svController fully loaded
	[self autoSetup];
	
	
	
	
	
	/*
	 [NSTimer scheduledTimerWithTimeInterval:1 
	 target:self 
	 selector:@selector(autoRefresh)
	 userInfo:nil 
	 repeats:YES];
	 */
	[self autoRefresh];
	
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
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
	self.view1 = nil;self.view2 = nil; self.scrollView = nil;
	self.pageControl = nil;
	
	[self scrollViewUnload];
	
}


- (void)dealloc {
	//Outlets release
	[view1 release];[view2 release];
	[scrollView release];
	
	[pageControl release];
	[viewControllers release];
    [super dealloc];
	
}

- (void)loadScrollViewWithPage:(int)page {
    if (page < 0) return;
    if (page >= numberOfPages) return;
	
	//set page for scene
	[MUi modifyUserDefaultWithKey:kTmpTutorPage value:page];
	
    // replace the placeholder if necessary
    PGTutorPageViewController *controller = [viewControllers objectAtIndex:page];
    if ((NSNull *)controller == [NSNull null]) {
        controller = [[PGTutorPageViewController alloc] init];
        [viewControllers replaceObjectAtIndex:page withObject:controller];
        [controller release];
    }
	
    // add the controller's view to the scroll view
    if (nil == controller.view.superview) {
        CGRect frame = scrollView.frame;
        frame.origin.x = frame.size.width * page;
        frame.origin.y = 0;
        controller.view.frame = frame;
        [scrollView addSubview:controller.view];
    }
}

- (void)scrollViewDidScroll:(UIScrollView *)sender {
    // We don't want a "feedback loop" between the UIPageControl and the scroll delegate in
    // which a scroll event generated from the user hitting the page control triggers updates from
    // the delegate method. We use a boolean to disable the delegate logic when the page control is used.
    if (pageControlUsed) {
        // do nothing - the scroll was initiated from the page control, not the user dragging
        return;
    }
	
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

/*
 - (void)scrollViewUnload{
	 if (pageControl.currentPage < 0) 
		 return;
	 if (pageControl.currentPage >=  [viewControllers count]) 
		 return;
	 if ([viewControllers count] == 1) 
		 return;
	 
	 
	 unsigned int i;
	 for (i = 1; i < [viewControllers count]; i++) {
	 NSLog(@"Current Count is %d, i is %d",[viewControllers count], i);
	 
	 if (viewControllers != [NSNull null]) {
		 PGTutorPageViewController *controller = [viewControllers objectAtIndex:i];
		 
		 NSLog(@"Current Page is %d",pageControl.currentPage);
		 //NSLog(@"Current PageNumber is %d",controller.pageNumber);
		 
		 
			 if (controller.pageNumber != pageControl.currentPage){
				 [viewControllers removeObjectAtIndex:i];
				 NSLog(@"%d",i);
			 }
		 
		 }
	 }
	 //	if (page < 0) return;
	 //    if (page >= numberOfPages) return;
	 
 }
 */

- (void)scrollViewUnload{
	for (int i = 0; i < [viewControllers count]; i++) {
		[viewControllers removeObjectAtIndex:i];

	}
	
}

// At the begin of scroll dragging, reset the boolean used when scrolls originate from the UIPageControl
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    pageControlUsed = NO;
}

// At the end of scroll animation, reset the boolean used when scrolls originate from the UIPageControl
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    pageControlUsed = NO;
}

- (IBAction)changePage:(id)sender {
    int page = pageControl.currentPage;
	
    // load the visible page and the page on either side of it (to avoid flashes when the user starts scrolling)
    [self loadScrollViewWithPage:page - 1];
    [self loadScrollViewWithPage:page];
    [self loadScrollViewWithPage:page + 1];
    
	// update the scroll view to the appropriate page
    CGRect frame = scrollView.frame;
    frame.origin.x = frame.size.width * page;
    frame.origin.y = 0;
    [scrollView scrollRectToVisible:frame animated:YES];
    
	// Set the boolean used when scrolls originate from the UIPageControl. See scrollViewDidScroll: above.
    pageControlUsed = YES;
}

@end
