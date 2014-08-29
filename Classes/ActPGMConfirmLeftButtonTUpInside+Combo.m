//
//  ActPGMConfirmLeftButtonTUpInside+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMConfirmLeftButtonTUpInside+Combo.h"

//Additional
#import "ActPGMConfirmLeftButtonTUpInside+Selector.h"

#import "MTest.h"
#import "MUi.h"

@implementation ActPGMConfirmLeftButtonTUpInside(Combo)

-(void)setComboLeftButton{
	NSLog(@"ActPGMConfirmLeftButtonTUpInside - SetCombo");
	
	//combo = [[NSArray alloc]initWithObjects:nil];

	NSString* action1 = NSStringFromSelector(@selector(dismissModalDelay));
	
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target, action1,
						
						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
	
}

@end
