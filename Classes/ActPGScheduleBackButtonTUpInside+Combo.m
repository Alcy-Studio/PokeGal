//
//  ActPGScheduleBackButtonTUpInside+Combo.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGScheduleBackButtonTUpInside+Combo.h"

//Temporary
#import "ActPGScheduleBackButtonTUpInside+Selector.h"


@implementation ActPGScheduleBackButtonTUpInside(Combo)

-(void)setComboBackButton{
	NSLog(@"ActPGScheduleBackButtonTUpInside - SetComboBackButton");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	NSString* action = NSStringFromSelector(@selector(dismissModal));
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:target, action,nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
}

@end
