//
//  ActPGArrange19To20ButtonTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGArrange19To20ButtonTUpInside.h"

//Categories
#import "ActPGArrange19To20ButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGArrange19To20ButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGArrangeAvailable19To20:
			[self setComboAvailableButton];
			break;
		case kAudUDNumPGArrangeOccupied19To20:
			[self setComboOccupiedButton];
			break;
		default:
			break;
	}
	
};
@end

