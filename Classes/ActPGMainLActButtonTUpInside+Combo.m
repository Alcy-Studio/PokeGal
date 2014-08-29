//
//  ActPGMainLActButtonTUpInside+Combo.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMainLActButtonTUpInside+Combo.h"

//Additional
#import "ActPGMainLActButtonTUpInside+Selector.h"

#import "MGirl.h"

#import "ConstantsActionDeduction.h"

@implementation ActPGMainLActButtonTUpInside(Combo)

-(void)setComboActSport{
	NSLog(@"setComboActSport");

	combo = [[NSArray alloc]initWithObjects:nil];
}

-(void)setComboActCall{
	NSLog(@"setComboActCall");
	
	//NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//	[dateFormatter setTimeStyle:NSDateFormatterShortStyle];
//	[dateFormatter setDateStyle:NSDateFormatterShortStyle];
//	
//	NSLocale *usLocale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
//	[dateFormatter setLocale:usLocale];

	
	//NSDate *date = [NSDate dateWithTimeIntervalSinceReferenceDate:118800];
	//NSDate *date = [NSDate date];
	
	
	//NSDate *date = [dateFormatter dateFromString:@"1/17/11 10:00 PM"];

	//NSLog(@"Date for locale %@: %@",
//		  [[dateFormatter locale] localeIdentifier], [dateFormatter stringFromDate:date]);
	
		
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	NSString* action1;
	NSString* action2;
	NSString* action3;

	NSDictionary* ta;
	id target = self;
	if([MGirl currentAt] < kAtDeductCall){
		//if no action point && no available timeDiv (don't forget to add!)
		action1 = NSStringFromSelector(@selector(setAlertViewtoWarnActCall));
		ta = [[NSDictionary alloc]initWithObjectsAndKeys:target, action1,nil];
	}else {
		//Note: Deduct kAtDeductionSms
		//Add code to deduct kAtDeductionSms later
		//Play Se for action
		//action1 = NSStringFromSelector(@selector(deductAt));
		action1 = NSStringFromSelector(@selector(setTmpAction));
		action2 = NSStringFromSelector(@selector(setRoleForConfirm));

		action3 = NSStringFromSelector(@selector(presentModalConfirm));
		//action3 = NSStringFromSelector(@selector(switchViewToPGArrangeWithTFlipFromR));
		ta = [[NSDictionary alloc]initWithObjectsAndKeys:
			  target, action1,
			  target, action2,
			  target, action3,

			  nil];
	}
		
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
}

@end
