//
//  ActPGWalkLActButtonTUpInside+Combo.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGWalkLActButtonTUpInside+Combo.h"

#import "MGirl.h"
#import "ConstantsActionDeduction.h"

@implementation ActPGWalkLActButtonTUpInside(Combo)

-(void)setComboLActButton{
	NSLog(@"setComboLActButton");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	
	NSString* action1;
	NSString* action2;
	NSString* action3;
	NSString* action4;
	
	NSDictionary* ta;
	id target = self;
	//Check atTotal
	if([MGirl currentAt] < kAtDeductTalk){
		action1 = NSStringFromSelector(@selector(setAlertViewtoWarnActTalk));
		ta = [[NSDictionary alloc]initWithObjectsAndKeys:target, action1,nil];
		
	}else {
		//Note: Deduct kAtDeductionSms
		//Add code to deduct kAtDeductionSms later
		//Play Se for action
		//action1 = NSStringFromSelector(@selector(deductAt));
		//action2 = NSStringFromSelector(@selector(switchViewToPGSmsWithTFlipFromR));
		action1 = NSStringFromSelector(@selector(setTmpAction));
		action2 = NSStringFromSelector(@selector(setTmpScript));
		action3 = NSStringFromSelector(@selector(setRoleForConfirm));
		action4 = NSStringFromSelector(@selector(presentModalConfirm));
		
		ta = [[NSDictionary alloc]initWithObjectsAndKeys:
			  target, action1,
			  target, action2,
			  target, action3,
			  target, action4,
			  
			  
			  nil];
	}
	
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	 
}

@end

