//
//  ActPGPlaceRegionGButtonTUpInside.m
//  frdfrd
//
//  Created by westbugs on 11-01-24.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "ActPGPlaceRegionGButtonTUpInside.h"

//Categories
#import "ActPGPlaceRegionGButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGPlaceRegionGButtonTUpInside


-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGPlaceRegionG:
			[self setComboRegionButton];
			break;
		default:
			break;
	}
	
}

@end
