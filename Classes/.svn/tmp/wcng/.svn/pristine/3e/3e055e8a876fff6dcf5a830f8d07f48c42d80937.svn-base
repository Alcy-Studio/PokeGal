//
//  ActPGArrange10To11ButtonTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGArrange10To11ButtonTUpInside.h"

//Categories
#import "ActPGArrange10To11ButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGArrange10To11ButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGArrangeAvailable10To11:
			[self setComboAvailableButton];
			break;
		case kAudUDNumPGArrangeOccupied10To11:
			[self setComboOccupiedButton];
			break;
		default:
			break;
	}
	
};
@end

