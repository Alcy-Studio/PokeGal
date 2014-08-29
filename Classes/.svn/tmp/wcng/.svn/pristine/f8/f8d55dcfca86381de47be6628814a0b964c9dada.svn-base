//
//  ActPGTalkAutoSetup+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTalkAutoSetup+Combo.h"

//Additional
#import "ActPGTalkAutoSetup+Selector.h"

@implementation ActPGTalkAutoSetup(Combo)

-(void)setComboAuto{
	NSLog(@"ActPGTalkAutoSetup - SetComboAuto");
	
	NSString* action = NSStringFromSelector(@selector(setViewWithTag));
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:target, action,nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
}

@end
