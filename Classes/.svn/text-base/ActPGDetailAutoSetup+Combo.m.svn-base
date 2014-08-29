//
//  ActPGDetailAutoSetup+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGDetailAutoSetup+Combo.h"

//Additional
#import "ActPGDetailAutoSetup+Selector.h"

@implementation ActPGDetailAutoSetup(Combo)

-(void)setComboAuto{
	NSLog(@"ActPGDetailAutoSetup - SetComboAuto");
	
	NSString* action = NSStringFromSelector(@selector(setViewWithTag));
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:target, action,nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
}

@end
