//
//  ActPGPlaceRegionBButtonTUpInside+Combo.m
//  frdfrd
//
//  Created by westbugs on 11-01-24.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "ActPGPlaceRegionBButtonTUpInside+Combo.h"


@implementation ActPGPlaceRegionBButtonTUpInside(Combo)


-(void)setComboRegionButton{
	NSLog(@"ActPGPlaceRegionBButtonTUpInside - setComboRegionButton");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	NSString* action1 = NSStringFromSelector(@selector(setupEventForSchedule));
	
	NSString* action2 = NSStringFromSelector(@selector(saveMocForEvent));
	NSString* action3 = NSStringFromSelector(@selector(switchViewToPGMainWithTFlipFromR));
	
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target, action1,
						target, action2,
						target, action3,
						
						
						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
	
	
}


@end
