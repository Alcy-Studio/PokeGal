//
//  ActPGPlaceRegionAButtonTUpInside+Selector.m
//  frdfrd
//
//  Created by westbugs on 11-01-24.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "ActPGPlaceRegionAButtonTUpInside+Selector.h"
#import "Event.h"

#import "MLoad.h"
#import "MSave.h"
#import "MUi.h"
#import "MEvent.h"
#import "MGirl.h"
#import "MTextOut.h"

#import "PocketDraftAppDelegate.h"

#import "ConstantsAuditorUserDefaults.h"
#import "ConstantsGlossaryDatabase.h"
#import "ConstantsGirlStatus.h"
#import "ConstantsPGArrange.h"
#import "ConstantsPGPlace.h"

#import "ConstantsRegions.h"
#import "ConstantsTimeDiv.h"
#import "ConstantsModelGeneral.h"
#import "ConstantsModelGraphic2D.h"
#import "ConstantsStringFormat.h"
//#import "ConstantsActionAlert.h"

static const int kNotifDelay = 10;
@implementation ActPGPlaceRegionAButtonTUpInside(Selector)

-(void)setupEventForSchedule{
	
	
	NSManagedObjectContext *moc = [(PocketDraftAppDelegate*)[[UIApplication sharedApplication] delegate]managedObjectContext];

	NSDateFormatter* df = [[NSDateFormatter alloc] init];
	[df setDateFormat:kDateFormat1];
	
	NSUInteger s0 = [(NSNumber*) [[NSUserDefaults standardUserDefaults] valueForKey:kTmpArrange] intValue];
	NSString* s1 = [df stringFromDate:[NSDate date]];
	[df release];

	//startDate & endDate
	NSString* s2 = [MEvent setupStartDate:s0];
	NSString* s3 = [MEvent setupEndDate:s0];
	
	if (!s2 || !s3) {
		NSLog(@"setupStartDate o setupEndDate Failed");
		return;
	}
	//checkEventExist
	if ([MEvent checkEventExist:[NSString stringWithFormat:@"%@ %@",s1,s2]])
		return;
	
		
	
	
	
	NSArray* array = [MLoad getRecordsWithEntity:kGlossaryEvent];
	Event *event = [NSEntityDescription
									insertNewObjectForEntityForName:kGlossaryEvent
									inManagedObjectContext:moc];
	
	event.startDate = [NSString stringWithFormat:@"%@ %@",s1,s2];
	event.endDate = [NSString stringWithFormat:@"%@ %@",s1,s3];

	
	event.sid = [NSNumber numberWithInt:[array count]];
	
	//Edit desc, name, region
	event.desc = kRegionDescA;
	event.name = kRegionNameA;
	event.region = kRegionA;

	//Edit role, color, image
	event.role = [NSNumber numberWithInt:kAudUDNumPGPlaceRegionA];
	event.color = kRegionColorA;
	event.image = [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGSchedule] 
									   Attr2:[NSNumber numberWithInt:kModelG2DInfoUi] 
									   Attr3:[NSNumber numberWithInt:kModelG2DKindUiScheRegionA] 
									  Entity:kGlossaryGraphic2D
										 Key:kGlossaryFileName];
	
	
	//Edit allDay, person, preset & timeDiv
	event.allDay = NO;
	event.person = kGirlStatusName1;
	event.preset = NO;
	event.timeDiv = [[NSUserDefaults standardUserDefaults] valueForKey:kTmpArrange];

		
	//Set Badge
	[[UIApplication sharedApplication] setApplicationIconBadgeNumber: 
		[[UIApplication sharedApplication] applicationIconBadgeNumber] + 1];

	

	//Set Notification
	UILocalNotification* ln = [[[UILocalNotification alloc] init] autorelease];
	
	NSDateComponents *dateComponents = [[NSCalendar currentCalendar] components:( NSYearCalendarUnit | NSMonthCalendarUnit |  NSDayCalendarUnit )
												   fromDate:[NSDate date]];
   // NSDateComponents *timeComponents = [calendar components:( NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit )
//												   fromDate:pickerDate];
	
    // Set up the fire time
    NSDateComponents *dateComps = [[[NSDateComponents alloc] init] autorelease];
	
	[dateComps setDay:[dateComponents day]];
    [dateComps setMonth:[dateComponents month]];
    [dateComps setYear:[dateComponents year]];
    [dateComps setHour:[[NSUserDefaults standardUserDefaults] integerForKey:kTmpPlace]];
	[dateComps setMinute:0];
    [dateComps setSecond:0];

	NSDate *date = [[NSCalendar currentCalendar] dateFromComponents:dateComps];

	//NSDateFormatter* dfx = [[[NSDateFormatter alloc] init]autorelease];
	NSLog(@"Local: %@", [date description]);
	
	[ln setFireDate:date];
	//[ln setAlertAction:@"Test"];
	[ln setAlertBody:NSLocalizedString([MTextOut randomDateSms], @"Localized")];
	[ln setSoundName:UILocalNotificationDefaultSoundName];

	[[UIApplication sharedApplication] scheduleLocalNotification:ln];
	
	
	//reset Arrange
	[MUi modifyUserDefaultWithKey:kTmpArrange value:kTimeDivReset];

	//NSLog(@"sid: %@ desc: %@ name: %@ region: %@ role: %@ image: %@ person: %@ timeDiv: %@ startDate: %@ endDate: %@",
//		    event.sid,
//		    event.desc,
//		    event.name,
//		    event.region,
//			event.role,
//		    event.image,
//		    event.person,
//		    event.timeDiv,
//		    event.startDate,
//		    event.endDate);
	
}

/*
-(void)deductAt{
	[MGirl deductAtCall];
	
}
*/

-(void)saveMocForEvent{
	[MSave saveMoc];
}

/*
-(void)setTmpAction{
	[MUi modifyUserDefaultWithKey:kTmpActionAlert value:kAlertViewPGPlaceDisplayAtDeduction];

}
*/

-(void)switchViewToPGMainWithTFlipFromR{
	if (![MUi switchViewWithController:@"PGMainSVController" transition:UIViewAnimationTransitionFlipFromRight])
		NSLog(@"ActPGPlaceRegionAButtonTUpInside - switchViewWithController: failed");	
}

-(void)switchViewToPGMainWithTFlipFromL{
	if (![MUi switchViewWithController:@"PGMainSVController" transition:UIViewAnimationTransitionFlipFromLeft])
		NSLog(@"ActPGPlaceRegionAButtonTUpInside - switchViewWithController: failed");	
}



@end
