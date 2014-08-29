//
//  ActPGRomanceAutoSetup+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGRomanceAutoSetup+Combo.h"

//Additional
#import "ActPGRomanceAutoSetup+Selector.h"

@implementation ActPGRomanceAutoSetup(Combo)

-(void)setComboAuto{
	NSLog(@"ActPGRomanceAutoSetup - SetComboAuto");
	
	NSString* action = NSStringFromSelector(@selector(setViewWithTag));
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:target, action,nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
}

@end
