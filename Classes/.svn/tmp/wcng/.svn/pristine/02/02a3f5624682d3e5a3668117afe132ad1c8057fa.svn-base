//
//  ActPGDetailBackButtonTUpInside+Combo.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGDetailBackButtonTUpInside+Combo.h"


@implementation ActPGDetailBackButtonTUpInside(Combo)

-(void)setComboBackButton{
	NSLog(@"ActPGDetailBackButtonTUpInside - SetComboBackButton");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	NSString* action = NSStringFromSelector(@selector(switchViewToPGMapWithTCurlDown));
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:target, action,nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
}

@end
