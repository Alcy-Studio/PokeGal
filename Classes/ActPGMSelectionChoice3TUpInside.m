//
//  ActPGMSelectionChoice3TUpInside.m
//  frdfrd
//
//  Created by westbugs on 10-10-14.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMSelectionChoice3TUpInside.h"

//Categories
#import "ActPGMSelectionChoice3TUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGMSelectionChoice3TUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGMSelectionChoice3Button:
			[self setComboChoiceButton];
			break;
		default:
			break;
	}
	
};

@end
