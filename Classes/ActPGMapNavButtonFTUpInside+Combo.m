//
//  ActPGMapNavButtonFTUpInside+Combo.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMapNavButtonFTUpInside+Combo.h"


@implementation ActPGMapNavButtonFTUpInside(Combo)

-(void)setComboNavButtonF{
	NSLog(@"ActPGMapNavButtonFTUpInside - SetComboNavButtonF");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	
	NSString* action1 = NSStringFromSelector(@selector(modifyDirectRole));
	NSString* action2 = NSStringFromSelector(@selector(modifyInDirectRole));
	NSString* action3 = NSStringFromSelector(@selector(setViewWithTag));
	NSString* action4 = NSStringFromSelector(@selector(showDirectRole));

	NSString* action5 = NSStringFromSelector(@selector(setupNav));
	
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target, action1,
						target, action2,
						target, action3,
						target, action4,
						target, action5,

						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];}

@end
