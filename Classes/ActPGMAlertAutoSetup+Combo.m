//
//  ActPGMAlertAutoSetup+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMAlertAutoSetup+Combo.h"

//Additional
#import "ActPGMAlertAutoSetup+Selector.h"

@implementation ActPGMAlertAutoSetup(Combo)

-(void)setComboAuto{
	NSLog(@"ActPGMAlertAutoSetup - SetComboAuto");
	
	NSString* action1 = NSStringFromSelector(@selector(setViewWithTag));
	
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target, action1,
						
						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
}

@end
