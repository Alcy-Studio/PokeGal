//
//  MEvent.m
//  frdfrd
//
//  Created by westbugs on 11-01-24.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "MEvent.h"

#import "MLoad.h"

#import "Event.h"

#import "PocketDraftAppDelegate.h"

#import "ConstantsGlossaryDatabase.h"
#import "ConstantsTimeDiv.h"
#import "ConstantsStringFormat.h"
#import "ConstantsTmpDate.h"

@implementation MEvent

+(void)decrementBadge{
	//decrement date badge
	if ([UIApplication sharedApplication].applicationIconBadgeNumber > 0){
		[UIApplication sharedApplication].applicationIconBadgeNumber -= 1;
		
	}
	
}


//reset event & decrement badge number
+(void)resetEvent{
	NSDateFormatter* df = [[NSDateFormatter alloc] init];
	[df setDateFormat:kDateFormat1];
	
	//Get Today's Date
	NSString* s = [df stringFromDate:[NSDate date]];
	[df release];
	
	//Fetch Any Objects not contain startDate(not today)
	NSArray* array = [MLoad getRecordsWithOutAttrName:kGlossaryStartDate attrValue:s Entity:kGlossaryEvent];
	NSManagedObject *eventToDelete;
	NSManagedObjectContext *moc = [(PocketDraftAppDelegate*)[[UIApplication sharedApplication] delegate]managedObjectContext];

	if ([array count] == 0) 
		return;
	
	//No of Missing Date
	NSInteger m = 0;
	//Delete Object
	for (NSInteger i = 0; i < [array count]; i++) {
		eventToDelete = [array objectAtIndex:i];
		NSLog(@"Event Exist, array desc:%@",[eventToDelete valueForKey:kGlossaryStartDate]);
		//check if the event is default(preset)
		if (![(Event*)[array objectAtIndex:i] preset]){
			
			//decrement badge number & record the number of missing date
			[self decrementBadge];
			m++;
			
			[moc deleteObject:[array objectAtIndex:i]];
			// Commit the change.
			NSError *error = nil;
			if (![moc save:&error]) {
				NSLog(@"Failed to delete event", [error description]);
			}
		}
	}	
	
	//set Missing Date
	NSLog(@"Test Missing Date: %i", m);

	[[NSUserDefaults standardUserDefaults] setInteger:m forKey:kTmpMissingDate];
}

+(void)deleteEvent:(NSString*)s{

	NSLog(@"deleteEvent Date: %@", s);
	//Fetch the Object to delete
	NSArray* array = [MLoad getRecordsWithAttrName:kGlossaryStartDate attrValue:s Entity:kGlossaryEvent];
	Event *eventToDelete;
	NSManagedObjectContext *moc = [(PocketDraftAppDelegate*)[[UIApplication sharedApplication] delegate]managedObjectContext];
	
	if ([array count] == 0) 
		return;
	
	//Delete Object
	for (NSInteger i = 0; i < [array count]; i++) {
		eventToDelete = [array objectAtIndex:i];
		NSLog(@"Event Exist, array desc:%@",[eventToDelete name]);
		//check if the event is default(preset)
		if (![[array objectAtIndex:i] preset]){
			[moc deleteObject:[array objectAtIndex:i]];
			// Commit the change.
			NSError *error = nil;
			if (![moc save:&error]) {
				NSLog(@"Failed to delete event", [error description]);
			}
		}
	}
}
+(BOOL)checkEventExist:(NSString*)s{
	NSArray* array = [MLoad getRecordsWithAttrName:kGlossaryStartDate attrValue:s Entity:kGlossaryEvent];

	
	if ([array count] != 0) 
		return YES;
	//NSLog(@"Event unExist, array desc:%@",[array description]);
	return NO;
}

//check date event exist in certain region
+(BOOL)checkEventExist:(NSString*)s Region:(NSString*)r{
	NSArray* array = [MLoad getRecordsWithAttrName:kGlossaryStartDate attrValue:s Entity:kGlossaryEvent];
	
	
	if ([array count] == 0) 
		return NO;
	if ([(Event*)[array objectAtIndex:0] preset] ) //Check for official event which unrelated to dating
		return NO;
	if(![[(Event*)[array objectAtIndex:0] region] isEqualToString:r])
		return NO;
	
	//NSLog(@"Array: %@", [[array objectAtIndex:0] description]);
	return YES;
}

