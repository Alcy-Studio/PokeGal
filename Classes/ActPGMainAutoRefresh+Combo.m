//
//  ActPGMainAutoRefresh+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMainAutoRefresh+Combo.h"

//Additional
#import "ActPGMainAutoRefresh+Selector.h"

//Repo
#import "MGirl.h"
#import "MUi.h"

@implementation ActPGMainAutoRefresh(Combo)

-(void)setComboAuto{
	NSLog(@"ActPGMainAutoRefresh - SetComboAuto");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	NSString* action1;
	NSString* action2;

	NSDictionary* ta;
	id target = self;
	action1 = NSStringFromSelector(@selector(regenAt));
	action2 = NSStringFromSelector(@selector(setAtWithRefresh));

	ta = [[NSDictionary alloc]initWithObjectsAndKeys:
			target, action1,
			target, action2,

			nil];
		

	if (![[MUi getCurrentController] modalViewController]) 
		combo = [[NSDictionary alloc]initWithDictionary:ta];
	else 
		combo = [[NSDictionary alloc]initWithDictionary:nil];


	
	[ta release];
}

@end
