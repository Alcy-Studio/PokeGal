//
//  ActPGAttrDButtonTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGAttrDButtonTUpInside.h"

//Categories
#import "ActPGAttrDButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGAttrDButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGAttrDButton:
			[self setComboDButton];
			break;
		case kAudUDNumPGAttrSButton:
			[self setComboSButton];
			break;

		default:
			break;
	}
	
};

@end

