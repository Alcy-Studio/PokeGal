//
//  ActPGArrange21To22ButtonTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGArrange21To22ButtonTUpInside.h"

//Categories
#import "ActPGArrange21To22ButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGArrange21To22ButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGArrangeAvailable21To22:
			[self setComboAvailableButton];
			break;
		case kAudUDNumPGArrangeOccupied21To22:
			[self setComboOccupiedButton];
			break;
		default:
			break;
	}
	
};
@end

