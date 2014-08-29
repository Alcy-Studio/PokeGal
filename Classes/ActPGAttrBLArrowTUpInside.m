//
//  ActPGAttrBLArrowTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGAttrBLArrowTUpInside.h"

//Categories
#import "ActPGAttrBLArrowTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGAttrBLArrowTUpInside

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

