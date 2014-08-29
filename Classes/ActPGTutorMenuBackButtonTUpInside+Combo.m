//
//  ActPGTutorMenuBackButtonTUpInside+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTutorMenuBackButtonTUpInside+Combo.h"

//Additional
#import "ActPGTutorMenuBackButtonTUpInside+Selector.h"

@implementation ActPGTutorMenuBackButtonTUpInside(Combo)

-(void)setComboBack{
	NSLog(@"ActPGTutorMenuBackButtonTUpInside - SetCombo");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	NSString* action = NSStringFromSelector(@selector(switchViewToPGTitleWithTFlipFromL));
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:target, action,nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
	
	
}

@end
