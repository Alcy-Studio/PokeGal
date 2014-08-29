//
//  ActPGArrange11To12ButtonTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGArrange11To12ButtonTUpInside.h"

//Categories
#import "ActPGArrange11To12ButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGArrange11To12ButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGArrangeAvailable11To12:
			[self setComboAvailableButton];
			break;
		case kAudUDNumPGArrangeOccupied11To12:
			[self setComboOccupiedButton];
			break;
		default:
			break;
	}
	
};
@end

