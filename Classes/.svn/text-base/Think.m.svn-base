//
//  Think.m
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Think.h"

//Additional
#import "Interpreter.h"
#import "Interpreter+Code.h"

@implementation Think

@synthesize sceneCode, tagCode, eventCode, roleCode, resource;
@synthesize validInCode, interpreterCode, evaluationCode, decisionCode, constraintCode, feedbackCode, triggerCode;




-(id)initWithScene:(unsigned int)s tag:(unsigned int)t event:(unsigned int)e{
	self = [super init];
	if(!self)
		return self;
		
	self.sceneCode = s;
	self.tagCode = t;
	self.eventCode = e;
	self.roleCode = [Interpreter getRoleWithScene:s tag:t];

	return self;
}

-(id)initWithScene:(unsigned int)s tag:(unsigned int)t event:(unsigned int)e resource:(id)r{
	self = [super init];
	if(!self)
		return self;
	
	self.sceneCode = s;
	self.tagCode = t;
	self.eventCode = e;
	self.roleCode = [Interpreter getRoleWithScene:s tag:t];
	self.resource = r;
	return self;
}

-(void)dealloc{
	[resource release];
	[interpreterCode release];
	[decisionCode release];
	[feedbackCode release];
	[super dealloc];
}
@end
