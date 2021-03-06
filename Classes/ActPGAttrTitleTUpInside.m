//
//  ActPGAttrTitleTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-20.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGAttrTitleTUpInside.h"

//Categories
#import "ActPGAttrTitleTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGAttrTitleTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGAttrTitleButton:
			[self setCombo];
			break;
		default:
			break;
	}
	
};

@end
