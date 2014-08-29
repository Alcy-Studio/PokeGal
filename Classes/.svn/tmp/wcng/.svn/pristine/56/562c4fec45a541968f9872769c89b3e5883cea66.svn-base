//
//  ActPGMConfirmAutoSetup.m
//  frdfrd
//
//  Created by westbugs on 10-10-14.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMConfirmAutoSetup.h"

//Categories
#import "ActPGMConfirmAutoSetup+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGMConfirmAutoSetup

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGMConfirmAuto:
			[self setComboAuto];
			break;
		default:
			break;
	}
	
};

@end
