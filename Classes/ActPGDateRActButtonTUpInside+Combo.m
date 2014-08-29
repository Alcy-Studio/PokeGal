//
//  ActPGDateRActButtonTUpInside+Combo.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGDateRActButtonTUpInside+Combo.h"


@implementation ActPGDateRActButtonTUpInside(Combo)

-(void)setComboActLeave{
	NSLog(@"setComboActLeave");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	NSString* action1 = NSStringFromSelector(@selector(setRoleForConfirm));
	NSString* action2 = NSStringFromSelector(@selector(setTmpAction));
	NSString* action3 = NSStringFromSelector(@selector(presentModalConfirm));
	
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
