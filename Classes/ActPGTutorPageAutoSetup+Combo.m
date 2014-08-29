//
//  ActPGTutorPageAutoSetup+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTutorPageAutoSetup+Combo.h"

//Additional
#import "ActPGTutorPageAutoSetup+Selector.h"

@implementation ActPGTutorPageAutoSetup(Combo)

-(void)setComboAuto{
	NSLog(@"ActPGTutorPageAutoSetup - SetCombo");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	NSString* action1 = NSStringFromSelector(@selector(setViewWithTag));
	
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target, action1,
						
						
						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
}

@end
