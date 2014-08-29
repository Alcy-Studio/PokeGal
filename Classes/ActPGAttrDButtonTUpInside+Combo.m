//
//  ActPGAttrDButtonTUpInside+Combo.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGAttrDButtonTUpInside+Combo.h"


@implementation ActPGAttrDButtonTUpInside(Combo)

-(void)setComboDButton{
	NSLog(@"setComboDButton");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	NSString* action = NSStringFromSelector(@selector(switchViewToPGDetailWithTCurlDown));
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:target, action,nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
}



-(void)setComboSButton{
	NSLog(@"setComboSButton");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	NSString* action = NSStringFromSelector(@selector(presentModalSchedule));
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:target, action,nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
}

@end
