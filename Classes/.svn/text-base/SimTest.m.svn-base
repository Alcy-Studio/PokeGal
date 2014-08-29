//
//  SimTest.m
//  PocketDraft
//
//  Created by westbugs on 10-08-28.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "SimTest.h"
#import "MBgm.h"

@implementation SimTest

@synthesize musicPlayer;

- (void)dummy{}
- (id)init{
	[super init];
	return self;
}

- (void)dealloc{
	[musicPlayer release];
	[super dealloc];
}


- (void)testMusic{
	
	self.musicPlayer = [[MBgm alloc]init];
	[self.musicPlayer loadSong:@"PocketGirlTheme" extension:@"caf"];
	[self.musicPlayer playOrPause];

	/*
	MBgm* mbgm = [[MBgm alloc]init];
	[mbgm loadSong:@"PocketGirlTheme" extension:@"caf"];
	self.musicPlayer = mbgm;
	
	[mbgm release];
	
	
	[NSTimer scheduledTimerWithTimeInterval:12.0f 
									 target:musicPlayer
								   selector: @selector(playOrPause) 
								   userInfo:nil
									repeats:NO];
	[self.musicPlayer playOrPause];
	[self.musicPlayer unloadSong];
	*/
	
}

@end
