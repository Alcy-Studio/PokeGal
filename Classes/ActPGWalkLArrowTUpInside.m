//
//  ActPGWalkLArrowTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGWalkLArrowTUpInside.h"

//Categories
#import "ActPGWalkLArrowTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGWalkLArrowTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGWalkLArrow:
			[self setComboLArrow];
			break;
		default:
			break;
	}
	
};
@end

