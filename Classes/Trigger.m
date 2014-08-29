//
//  Trigger.m
//  PocketDraft
//
//  Created by westbugs on 10-09-17.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "Trigger.h"


@implementation Trigger

@synthesize decisionCode, feedbackCode;

-(id)initWithDecisionCode:(NSString*)s feedbackCode:(NSArray*)a{
	self = [super init];
	if(!self)
		return self;
	self.decisionCode = s;
	self.feedbackCode = a;
	return self;
}

-(void)dealloc{
	[decisionCode release];
	[feedbackCode release];
	[super dealloc];
}
@end
