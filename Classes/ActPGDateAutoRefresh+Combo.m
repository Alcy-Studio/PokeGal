//
//  ActPGDateAutoRefresh+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGDateAutoRefresh+Combo.h"

//Additional
#import "ActPGDateAutoRefresh+Selector.h"

@implementation ActPGDateAutoRefresh(Combo)

-(void)setComboAuto{
	NSLog(@"ActPGDateAutoRefresh - SetComboAuto");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	//NSString* action1;
	//NSString* action2;
	
	NSDictionary* ta;
	//id target = self;
	//action1 = NSStringFromSelector(@selector(regenAt));
	//action2 = NSStringFromSelector(@selector(setAtWithRefresh));
	
	ta = [[NSDictionary alloc]initWithObjectsAndKeys:
		  //target, action1,
		  //target, action2,
		  
		  nil];
	
	
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
}

@end
