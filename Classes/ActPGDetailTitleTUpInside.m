//
//  ActPGDetailTitleTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-20.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGDetailTitleTUpInside.h"

//Categories
#import "ActPGDetailTitleTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGDetailTitleTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGDetailTitleButton:
			[self setCombo];
			break;
		default:
			break;
	}
	
};

@end
