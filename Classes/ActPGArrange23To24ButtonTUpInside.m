//
//  ActPGArrange23To24ButtonTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGArrange23To24ButtonTUpInside.h"

//Categories
#import "ActPGArrange23To24ButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGArrange23To24ButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGArrangeAvailable23To24:
			[self setComboAvailableButton];
			break;
		case kAudUDNumPGArrangeOccupied23To24:
			[self setComboOccupiedButton];
			break;
		default:
			break;
	}
	
};
@end

