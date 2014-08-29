//
//  ActPGSVMainAutoSetup+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGSVMainAutoSetup+Combo.h"

//Additional
#import "ActPGSVMainAutoSetup+Selector.h"

//Method
#import "MEvent.h"

//Constants
#import "ConstantsTmpRegion.h"

@implementation ActPGSVMainAutoSetup(Combo)

-(void)setComboAuto{
	NSLog(@"ActPGSVMainAutoSetup - SetComboAuto");
	
	NSString* action = NSStringFromSelector(@selector(modifyDirectRole));

	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target, action,
		
						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
}

@end
