//
//  ActPGArrange16To17ButtonTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGArrange16To17ButtonTUpInside.h"

//Categories
#import "ActPGArrange16To17ButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGArrange16To17ButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGArrangeAvailable16To17:
			[self setComboAvailableButton];
			break;
		case kAudUDNumPGArrangeOccupied16To17:
			[self setComboOccupiedButton];
			break;
		default:
			break;
	}
	
};
@end

