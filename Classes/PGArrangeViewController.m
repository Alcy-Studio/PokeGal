//
//  PGArrangeViewController.m
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//
#define kArrangeViewSvHeight 815

#import "PGArrangeViewController.h"

//Auto
#import "PGArrangeViewController+Auto.h"

@implementation PGArrangeViewController

@synthesize sv; 
@synthesize view1, view2, view3, view4, view5, view6, view7, view8,
			view9, view10, view11, view12, view13, view14, view15, view16,
			view17, view18, view19;

@synthesize lock;

@synthesize timer;

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


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	[sv setContentSize:CGSizeMake(sv.frame.size.width,kArrangeViewSvHeight)];
	//Don't load autoSetup in this case, manual load autoSetup after svController fully loaded
	[self autoSetup];
	
	/*
	 [NSTimer scheduledTimerWithTimeInterval:1 
	 target:self 
	 selector:@selector(autoRefresh)
	 userInfo:nil 
	 repeats:YES];
	 */
	timer = [[NSTimer alloc] initWithFireDate:[NSDate date] interval:1 target:self selector:@selector(autoRefresh) userInfo:nil repeats:YES];
	[[NSRunLoop currentRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
	//[timer release];
	//[timer addTimer];
	//timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(autoRefresh) userInfo:nil repeats:YES];
	//[self autoRefresh];
	
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
	self.view1 = nil;self.view2 = nil;self.view3 = nil;self.view4 = nil;
	self.view5 = nil;self.view6 = nil;self.view7 = nil;self.view8 = nil;
	self.view9 = nil;self.view10 = nil;self.view11 = nil;self.view12 = nil;
	self.view13 = nil;self.view14 = nil;self.view15 = nil;self.view16 = nil;
	self.view17 = nil;self.view18 = nil;self.view19 = nil;


	self.sv = nil;
}


- (void)dealloc {
	//Outlets release
	[view1 release];[view2 release];[view3 release];[view4 release];
	[view5 release];[view6 release];[view7 release];[view8 release];
	[view9 release];[view10 release];[view11 release];[view12 release];
	[view13 release];[view14 release];[view15 release];[view16 release];
	[view17 release];[view18 release];[view19 release];
	
	
	[sv release];
	
    [super dealloc];
	
}


@end
