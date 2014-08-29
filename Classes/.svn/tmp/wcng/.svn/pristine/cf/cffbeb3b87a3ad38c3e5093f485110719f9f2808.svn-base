//
//  ActPGMainMActButtonTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-20.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMainMActButtonTUpInside.h"

//Categories
#import "ActPGMainMActButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGMainMActButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGMainActMovie:
			[self setComboActMovie];
			break;
		case kAudUDNumPGMainActSms:
			[self setComboActSms];
			break;
		default:
			break;
	}
	
}
/*
-(void)dealloc{
	[super dealloc];
	
}
*/
@end
