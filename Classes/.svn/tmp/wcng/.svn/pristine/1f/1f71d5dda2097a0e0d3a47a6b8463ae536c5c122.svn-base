//
//  ActPGEventAutoSetup+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGEventAutoSetup+Combo.h"

//Additional
#import "ActPGEventAutoSetup+Selector.h"

//Repo
#import "MUi.h"

@implementation ActPGEventAutoSetup(Combo)

-(void)setComboAuto{
	NSLog(@"ActPGEventAutoSetup - SetComboAuto");
	
	NSString* action1 = NSStringFromSelector(@selector(setCurrentScript));
	NSString* action2 = NSStringFromSelector(@selector(setGeography));

	NSString* action3 = NSStringFromSelector(@selector(setViewWithTag));
	NSString* action4 = NSStringFromSelector(@selector(initScript));

	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target, action1,
						target, action2,
						target, action3,
						target, action4,

						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
	
	
	
	
}

@end
