//
//  ActPGArrangeAutoSetup+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGArrangeAutoSetup+Selector.h"

//Additional
#import "PGArrangeViewController.h"

//Method
#import "MLoad.h"
#import "MUi.h"
#import "MTime.h"

//Constants
#import "ConstantsPGArrange.h"
#import "ConstantsGlossaryDatabase.h"
#import "ConstantsAuditorUserDefaults.h"
#import "ConstantsStringFormat.h"
#import "ConstantsActionAlert.h"
#import "ConstantsSceneCode.h"
#import "ConstantsTimeDiv.h"

static const unsigned int kUpBound = 14;
static const unsigned int kTimeDivToTagModifier = 4;

@interface ActPGArrangeAutoSetup()

-(void)setViewTopTitle;

-(void)setViewWithTag; //private

-(BOOL)checkEventsUpBoundLowBound:(NSArray*)array; //private
-(NSUInteger)getTagWithTimeDiv:(NSUInteger)z; //private

//reset & setup
-(NSUInteger)resetRole:(NSUInteger)td; //private

-(NSUInteger)setOccupied:(NSUInteger)td; //private

@end


@implementation ActPGArrangeAutoSetup(Selector)

-(void)setViewWithTag{
	[self setViewTopTitle];

	for (NSUInteger i = 1; i <= kArrangeViewTotal; i++) {
		if (i != kArrangeAtPointLabel && i != kArrangeWeekLabel && i != kArrangeViewHelp) {
			[MLoad setViewWithTag:i controller:self.resource];
		}
	}
	
	[(UILabel*)[[[MUi getCurrentController] view] viewWithTag:kArrangeAtPointLabel] setText:[MTime getCurrentTime]];
	[(UILabel*)[[[MUi getCurrentController] view] viewWithTag:kArrangeWeekLabel] 
	 setText:NSLocalizedString([MTime getCurrentWeekday],  @"Localized")];

}

-(void)setViewTopTitle{
	[(UILabel*)[[(PGArrangeViewController*)self.resource view] viewWithTag:kArrangeViewTitle] 
	 setText:NSLocalizedString(kArrangeTitleText,  @"Localized")];
	
}

-(void)cleanTimeDiv{
	NSDateFormatter* df = [[NSDateFormatter alloc] init];
	[df setDateFormat:kDateFormat4];
	NSUInteger n1 = [[df stringFromDate:[NSDate date]] intValue];
	[df release];
	NSUInteger n2;
	NSUInteger n3;

	for (NSUInteger i = kArrangeTime10To11Button; i <= kArrangeTime23To24Button; i++) {
		switch (i) {
			case kArrangeTime10To11Button:
				n2 = kTimeDiv1000Number;
				n3 = kTimeDiv1000;
				break;
			case kArrangeTime11To12Button:
				n2 = kTimeDiv1100Number;
				n3 = kTimeDiv1100;
				break;
			case kArrangeTime12To13Button:
				n2 = kTimeDiv1200Number;
				n3 = kTimeDiv1200;
				break;
			case kArrangeTime13To14Button:
				n2 = kTimeDiv1300Number;
				n3 = kTimeDiv1300;
				break;
			case kArrangeTime14To15Button:
				n2 = kTimeDiv1400Number;
				n3 = kTimeDiv1400;
				break;
			case kArrangeTime15To16Button:
				n2 = kTimeDiv1500Number;
				n3 = kTimeDiv1500;
				break;
			case kArrangeTime16To17Button:
				n2 = kTimeDiv1600Number;
				n3 = kTimeDiv1600;
				break;
			case kArrangeTime17To18Button:
				n2 = kTimeDiv1700Number;
				n3 = kTimeDiv1700;
				break;
			case kArrangeTime18To19Button:
				n2 = kTimeDiv1800Number;
				n3 = kTimeDiv1800;
				break;
			case kArrangeTime19To20Button:
				n2 = kTimeDiv1900Number;
				n3 = kTimeDiv1900;
				break;
			case kArrangeTime20To21Button:
				n2 = kTimeDiv2000Number;
				n3 = kTimeDiv2000;
				break;
			case kArrangeTime21To22Button:
				n2 = kTimeDiv2100Number;
				n3 = kTimeDiv2100;
				break;
			case kArrangeTime22To23Button:
				n2 = kTimeDiv2200Number;
				n3 = kTimeDiv2200;
				break;
			case kArrangeTime23To24Button:
				n2 = kTimeDiv2300Number;
				n3 = kTimeDiv2300;
				break;
			default:
				break;
		}
		if (n1 > n2) {
			[MUi modifyTag:i role:[self setOccupied:n3] scene:kSceneCodePGArrange];
			[MLoad setViewWithTag:i controller:self.resource];

		}
	
	}
	[self setViewWithTag];
}