//check preset event exist in certain region
+(BOOL)checkPresetEventExistRegion:(NSString*)r{
	
	//Check with weekday and TimeDiv

	NSDateFormatter* df1 = [[NSDateFormatter alloc] init];
	NSDateFormatter* df2 = [[NSDateFormatter alloc] init];

	[df1 setDateFormat:kDateFormat5]; //start on Sunday
	[df2 setDateFormat:kDateFormat2]; //HH:00 a

	NSString* s1 = [df1 stringFromDate:[NSDate date]];
	NSString* s2 = [df2 stringFromDate:[NSDate date]];

	[df1 release];
	[df2 release];

	//NSLog(@"Weekday:%@ TimeCell:%@", s1, s2);
	NSArray* array = [MLoad getRecordsWithAttrName1:kGlossaryWeekDay attrValue1:s1
										   AttrName2:kGlossaryTimeCell attrValue2:s2 
											Entity:kGlossaryEvent];

	

	//NSArray* array = [MLoad getRecordsWithAttrName:kGlossaryStartDate attrValue:s Entity:kGlossaryEvent];
	
	
	if ([array count] == 0) 
		return NO;
	if (![(Event*)[array objectAtIndex:0] preset] ) //Check for official event which unrelated to dating
		return NO;
	if(![[(Event*)[array objectAtIndex:0] region] isEqualToString:r])
		return NO;
	return YES;
}

+(Event*)getPresetEventWithRegion:(NSString*)r timeCell:(NSString*)t weekday:(NSString*)w{
	
	NSArray* array = [MLoad getRecordsWithAttrName1:kGlossaryEventRegion attrValue1:r 
									 AttrName2:kGlossaryTimeCell attrValue2:t 
									 AttrName3:kGlossaryWeekDay attrValue3:w 
										Entity:kGlossaryEvent];
	if ([array count] == 0)
		return nil;
	if (![(Event*)[array objectAtIndex:0] preset])
		return nil;
	return (Event*)[array objectAtIndex:0];
}

+(NSString*)setupStartDate:(NSUInteger)td{
	switch (td) {
		case kTimeDiv1000:
			return kTimeDiv1000Name;
			break;
		case kTimeDiv1100:
			return kTimeDiv1100Name;
			break;
		case kTimeDiv1200:
			return kTimeDiv1200Name;
			break;
		case kTimeDiv1300:
			return kTimeDiv1300Name;
			break;
		case kTimeDiv1400:
			return kTimeDiv1400Name;
			break;
		case kTimeDiv1500:
			return kTimeDiv1500Name;
			break;
		case kTimeDiv1600:
			return kTimeDiv1600Name;
			break;
		case kTimeDiv1700:
			return kTimeDiv1700Name;
			break;
		case kTimeDiv1800:
			return kTimeDiv1800Name;
			break;
		case kTimeDiv1900:
			return kTimeDiv1900Name;
			break;
		case kTimeDiv2000:
			return kTimeDiv2000Name;
			break;
		case kTimeDiv2100:
			return kTimeDiv2100Name;
			break;
		case kTimeDiv2200:
			return kTimeDiv2200Name;
			break;
		case kTimeDiv2300:
			return kTimeDiv2300Name;
			break;
		default:
			break;
	}
	return nil;
	
}

+(NSString*)setupEndDate:(NSUInteger)td{
	switch (td) {
		case kTimeDiv1000:
			return kTimeDiv1059Name;
			break;
		case kTimeDiv1100:
			return kTimeDiv1159Name;
			break;
		case kTimeDiv1200:
			return kTimeDiv1259Name;
			break;
		case kTimeDiv1300:
			return kTimeDiv1359Name;
			break;
		case kTimeDiv1400:
			return kTimeDiv1459Name;
			break;
		case kTimeDiv1500:
			return kTimeDiv1559Name;
			break;
		case kTimeDiv1600:
			return kTimeDiv1659Name;
			break;
		case kTimeDiv1700:
			return kTimeDiv1759Name;
			break;
		case kTimeDiv1800:
			return kTimeDiv1859Name;
			break;
		case kTimeDiv1900:
			return kTimeDiv1959Name;
			break;
		case kTimeDiv2000:
			return kTimeDiv2059Name;
			break;
		case kTimeDiv2100:
			return kTimeDiv2159Name;
			break;
		case kTimeDiv2200:
			return kTimeDiv2259Name;
			break;
		case kTimeDiv2300:
			return kTimeDiv2359Name;
			break;
		default:
			break;
	}
	return nil;
}

@end
