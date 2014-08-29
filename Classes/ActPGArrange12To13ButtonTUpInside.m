//
//  ActPGArrange12To13ButtonTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGArrange12To13ButtonTUpInside.h"

//Categories
#import "ActPGArrange12To13ButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGArrange12To13ButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGArrangeAvailable12To13:
			[self setComboAvailableButton];
			break;
		case kAudUDNumPGArrangeOccupied12To13:
			[self setComboOccupiedButton];
			break;
		default:
			break;
	}
	
};
@end

