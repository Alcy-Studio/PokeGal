//
//  ActPGTitleHeartButtonTUpInside+Combo.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTitleHeartButtonTUpInside+Combo.h"


@implementation ActPGTitleHeartButtonTUpInside(Combo)

-(void)setComboTitleViewHeartButton{
	NSLog(@"setComboTitleViewHeartButton");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	id target = self;
	
	NSString* action1;
	//NSString* action2;
	//NSString* action3;
	
	
	action1 = NSStringFromSelector(@selector(presentModalGameCenter));
	//action2 = NSStringFromSelector(@selector(setRoleForConfirm));
	//action3 = NSStringFromSelector(@selector(presentModalConfirm));
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target, action1,
						//target, action2,
						//target, action3,
						
						
						nil];
	
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
	
}


@end
