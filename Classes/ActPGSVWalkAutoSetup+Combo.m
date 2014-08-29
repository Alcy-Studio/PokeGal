//
//  ActPGSVWalkAutoSetup+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGSVWalkAutoSetup+Combo.h"

//Additional
#import "ActPGSVWalkAutoSetup+Selector.h"

//Method
#import "MEvent.h"

//Constants
#import "ConstantsTmpRegion.h"

@implementation ActPGSVWalkAutoSetup(Combo)

-(void)setComboAuto{
	NSLog(@"ActPGSVWalkAutoSetup - SetComboAuto");
	
	NSString* action = NSStringFromSelector(@selector(modifyDirectRole));
	
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target, action,
						
						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
}

@end
