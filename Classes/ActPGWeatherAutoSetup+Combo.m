//
//  ActPGWeatherAutoSetup+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGWeatherAutoSetup+Combo.h"

//Additional
#import "ActPGWeatherAutoSetup+Selector.h"

@implementation ActPGWeatherAutoSetup(Combo)

-(void)setComboAuto{
	NSLog(@"ActPGWeatherAutoSetup - SetCombo");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	NSString* action1 = NSStringFromSelector(@selector(setViewWithTag));
	
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target, action1,
						
						
						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
	
	
}

@end
