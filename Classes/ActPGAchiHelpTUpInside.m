//
//  ActPGAchiHelpTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-20.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGAchiHelpTUpInside.h"

//Categories
#import "ActPGAchiHelpTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGAchiHelpTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGAchiTutor:
			[self setComboHelp];
			break;
		default:
			break;
	}
	
};

@end
