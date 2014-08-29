//
//  MStore.m
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MStore.h"
#import "MGame.h"

#import "PocketDraftAppDelegate.h"

@implementation MStore

+(void)reset{

	//PocketDraftAppDelegate* pdad = (PocketDraftAppDelegate*)[[UIApplication sharedApplication] delegate];
/*
	NSURL *storeURL = [NSURL fileURLWithPath: [[pdad applicationDocumentsDirectory] stringByAppendingPathComponent: @"PocketDraft.sqlite"]];
	//NSLog(@"%@", storeURL);	
	
	NSError *error = nil;
	
	NSFileManager* fm = [[NSFileManager alloc] init];
	
	//Store not exist
	NSURL *storeURLBackup = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"PocketDraft" ofType:@"sqlite"]];
	if (![fm copyItemAtURL:storeURLBackup toURL:storeURL error:&error]) {
		[fm release];
		NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
		abort();
	}
	[fm release];
*/	
	
	//Remove current notification
	[[UIApplication sharedApplication] cancelAllLocalNotifications];
	//reset Badge
	[[UIApplication sharedApplication] setApplicationIconBadgeNumber:0];
	[(PocketDraftAppDelegate*)[[UIApplication sharedApplication] delegate] setPersistentStoreCoordinator];
	
	//reset Game Center Achievement
	[MGame resetAchievements];
}

@end