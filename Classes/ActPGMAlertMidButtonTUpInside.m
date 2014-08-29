//
//  ActPGMAlertMidButtonTUpInside.m
//  frdfrd
//
//  Created by westbugs on 10-10-14.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMAlertMidButtonTUpInside.h"

//Categories
#import "ActPGMAlertMidButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGMAlertMidButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGMAlertMidButton:
			[self setComboMidButton];
			break;
		default:
			break;
	}
	
};

@end
