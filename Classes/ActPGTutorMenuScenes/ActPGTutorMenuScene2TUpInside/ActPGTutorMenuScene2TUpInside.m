//
//  ActPGTutorMenuScene2TUpInside.m
//  frdfrd
//
//  Created by westbugs on 10-10-14.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTutorMenuScene2TUpInside.h"

//Categories
#import "ActPGTutorMenuScene2TUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGTutorMenuScene2TUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGTutorMenuScene2:
			[self setComboScene];
			break;
		default:
			break;
	}
	
};

@end
