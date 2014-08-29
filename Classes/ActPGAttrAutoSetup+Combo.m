//
//  ActPGAttrAutoSetup+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGAttrAutoSetup+Combo.h"

//Additional
#import "ActPGAttrAutoSetup+Selector.h"

@implementation ActPGAttrAutoSetup(Combo)

-(void)setComboAuto{
	NSLog(@"ActPGAttrAutoSetup - SetComboAuto");
	
	//set Level
	NSString* action = NSStringFromSelector(@selector(setViewWithTag));
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target, action,

						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
}

@end
