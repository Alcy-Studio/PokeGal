//
//  ActPGArrange13To14ButtonTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGArrange13To14ButtonTUpInside.h"

//Categories
#import "ActPGArrange13To14ButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGArrange13To14ButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGArrangeAvailable13To14:
			[self setComboAvailableButton];
			break;
		case kAudUDNumPGArrangeOccupied13To14:
			[self setComboOccupiedButton];
			break;
		default:
			break;
	}
	
};
@end

