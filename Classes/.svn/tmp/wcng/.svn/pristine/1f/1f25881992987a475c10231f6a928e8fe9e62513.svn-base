//
//  MSave.m
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MSave.h"

#import "PocketDraftAppDelegate.h"

@implementation MSave

+(void)saveMoc{
	NSManagedObjectContext *moc = [(PocketDraftAppDelegate*)[[UIApplication sharedApplication] delegate]managedObjectContext];
	NSError* error = nil;
	if (![moc save:&error])
		NSLog(@"saveMoc Failed.");
	
	
}

@end
