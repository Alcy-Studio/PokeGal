//
//  ActPGWalkAutoSetup+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGWalkAutoSetup+Combo.h"

//Additional
#import "ActPGWalkAutoSetup+Selector.h"

//Method
#import "MEvent.h"

//Constants
#import "ConstantsTmpRegion.h"

@implementation ActPGWalkAutoSetup(Combo)

-(void)setComboAuto{
	NSLog(@"ActPGWalkAutoSetup - SetComboAuto");
	
	NSString* action1 = NSStringFromSelector(@selector(setGeography));

	NSString* action2 = NSStringFromSelector(@selector(setViewWithTag));
	NSString* action3;
	NSDictionary* ta;
	
	id target = self;
		
	//Check Preset event
	if ([self setCurrentScript]) {
		action3 = NSStringFromSelector(@selector(presentDelayModal));
		
		ta = [[NSDictionary alloc]initWithObjectsAndKeys:
			  target, action1,
			  target, action2,
			  target, action3,

			  nil];
	} else {
		ta = [[NSDictionary alloc]initWithObjectsAndKeys:
			  target, action1,
			  target, action2,

			  nil];
	}

	
	
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
}

@end
