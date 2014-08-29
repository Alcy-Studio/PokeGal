//
//  ActPGArrangeAutoSetup+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGArrangeAutoSetup+Combo.h"

//Additional
#import "ActPGArrangeAutoSetup+Selector.h"

@implementation ActPGArrangeAutoSetup(Combo)

-(void)setComboAuto{
	NSLog(@"ActPGArrangeAutoSetup - SetComboAuto");
	
	NSString* action1 = NSStringFromSelector(@selector(setScheduleWithEvents));

	
	NSString* action2 = NSStringFromSelector(@selector(cleanTimeDiv));

	//Re-comment in release version - set all buttons to OK (easier for debug)
	NSString* action3 = NSStringFromSelector(@selector(setViewWithTag));


	//NSString* action3 = NSStringFromSelector(@selector(setupAlertView));

	
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
