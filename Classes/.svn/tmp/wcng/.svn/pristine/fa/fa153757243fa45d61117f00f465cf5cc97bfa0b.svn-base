//
//  ActPGEventMsgButtonTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGEventMsgButtonTUpInside.h"

//Categories
#import "ActPGEventMsgButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGEventMsgButtonTUpInside

@synthesize scriptRec;

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGEventMsgButton:
			[self setComboMsgButton];
			break;
		default:
			break;
	}
	
}

-(void)dealloc{
	[scriptRec release];
	[super dealloc];
	
}
@end

