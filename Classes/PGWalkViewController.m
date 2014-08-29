//
//  PGWalkViewController.m
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PGWalkViewController.h"

//Auto
#import "PGWalkViewController+Auto.h"
#import "PGWalkViewController+Ad.h"

static const float kDelay = 1.0f;

@implementation PGWalkViewController

@synthesize view1, view2, view3, view4, view5, view6, 
view7, view8, view9, view10, view11, view12,
view13; 
@synthesize lock;
//@synthesize timer;

@synthesize contentView;


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
	
	//Don't load autoSetup in this case, manual load autoSetup after svController fully loaded
	[self autoSetup];
	[self autoRefresh];
	/*
	 [NSTimer scheduledTimerWithTimeInterval:1 
	 target:self 
	 selector:@selector(autoRefresh)
	 userInfo:nil 
	 repeats:YES];
	 */
	
	//[self performSelector:@selector(autoAd) withObject:nil afterDelay:kDelay];

	//[self createADBannerView];
	//[self layoutForCurrentOrientation:NO];
	
}

-(void)viewWillAppear:(BOOL)animated{
	[super viewWillAppear:animated];
	//[self layoutForCurrentOrientation:NO];
}

/*
 // Override to allow orientations other than the default portrait orientation.
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
 // Return YES for supported orientations
 return (interfaceOrientation == UIInterfaceOrientationPortrait);
 }
 */

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the Walk view.
    // e.g. self.myOutlet = nil;
	self.view1 = nil;self.view2 = nil;self.view3 = nil;self.view4 = nil;
	self.view5 = nil;self.view6 = nil;self.view7 = nil;self.view8 = nil;
	self.view9 = nil;self.view10 = nil;self.view11 = nil;self.view12 = nil;
	self.view13 = nil;
}


- (void)dealloc {
	//Outlets release
	[view1 release];[view2 release];[view3 release];[view4 release];
	[view5 release];[view6 release];[view7 release];[view8 release];
	[view9 release];[view10 release];[view11 release];[view12 release];
	[view13 release];
	
	[contentView release];
	//[banner release];
    [super dealloc];
	
}


@end