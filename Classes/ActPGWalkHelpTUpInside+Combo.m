//
//  ActPGWalkHelpTUpInside+Combo.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGWalkHelpTUpInside+Combo.h"

//Additional
#import "ActPGWalkHelpTUpInside+Selector.h"
@implementation ActPGWalkHelpTUpInside(Combo)

-(void)setComboHelp{
	NSLog(@"ActPGWalkHelpTUpInside - setComboHelp");
	
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
