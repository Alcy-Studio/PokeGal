//
//  ActPGAttrULArrowTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGAttrULArrowTUpInside.h"

//Categories
#import "ActPGAttrULArrowTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGAttrULArrowTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGAttrLArrow:
			[self setComboLArrow];
			break;
		default:
			break;
	}
	
};
@end

