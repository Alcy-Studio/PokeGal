//
//  ActPGArrange20To21ButtonTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGArrange20To21ButtonTUpInside.h"

//Categories
#import "ActPGArrange20To21ButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGArrange20To21ButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGArrangeAvailable20To21:
			[self setComboAvailableButton];
			break;
		case kAudUDNumPGArrangeOccupied20To21:
			[self setComboOccupiedButton];
			break;
		default:
			break;
	}
	
};
@end

