//
//  ActPGMAlertMidButtonTUpInside+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMAlertMidButtonTUpInside+Combo.h"

//Additional
#import "ActPGMAlertMidButtonTUpInside+Selector.h"

@implementation ActPGMAlertMidButtonTUpInside(Combo)

-(void)setComboMidButton{
	NSLog(@"ActPGMAlertMidButtonTUpInside - SetCombo");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	NSString* action1 = NSStringFromSelector(@selector(dismissModal));
	
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target, action1,
						
						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
}

@end
