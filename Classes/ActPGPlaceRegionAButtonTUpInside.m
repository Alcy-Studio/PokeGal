//
//  ActPGPlaceRegionAButtonTUpInside.m
//  frdfrd
//
//  Created by westbugs on 11-01-24.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "ActPGPlaceRegionAButtonTUpInside.h"

//Categories
#import "ActPGPlaceRegionAButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGPlaceRegionAButtonTUpInside


-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGPlaceRegionA:
			[self setComboRegionButton];
			break;
		default:
			break;
	}
	
}

@end
