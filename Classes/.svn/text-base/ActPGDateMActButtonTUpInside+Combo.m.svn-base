//
//  ActPGDateMActButtonTUpInside+Combo.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGDateMActButtonTUpInside+Combo.h"

#import "MGirl.h"
#import "ConstantsActionDeduction.h"

@implementation ActPGDateMActButtonTUpInside(Combo)

-(void)setComboMActButton{
	NSLog(@"setComboMActButton");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	//Romance
	//#modify attributes +3 +2 +1
	//#modal event (Random message <3>)
	//back to date 
			
		
	
	NSString* action1;
	NSString* action2;
	NSString* action3;
	NSString* action4;
	
	NSDictionary* ta;
	id target = self;
	//Check atTotal
	if([MGirl currentAt] < kAtDeductRomance){
		action1 = NSStringFromSelector(@selector(setAlertViewtoWarnActRomance));
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
