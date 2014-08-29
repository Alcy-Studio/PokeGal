//
//  ActPGDateAutoRefresh+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGDateAutoRefresh+Selector.h"

#import "MGirl.h"
#import "ConstantsPGDate.h"
#import "ConstantsGirlStatus.h"

@implementation ActPGDateAutoRefresh(Selector)

-(void)regenAt{	
	[MGirl regenAt:kGirlRegenAt];
}

-(void)setAtWithRefresh{
	
	//Action Point Label
	//NSLog(@"Running");
	UILabel* at = (UILabel*)[[(UIViewController*)self.resource view] viewWithTag:kDateAtPointLabel];
	NSUInteger value = [[at text] intValue];
	
	if (value >= [MGirl maxAt])
		return;
	
	value += kGirlRegenAt;
	
	[at setText:[NSString stringWithFormat:@"%i",value]];
	
}

@end
