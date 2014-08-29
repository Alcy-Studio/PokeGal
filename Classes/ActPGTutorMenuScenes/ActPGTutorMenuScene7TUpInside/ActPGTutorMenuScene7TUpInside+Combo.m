//
//  ActPGTutorMenuScene7TUpInside+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTutorMenuScene7TUpInside+Combo.h"

//Additional
#import "ActPGTutorMenuScene7TUpInside+Selector.h"

@implementation ActPGTutorMenuScene7TUpInside(Combo)

-(void)setComboScene{
	NSLog(@"ActPGTutorMenuScene7TUpInside - SetCombo");
	
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
