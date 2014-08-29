//
//  ActPGTitleContinueButtonTUpInside+Combo.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTitleContinueButtonTUpInside+Combo.h"


@implementation ActPGTitleContinueButtonTUpInside(Combo)

-(void)setComboContinueButton{
	NSLog(@"setComboContinueButton");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	NSString* action = NSStringFromSelector(@selector(switchViewToPGMainWithTFlipFromR));
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:target, action,nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
}

@end
