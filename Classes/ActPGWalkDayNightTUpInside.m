//
//  ActPGWalkDayNightTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGWalkDayNightTUpInside.h"

//Categories
#import "ActPGWalkDayNightTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"
#import "ConstantsPGWalk.h"

@implementation ActPGWalkDayNightTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kWalkViewDayNightButton:
			[self setComboDayNightButton];
			break;
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

