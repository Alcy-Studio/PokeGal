//
//  ActPGSMSSendButtonTUpInside+Combo.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGSMSSendButtonTUpInside+Combo.h"


@implementation ActPGSMSSendButtonTUpInside(Combo)

-(void)setComboSendButton{
	NSLog(@"ActPGSMSSendButtonTUpInside - SetComboSendButton");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	//NSString* action1 = NSStringFromSelector(@selector(invalidateTimer));

	NSString* action1 = NSStringFromSelector(@selector(sendMsg));
	NSString* action2 = NSStringFromSelector(@selector(receiveMsgDelay));

	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target, action1,
						target, action2,

						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
}

@end
