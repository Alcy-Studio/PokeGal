//
//  ActPGDateRArrowTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGDateRArrowTUpInside.h"

//Categories
#import "ActPGDateRArrowTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGDateRArrowTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGDateRArrow:
			[self setComboRArrow];
			break;
		default:
			break;
	}
	
};
@end

