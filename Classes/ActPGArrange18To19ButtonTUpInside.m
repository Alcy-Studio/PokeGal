//
//  ActPGArrange18To19ButtonTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGArrange18To19ButtonTUpInside.h"

//Categories
#import "ActPGArrange18To19ButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGArrange18To19ButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGArrangeAvailable18To19:
			[self setComboAvailableButton];
			break;
		case kAudUDNumPGArrangeOccupied18To19:
			[self setComboOccupiedButton];
			break;
		default:
			break;
	}
	
};
@end

