//
//  ActPGEventHelpTUpInside+Combo.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGEventHelpTUpInside+Combo.h"

//Additional
#import "ActPGEventHelpTUpInside+Selector.h"
@implementation ActPGEventHelpTUpInside(Combo)

-(void)setComboHelp{
	NSLog(@"ActPGEventHelpTUpInside - setComboHelp");
	
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
