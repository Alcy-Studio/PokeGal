//
//  ActPGArrangeBackButtonTUpInside+Combo.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGArrangeBackButtonTUpInside+Combo.h"


@implementation ActPGArrangeBackButtonTUpInside(Combo)

-(void)setComboBackButton{
	NSLog(@"ActPGArrangeBackButtonTUpInside - SetComboBackButton");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	NSString* action = NSStringFromSelector(@selector(switchViewToPGMainWithTFlipFromL));
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:target, action,nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
}

@end
