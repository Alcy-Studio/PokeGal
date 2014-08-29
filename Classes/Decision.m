//
//  Decision.m
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Decision.h"


@implementation Decision

@synthesize interpreterCode;

- (id)initWithInterpreterCode:(NSString*)c{
	self = [super init];
	if(!self)
		return self;
	
	self.interpreterCode = c;
	return self;
}

-(void)dealloc{
	[interpreterCode release];
	[super dealloc];
}
@end
