//
//  Feedback.m
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Feedback.h"


@implementation Feedback

@synthesize decisionCode, roleCode;

- (id)initWithDecisionCode:(NSString*)c role:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
		
	self.decisionCode = c;
	self.roleCode = r;
	
	return self;

}

- (id)initWithDecisionCode:(NSString*)c dec:(unsigned int)d{return self;}

-(void)dealloc{
	[decisionCode release];
	[super dealloc];
}
@end
