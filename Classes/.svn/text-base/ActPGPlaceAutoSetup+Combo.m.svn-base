//
//  ActPGPlaceAutoSetup+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGPlaceAutoSetup+Combo.h"

//Additional
#import "ActPGPlaceAutoSetup+Selector.h"

@implementation ActPGPlaceAutoSetup(Combo)

-(void)setComboAuto{
	NSLog(@"ActPGPlaceAutoSetup - SetComboAuto");
	
	NSString* action1 = NSStringFromSelector(@selector(setViewWithTag));
	NSString* action2 = NSStringFromSelector(@selector(setViewEnabled));

	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target, action1,
						target, action2,

						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
}

@end
