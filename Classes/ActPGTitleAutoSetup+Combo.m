//
//  ActPGTitleAutoSetup+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTitleAutoSetup+Combo.h"

//Additional
#import "ActPGTitleAutoSetup+Selector.h"

//Test
//#import "MTime.h"
//#import "MUi.h"
@implementation ActPGTitleAutoSetup(Combo)

-(void)setComboAuto{
	NSLog(@"ActPGTitleAutoSetup - SetComboAuto");
	
	NSString* action1 = NSStringFromSelector(@selector(setViewWithTag));
	NSString* action2 = NSStringFromSelector(@selector(setOpening));

	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target, action1,
						target, action2,

						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
	//Test
	
	//NSLog(@"DayNight: %i", [MTime getDayNight]);

}


@end
