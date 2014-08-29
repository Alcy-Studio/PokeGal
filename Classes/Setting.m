//
//  Setting.m
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Setting.h"
#import "Setting+InGame.h"
#import "Setting+System.h"
#import "Setting+Application.h"


@implementation Setting

#pragma mark declared properties
//In-Game - Scalar
@synthesize actionPoint, sportVal, movieVal, musicVal, girlCostume, relationshipVal;
//In-Game - Object
@synthesize achievements;

//System
@synthesize seVolume, voiceVolume, bgmVolume;

//Application - Scalar
@synthesize horoscope, totalAchi, totalAchiPages, season, dayNight, currentMinute, currentHour, currentDay, currentWeek, girlMood;

//Application - Object
@synthesize girlName, birthDate, birthday, currentDate;

#pragma mark initialization
- (id) init{
	[super init];
	NSLog(@"Setting init");
	
	[self loadAppSetting];
	[self loadUserDefaultsSetting];
	[self loadInGameSetting];

	/*
	//Set Operation Queue
	NSOperationQueue* oq = [[NSOperationQueue alloc] init];

	NSInvocationOperation* opLoadAppSetting = [[[NSInvocationOperation alloc] initWithTarget:self
									selector:@selector(loadAppSetting) object:nil] autorelease];
	NSInvocationOperation* opLoadUserDefault = [[[NSInvocationOperation alloc] initWithTarget:self
									selector:@selector(loadUserDefaultsSetting) object:nil] autorelease];
	NSInvocationOperation* opLoadInGameSetting = [[[NSInvocationOperation alloc] initWithTarget:self
									selector:@selector(loadInGameSetting) object:nil] autorelease];
	[oq addOperation:opLoadInGameSetting];
	[oq addOperation:opLoadUserDefault];	
	[oq addOperation:opLoadAppSetting];
	
	[oq autorelease];
	*/
	return self;
}

#pragma mark dealloc
- (void)dealloc{
	//System
	[achievements release];
	
	//Application
	[girlName release];
	[birthDate release];
	[birthday release];
	[currentDate release];
	[super dealloc];
}
@end

