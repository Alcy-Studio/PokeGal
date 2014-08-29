//
//  ActPGTutorMenuScene1TUpInside+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTutorMenuScene1TUpInside+Combo.h"

//Additional
#import "ActPGTutorMenuScene1TUpInside+Selector.h"

@implementation ActPGTutorMenuScene1TUpInside(Combo)

-(void)setComboScene{
	NSLog(@"ActPGTutorMenuScene1TUpInside - SetCombo");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	NSString* action1 = NSStringFromSelector(@selector(setTutorial));
	//NSString* action2 = NSStringFromSelector(@selector(presentModalTutor));
	
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target, action1,
						//target, action2,
						
						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
	
	
}

@end
