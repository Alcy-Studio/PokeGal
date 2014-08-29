//
//  ActPGMapAutoRefresh+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMapAutoRefresh+Combo.h"

//Additional
#import "ActPGMapAutoRefresh+Selector.h"

@implementation ActPGMapAutoRefresh(Combo)

-(void)setComboAuto{
	NSLog(@"ActPGMapAutoRefresh - SetComboAuto");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	NSString* action;
	
	NSDictionary* ta;
	id target = self;
	action = NSStringFromSelector(@selector(setAtWithRefresh));
	
	ta = [[NSDictionary alloc]initWithObjectsAndKeys:
		  target, action,
		  
		  nil];
	
	
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
}


@end
