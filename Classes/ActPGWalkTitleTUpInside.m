//
//  ActPGWalkTitleTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-20.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGWalkTitleTUpInside.h"

//Categories
#import "ActPGWalkTitleTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGWalkTitleTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGWalkTitleButton:
			[self setCombo];
			break;
		default:
			break;
	}
	
};

@end
