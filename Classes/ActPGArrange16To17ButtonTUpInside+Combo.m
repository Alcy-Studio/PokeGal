//
//  ActPGArrange16To17ButtonTUpInside+Combo.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGArrange16To17ButtonTUpInside+Combo.h"


@implementation ActPGArrange16To17ButtonTUpInside(Combo)

-(void)setComboAvailableButton{
	NSLog(@"ActPGArrange16To17ButtonTUpInside - SetComboAvailableButton");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	NSString* action1 = NSStringFromSelector(@selector(setResultForArrange));
	NSString* action2 = NSStringFromSelector(@selector(switchViewToPGPlacePopAnimated));
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target, action1,
						target, action2,
						
						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
}

-(void)setComboOccupiedButton{
	NSLog(@"ActPGArrange16To17ButtonTUpInside - SetComboOccupiedButton");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	NSString* action = NSStringFromSelector(@selector(setupAlertViewForOccupiedPeriod));
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target, action,
						
						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
}


@end
