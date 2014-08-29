//
//  ActPGMSelectionAutoSetup+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMSelectionAutoSetup+Combo.h"

//Additional
#import "ActPGMSelectionAutoSetup+Selector.h"

@implementation ActPGMSelectionAutoSetup(Combo)

-(void)setComboAuto{
	NSLog(@"ActPGMSelectionAutoSetup - SetComboAuto");
	
	NSString* action1 = NSStringFromSelector(@selector(setViewWithTag));
	
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target, action1,
						
						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
}

@end
