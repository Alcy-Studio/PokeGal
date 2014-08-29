//
//  ActPGSVDateAutoSetup+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGSVDateAutoSetup+Combo.h"

//Additional
#import "ActPGSVDateAutoSetup+Selector.h"

//Method
#import "MEvent.h"

//Constants
#import "ConstantsTmpRegion.h"

@implementation ActPGSVDateAutoSetup(Combo)

-(void)setComboAuto{
	NSLog(@"ActPGSVDateAutoSetup - SetComboAuto");
	
	NSString* action = NSStringFromSelector(@selector(modifyDirectRole));
	
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target, action,
						
						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
}

@end
