//
//  PGNavController.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "PGNavController.h"

#import "ConstantsModelGeneral.h"
#import "ConstantsModelBgm.h"
#import "ConstantsGlossaryDatabase.h"

#import "ConstantsPGTitleEx.h"

//Repo
#import "MLoad.h"

static const float kNavInitDelay = 0.5f;

@interface PGNavController()

- (void)initMusic;

@end

@implementation PGNavController

@synthesize bgm;
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
	
	//init music
	[self performSelector:@selector(initMusic) withObject:nil 
			   afterDelay:[[NSNumber numberWithFloat:kNavInitDelay] doubleValue]];
	
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
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
	[self.bgm unloadSong];
	self.bgm = nil;
}

- (void)initMusic{
	self.bgm = [[[MBgm alloc]init] autorelease];
	//NSString* s1 = [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelBgmKindThemeSong1] 
//										Attr2:[NSNumber numberWithInt:kModelBgmInfoAll] 
//										Attr3:[NSNumber numberWithInt:kModelGeneralScenePGAll]  
//									   Entity:kGlossaryBgm 
//										  Key:kGlossaryFileName];
//	
//	NSString* s2 = [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelBgmKindThemeSong1]  
//										Attr2:[NSNumber numberWithInt:kModelBgmInfoAll]  
//										Attr3:[NSNumber numberWithInt:kModelGeneralScenePGAll]  
//									   Entity:kGlossaryBgm 
//										  Key:kGlossaryExtension];
	
	
	
	[self.bgm loadSong:kPGTitleThemeSong extension:kPGTitleSongType];
	[self.bgm playOrPause];

}

- (void)dealloc {
	[bgm release];
    [super dealloc];
}


@end
