//
//  PGSMSViewController.m
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PGSMSViewController.h"

//Auto
#import "PGSMSViewController+Auto.h"
#import "PGSMSViewController+Ad.h"

#import <iAd/iAd.h>
static const float kDelay = 1.0f;

@implementation PGSMSViewController

@synthesize view1, view2, view3, view4, view5, view6; 
@synthesize lock;

@synthesize chatArray, currentChatInfo, tv;
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
	 /*
	 [NSTimer scheduledTimerWithTimeInterval:1 
	 target:self 
	 selector:@selector(autoRefresh)
	 userInfo:nil 
	 repeats:YES];
	 */
	[self autoRefresh];
	
	//[self performSelector:@selector(autoAd) withObject:nil afterDelay:kDelay];

	//[self createADBannerView];
	//[self layoutForCurrentOrientation:NO];
	
}

-(void)viewWillAppear:(BOOL)animated{
	[super viewWillAppear:animated];
	//[self layoutForCurrentOrientation:NO];
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
	self.view5 = nil;self.view6 = nil;
}


- (void)dealloc {
	//Outlets release
	[view1 release];[view2 release];[view3 release];[view4 release];
	[view5 release];[view6 release];
	
	[contentView release];
	//[banner release];
	//TableView
	[chatArray release];
	[currentChatInfo release];
	[tv release];
	
    [super dealloc];
	
}


@end
