//
//  ActPGAchiAutoSetup+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGAchiAutoSetup+Combo.h"

//Additional
#import "ActPGAchiAutoSetup+Selector.h"

@implementation ActPGAchiAutoSetup(Combo)

-(void)setComboAuto{
	NSLog(@"ActPGAchiAutoSetup - SetComboAuto");
	
	NSString* action1 = NSStringFromSelector(@selector(setLevel));
	NSString* action2 = NSStringFromSelector(@selector(updateGiftIconsRole));
	NSString* action3 = NSStringFromSelector(@selector(setViewWithTag));

	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target, action1,
						target, action2,
						target, action3,

						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
}

@end
