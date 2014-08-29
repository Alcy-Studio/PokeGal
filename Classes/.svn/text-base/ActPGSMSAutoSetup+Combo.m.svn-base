//
//  ActPGSMSAutoSetup+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGSMSAutoSetup+Combo.h"

//Additional
#import "ActPGSMSAutoSetup+Selector.h"

@implementation ActPGSMSAutoSetup(Combo)

-(void)setComboAuto{
	NSLog(@"ActPGSMSAutoSetup - SetComboAuto");
	
	NSString* action1 = NSStringFromSelector(@selector(setViewWithTag));
	//NSString* action2 = NSStringFromSelector(@selector(setupAlertView));
	//NSString* action3 = NSStringFromSelector(@selector(deductAT));
	
	NSString* action2 = NSStringFromSelector(@selector(loadTable));
	
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target, action1,
						target, action2,
						//target, action3,

						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
}

@end
