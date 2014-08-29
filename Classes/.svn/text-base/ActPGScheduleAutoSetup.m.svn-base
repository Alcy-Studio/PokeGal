//
//  ActPGScheduleAutoSetup.m
//  frdfrd
//
//  Created by westbugs on 10-10-14.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGScheduleAutoSetup.h"

//Categories
#import "ActPGScheduleAutoSetup+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGScheduleAutoSetup

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}

-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGScheduleAuto:
			[self setComboAuto];
			break;
		default:
			break;
	}
	
}

@end
