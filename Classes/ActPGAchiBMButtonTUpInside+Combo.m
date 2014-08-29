//
//  ActPGAchiBMButtonTUpInside+Combo.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGAchiBMButtonTUpInside+Combo.h"


@implementation ActPGAchiBMButtonTUpInside(Combo)

-(void)setComboGiftIconNone{
	NSLog(@"setComboGiftIconNone");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	NSString* action1 = NSStringFromSelector(@selector(setHintWithGiftDescriptionNone));
	id target1 = self;
	
	NSString* action2 = NSStringFromSelector(@selector(setMsgWithGiftDescriptionNone));
	id target2 = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target1, action1,
						target2, action2,
						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];	
}

-(void)setComboGiftIconOn{
	NSLog(@"setComboGiftIconOn");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	NSString* action1 = NSStringFromSelector(@selector(setHintWithGiftDescriptionNone));
	id target1 = self;
	
	NSString* action2 = NSStringFromSelector(@selector(setMsgWithGiftDescriptionOn));
	id target2 = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target1, action1,
						target2, action2,
						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
}
@end
