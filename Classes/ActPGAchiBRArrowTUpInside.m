//
//  ActPGAchiBRArrowTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGAchiBRArrowTUpInside.h"

//Categories
#import "ActPGAchiBRArrowTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGAchiBRArrowTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGMainRArrow:
			[self setComboRArrow];
			break;
		default:
			break;
	}
	
};

@end
