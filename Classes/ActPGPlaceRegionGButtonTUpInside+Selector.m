//
//  ActPGPlaceRegionGButtonTUpInside+Selector.m
//  frdfrd
//
//  Created by westbugs on 11-01-24.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "ActPGPlaceRegionGButtonTUpInside+Selector.h"
#import "Event.h"

#import "MLoad.h"
#import "MSave.h"
#import "MUi.h"
#import "MEvent.h"

#import "PocketDraftAppDelegate.h"

#import "ConstantsAuditorUserDefaults.h"
#import "ConstantsGlossaryDatabase.h"
#import "ConstantsGirlStatus.h"
#import "ConstantsPGArrange.h"
#import "ConstantsRegions.h"
#import "ConstantsTimeDiv.h"
#import "ConstantsModelGeneral.h"
#import "ConstantsModelGraphic2D.h"
#import "ConstantsStringFormat.h"

@implementation ActPGPlaceRegionGButtonTUpInside(Selector)

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
	event.desc = kRegionDescG;
	event.name = kRegionNameG;
	event.region = kRegionG;
	
	//Edit role, color, image
	event.role = [NSNumber numberWithInt:kAudUDNumPGPlaceRegionG];
	event.color = kRegionColorG;
	event.image = [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGSchedule] 
									   Attr2:[NSNumber numberWithInt:kModelG2DInfoUi] 
									   Attr3:[NSNumber numberWithInt:kModelG2DKindUiScheRegionG] 
									  Entity:kGlossaryGraphic2D
										 Key:kGlossaryFileName];
	
	
	//Edit allDay, person, preset & timeDiv
	event.allDay = NO;
	event.person = kGirlStatusName1;
	event.preset = NO;
	event.timeDiv = [[NSUserDefaults standardUserDefaults] valueForKey:kTmpArrange];
	
	
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



-(void)saveMocForEvent{
	[MSave saveMoc];
}


-(void)switchViewToPGMainWithTFlipFromR{
	if (![MUi switchViewWithController:@"PGMainSVController" transition:UIViewAnimationTransitionFlipFromRight])
		NSLog(@"ActPGPlaceRegionAButtonTUpInside - switchViewWithController: failed");	
}

-(void)switchViewToPGMainWithTFlipFromL{
	if (![MUi switchViewWithController:@"PGMainSVController" transition:UIViewAnimationTransitionFlipFromLeft])
		NSLog(@"ActPGPlaceRegionGButtonTUpInside - switchViewWithController: failed");	
}



@end