-(void)setScheduleWithEvents{
	//NSLog(@"Event: %@",[[[MLoad getRecordsWithAttrName:kGlossaryStartDate attrValue:@"1/21/11" Entity:@"Event"] objectAtIndex:0] valueForKey:@"name"]);
	
	//reset view to OK
	for (NSUInteger i = 0; i < kUpBound; i++){
		[MUi modifyTag:(i+kTimeDivToTagModifier) role:[self resetRole:i] scene:kSceneCodePGArrange];
	}
	
	NSDateFormatter* df = [[NSDateFormatter alloc] init];
	[df setDateFormat:kDateFormat1];
	
	NSArray* array = [MLoad getRecordsWithAttrName:kGlossaryStartDate attrValue:[df stringFromDate:[NSDate date]] Entity:kGlossaryEvent];
	//NSLog(@"%@",[df stringFromDate:[NSDate date]]);
	
	[df release];
	
	//check upbound & lowbound if array count = 0 || > 14, withdraw
	if (![self checkEventsUpBoundLowBound:array])
		return;
	
	
	NSUInteger z;
	NSUInteger t;
	NSArray* record;
	for (NSUInteger i = 0; i < [array count]; i++) {
		record = [array objectAtIndex:i];
		z = [(NSString*)[record valueForKey:kGlossaryTimeDiv] intValue];
		t = [self getTagWithTimeDiv:z];
		
		//setup occupied
		[MUi modifyTag:t role:[self setOccupied:z] scene:kSceneCodePGArrange];
		
		//[MLoad setViewWithTag:t controller:self.resource];
		
	}
	
	/*
	 for all elements i 
	 
	 z = array objectAtIndex:i valueForKey:"zone"
	 t = getTagWithZone: z
	 
	 change role for tag t		
	 setViewWithTag:t 
	 
	 next
	 */
}

-(BOOL)checkEventsUpBoundLowBound:(NSArray*)array{
	if ([array count] < 1) 
		return NO;
	else if ([array count] > kUpBound) 
		return NO;
	return YES;
}

-(NSUInteger)getTagWithTimeDiv:(NSUInteger)z{
	z += kTimeDivToTagModifier;
	return z;
}

-(NSUInteger)resetRole:(NSUInteger)td{
	switch (td) {
		case 0:
			return kAudUDNumPGArrangeAvailable10To11;
			break;
		case 1:
			return kAudUDNumPGArrangeAvailable11To12;
			break;
		case 2:
			return kAudUDNumPGArrangeAvailable12To13;
			break;
		case 3:
			return kAudUDNumPGArrangeAvailable13To14;
			break;
		case 4:
			return kAudUDNumPGArrangeAvailable14To15;
			break;
		case 5:
			return kAudUDNumPGArrangeAvailable15To16;
			break;
		case 6:
			return kAudUDNumPGArrangeAvailable16To17;
			break;
		case 7:
			return kAudUDNumPGArrangeAvailable17To18;
			break;
		case 8:
			return kAudUDNumPGArrangeAvailable18To19;
			break;
		case 9:
			return kAudUDNumPGArrangeAvailable19To20;
			break;
		case 10:
			return kAudUDNumPGArrangeAvailable20To21;
			break;
		case 11:
			return kAudUDNumPGArrangeAvailable21To22;
			break;
		case 12:
			return kAudUDNumPGArrangeAvailable22To23;
			break;
		case 13:
			return kAudUDNumPGArrangeAvailable23To24;
			break;
			
		default:
			break;
	}
	NSLog(@"PGArrangeAutoSetup - failed to reset role");
	return -1;

}

//set occupied from timeDiv
-(NSUInteger)setOccupied:(NSUInteger)td{
	switch (td) {
		case 0:
			return kAudUDNumPGArrangeOccupied10To11;
			break;
		case 1:
			return kAudUDNumPGArrangeOccupied11To12;
			break;
		case 2:
			return kAudUDNumPGArrangeOccupied12To13;
			break;
		case 3:
			return kAudUDNumPGArrangeOccupied13To14;
			break;
		case 4:
			return kAudUDNumPGArrangeOccupied14To15;
			break;
		case 5:
			return kAudUDNumPGArrangeOccupied15To16;
			break;
		case 6:
			return kAudUDNumPGArrangeOccupied16To17;
			break;
		case 7:
			return kAudUDNumPGArrangeOccupied17To18;
			break;
		case 8:
			return kAudUDNumPGArrangeOccupied18To19;
			break;
		case 9:
			return kAudUDNumPGArrangeOccupied19To20;
			break;
		case 10:
			return kAudUDNumPGArrangeOccupied20To21;
			break;
		case 11:
			return kAudUDNumPGArrangeOccupied21To22;
			break;
		case 12:
			return kAudUDNumPGArrangeOccupied22To23;
			break;
		case 13:
			return kAudUDNumPGArrangeOccupied23To24;
			break;
			
		default:
			break;
	}
	NSLog(@"PGArrangeAutoSetup - failed to setOccupied");

	return -1;
}
/*
-(void)setupAlertView{
	NSInteger i = [(NSNumber*)[[NSUserDefaults standardUserDefaults] valueForKey:kTmpActionAlert] intValue];
	switch (i) {
		case kTmpActionAlertReset:
			return;
			break;
		case kAlertViewPGArrangeDisplayAtDeduction:
			[MUi alertViewPGArrangeDisplayAtDeduction];
			break;
			
		default:
			break;
	}
	[MUi modifyUserDefaultWithKey:kTmpActionAlert value:kTmpActionAlertReset];
}
*/
-(void)setupAlertView{
	[MUi alertViewPGArrangeDisplayAtDeduction];

}
@end
