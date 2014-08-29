//
//  ActPGMainMActButtonTUpInside+Combo.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMainMActButtonTUpInside+Combo.h"

//Additional
#import "ActPGMainMActButtonTUpInside+Selector.h"

#import "MGirl.h"

#import "ConstantsActionDeduction.h"

@implementation ActPGMainMActButtonTUpInside(Combo)

-(void)setComboActMovie{
	NSLog(@"setComboActMovie");
	
	combo = [[NSArray alloc]initWithObjects:nil];
}


-(void)setComboActSms{

	
	NSLog(@"setComboActSms");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	NSString* action1;
	NSString* action2;
	NSString* action3;

	NSDictionary* ta;
	id target = self;
	//Check atTotal
	if([MGirl currentAt] < kAtDeductSms){
		action1 = NSStringFromSelector(@selector(setAlertViewtoWarnActSms));
		ta = [[NSDictionary alloc]initWithObjectsAndKeys:target, action1,nil];
		
	}else {
		//Note: Deduct kAtDeductionSms
		//Add code to deduct kAtDeductionSms later
		//Play Se for action
		//action1 = NSStringFromSelector(@selector(deductAt));
		//action2 = NSStringFromSelector(@selector(switchViewToPGSmsWithTFlipFromR));
		action1 = NSStringFromSelector(@selector(setTmpAction));
		action2 = NSStringFromSelector(@selector(setRoleForConfirm));
		action3 = NSStringFromSelector(@selector(presentModalConfirm));
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
