//
//  ActPGTitleWebsiteButtonTUpInside+Combo.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTitleWebsiteButtonTUpInside+Combo.h"

@implementation ActPGTitleWebsiteButtonTUpInside(Combo)

-(void)setComboWebsiteButton{
	NSLog(@"setComboWebsiteButton");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	NSString* action = NSStringFromSelector(@selector(switchViewToPGTutorMenuWithTFlipFromR));
	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:target, action,nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];	

}


@end
