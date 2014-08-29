//
//  ActPGMapAutoSetup+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMapAutoSetup+Combo.h"

//Additional
#import "ActPGMapAutoSetup+Selector.h"

@implementation ActPGMapAutoSetup(Combo)

-(void)setComboAuto{
	NSLog(@"ActPGMapAutoSetup - SetComboAuto");
	
	NSString* action1 = NSStringFromSelector(@selector(setViewWithTag));
	//NSString* action2 = NSStringFromSelector(@selector(setupAlertView));
	//NSString* action2 = NSStringFromSelector(@selector(setMapView));


	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target, action1,
						//target, action2,

						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
}

@end
