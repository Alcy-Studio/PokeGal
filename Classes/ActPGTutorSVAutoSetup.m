//
//  ActPGTutorSVAutoSetup.m
//  frdfrd
//
//  Created by westbugs on 10-10-14.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTutorSVAutoSetup.h"

//Categories
#import "ActPGTutorSVAutoSetup+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGTutorSVAutoSetup

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGTutorSVAuto:
			[self setComboAuto];
			break;
		default:
			break;
	}
	
};

@end
