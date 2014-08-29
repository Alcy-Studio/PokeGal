//
//  ActPGArrange14To15ButtonTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGArrange14To15ButtonTUpInside.h"

//Categories
#import "ActPGArrange14To15ButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGArrange14To15ButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGArrangeAvailable14To15:
			[self setComboAvailableButton];
			break;
		case kAudUDNumPGArrangeOccupied14To15:
			[self setComboOccupiedButton];
			break;
		default:
			break;
	}
	
};
@end

