//
//  ActPGMConfirmAutoSetup+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMConfirmAutoSetup+Combo.h"

//Additional
#import "ActPGMConfirmAutoSetup+Selector.h"

@implementation ActPGMConfirmAutoSetup(Combo)

-(void)setComboAuto{
	NSLog(@"ActPGMConfirmAutoSetup - SetComboAuto");
	
	//NSString* action1 = NSStringFromSelector(@selector(setRole));

	NSString* action2 = NSStringFromSelector(@selector(setViewWithTag));

	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						//target, action1,
						target, action2,

						
						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
}

@end
