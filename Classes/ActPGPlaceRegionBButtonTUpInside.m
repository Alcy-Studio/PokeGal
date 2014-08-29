//
//  ActPGPlaceRegionBButtonTUpInside.m
//  frdfrd
//
//  Created by westbugs on 11-01-24.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "ActPGPlaceRegionBButtonTUpInside.h"

//Categories
#import "ActPGPlaceRegionBButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGPlaceRegionBButtonTUpInside


-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGPlaceRegionB:
			[self setComboRegionButton];
			break;
		default:
			break;
	}
	
}

@end
