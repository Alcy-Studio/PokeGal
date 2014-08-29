//
//  ActPGAchiMMButtonTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGAchiMMButtonTUpInside.h"

//Categories
#import "ActPGAchiMMButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGAchiMMButtonTUpInside

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
		case kAudUDNumPGAchiGiftIcon5:
			[self setComboGiftIconOn];
			break;
		default:
			break;
	}
	
};


@end

