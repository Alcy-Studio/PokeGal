//
//  Interpreter.m
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Interpreter.h"


@implementation Interpreter


@synthesize sceneCode, tagCode, roleCode, eventCode;
//@synthesize viewController, control, tag, event;

/*
- (id) initWithController:(id)vc sender:(id)s controlEvent:(UIControlEvents)c{
	self = [super init]; 
	if(!self)
		return self;
	self.viewController = vc;
	//NSAssert( [s isKindOfClass: [UIButton class]] );
	self.control = s;
	self.tag = [s tag];
	self.event = c;
	return self;
	
}
*/

-(id)initWithScene:(unsigned int)s tag:(unsigned int)t role:(unsigned int)r event:(unsigned int)e{
	self = [super init];
	if(!self)
		return self;
	
	self.sceneCode = s;
	self.tagCode = t;
	self.roleCode = r;
	self.eventCode = e;
	
	return self;
}
//-(id)initWithScene:(unsigned int)s tag:(unsigned int)t event:(unsigned int)e resource:(id)r{return self;}



- (void)dealloc{
	/*
	[viewController release];
	[control release];
	*/
	[super dealloc];
}
@end
