//
//  ActPGArrange22To23ButtonTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGArrange22To23ButtonTUpInside.h"

//Categories
#import "ActPGArrange22To23ButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGArrange22To23ButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGArrangeAvailable22To23:
			[self setComboAvailableButton];
			break;
		case kAudUDNumPGArrangeOccupied22To23:
			[self setComboOccupiedButton];
			break;
		default:
			break;
	}
	
};
@end

