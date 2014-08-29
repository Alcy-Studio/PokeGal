//
//  ActPGArrange15To16ButtonTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGArrange15To16ButtonTUpInside.h"

//Categories
#import "ActPGArrange15To16ButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGArrange15To16ButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGArrangeAvailable15To16:
			[self setComboAvailableButton];
			break;
		case kAudUDNumPGArrangeOccupied15To16:
			[self setComboOccupiedButton];
			break;
		default:
			break;
	}
	
};
@end

