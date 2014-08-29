//
//  ActPGMainRActButtonTUpInside+Combo.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMainRActButtonTUpInside+Combo.h"

//Additional
#import "ActPGMainRActButtonTUpInside+Selector.h"

//Method
#import "MGirl.h"
#import "ConstantsActionDeduction.h"

@implementation ActPGMainRActButtonTUpInside(Combo)

-(void)setComboActMusic{
	NSLog(@"setComboActMusic");

	combo = [[NSArray alloc]initWithObjects:nil];

}

-(void)setComboActMove{
	
	NSLog(@"setComboActMove");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	NSString* action1;
	NSString* action2;
	NSString* action3;

	NSDictionary* ta;
	id target = self;
	//Check atTotal
	if([MGirl currentAt] < kAtDeductMove){
		action1 = NSStringFromSelector(@selector(setAlertViewtoWarnActMove));
		ta = [[NSDictionary alloc]initWithObjectsAndKeys:target, action1,nil];

	}else {
		//Note: Deduct kAtDeductionSms
		//Add code to deduct kAtDeductionSms later
		//Play Se for action
		//action1 = NSStringFromSelector(@selector(deductAt));
		//action2 = NSStringFromSelector(@selector(switchViewToPGMapWithTFlipFromR));
		action1 = NSStringFromSelector(@selector(setTmpAction));
		action2 = NSStringFromSelector(@selector(setRoleForConfirm));
		action3 = NSStringFromSelector(@selector(presentModalConfirm));
		ta = [[NSDictionary alloc]initWithObjectsAndKeys:
			  target, action1,
			  target, action2,
			  target, action3,

			  
			  nil];
	}
	
	//NSString* action = NSStringFromSelector(@selector(switchViewToPGSmsWithTFlipFromR));
	
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
}

@end
