//
//  ActPGDateAutoSetup+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGDateAutoSetup+Combo.h"

//Additional
#import "ActPGDateAutoSetup+Selector.h"

@implementation ActPGDateAutoSetup(Combo)

-(void)setComboAuto{

	NSLog(@"ActPGDateAutoSetup - SetComboAuto");
	
	//set Costume, hairstyle, facial
	NSString* action1 = NSStringFromSelector(@selector(setTemporaryCostume));
	NSString* action2 = NSStringFromSelector(@selector(setGeographyAndMood));

	NSString* action3 = NSStringFromSelector(@selector(setViewWithTag));
	NSString* action4 = NSStringFromSelector(@selector(updateSchedule));

	NSString* action5 = NSStringFromSelector(@selector(setOutfit));
	NSString* action6;
	
	NSDictionary* ta;
	
	id target = self;
	

	//Check Date event
	if ([self setCurrentScript]) {
		action6 = NSStringFromSelector(@selector(presentDelayModal));
		
		
	} else {
		action6 = NSStringFromSelector(@selector(updateAndSwitchToPGWalk));

	}
	
	ta = [[NSDictionary alloc]initWithObjectsAndKeys:
		  target, action1,
		  target, action2,
		  target, action3,
		  target, action4,
		  target, action5,
		  target, action6,

		  nil];
	
	
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
}

@end
