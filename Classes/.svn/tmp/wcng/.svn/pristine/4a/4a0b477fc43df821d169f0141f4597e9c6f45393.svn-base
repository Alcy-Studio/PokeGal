//
//  ActPGAchiULButtonTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGAchiULButtonTUpInside.h"

//Categories
#import "ActPGAchiULButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGAchiULButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGAchiGiftIconNone:
			[self setComboGiftIconNone];
			break;
		case kAudUDNumPGAchiGiftIcon1:
			[self setComboGiftIconOn];
			break;
		default:
			break;
	}
	
};

@end

