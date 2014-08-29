//
//  ActPGArrangeAutoRefresh+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGArrangeAutoRefresh+Combo.h"

//Additional
#import "ActPGArrangeAutoRefresh+Selector.h"

@implementation ActPGArrangeAutoRefresh(Combo)

-(void)setComboAuto{
	NSLog(@"ActPGArrangeAutoRefresh - SetComboAuto");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	NSString* action = NSStringFromSelector(@selector(refreshTimeDate));

	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target, action,
						
						
						
						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
}


@end
