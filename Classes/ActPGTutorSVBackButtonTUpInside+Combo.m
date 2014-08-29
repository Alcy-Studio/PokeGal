//
//  ActPGTutorSVBackButtonTUpInside+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTutorSVBackButtonTUpInside+Combo.h"

//Additional
#import "ActPGTutorSVBackButtonTUpInside+Selector.h"

@implementation ActPGTutorSVBackButtonTUpInside(Combo)

-(void)setComboBackButton{
	NSLog(@"ActPGTutorSVBackButtonTUpInside - SetCombo");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	NSString* action1 = NSStringFromSelector(@selector(dismissModal));
	
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target, action1,
						
						
						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];	
}

@end
