//
//  ActPGAchiTitleTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-20.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGAchiTitleTUpInside.h"

//Categories
#import "ActPGAchiTitleTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGAchiTitleTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGAchiTitleButton:
			[self setCombo];
			break;
		default:
			break;
	}
	
};

@end
