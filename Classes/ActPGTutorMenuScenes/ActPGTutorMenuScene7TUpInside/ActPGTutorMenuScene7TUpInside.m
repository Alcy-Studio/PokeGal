//
//  ActPGTutorMenuScene7TUpInside.m
//  frdfrd
//
//  Created by westbugs on 10-10-14.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTutorMenuScene7TUpInside.h"

//Categories
#import "ActPGTutorMenuScene7TUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGTutorMenuScene7TUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGTutorMenuScene7:
			[self setComboScene];
			break;
		default:
			break;
	}
	
};

@end
