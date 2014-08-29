//
//  ActPGArrange17To18ButtonTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGArrange17To18ButtonTUpInside.h"

//Categories
#import "ActPGArrange17To18ButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGArrange17To18ButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGArrangeAvailable17To18:
			[self setComboAvailableButton];
			break;
		case kAudUDNumPGArrangeOccupied17To18:
			[self setComboOccupiedButton];
			break;
		default:
			break;
	}
	
};
@end

