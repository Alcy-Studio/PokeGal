//
//  ActPGMainRActButtonTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-20.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMainRActButtonTUpInside.h"

//Categories
#import "ActPGMainRActButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGMainRActButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGMainActMusic:
			[self setComboActMusic];
			break;
		case kAudUDNumPGMainActMove:
			[self setComboActMove];
			break;
		default:
			break;
	}
	
};

@end
