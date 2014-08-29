//
//  ActPGPlaceBackButtonTUpInside+Combo.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGPlaceBackButtonTUpInside+Combo.h"


@implementation ActPGPlaceBackButtonTUpInside(Combo)

-(void)setComboBackButton{
	NSLog(@"ActPGPlaceBackButtonTUpInside - SetComboBackButton");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	NSString* action = NSStringFromSelector(@selector(switchViewToPGArrangeWithTFlipFromL));
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:target, action,nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
}

@end
