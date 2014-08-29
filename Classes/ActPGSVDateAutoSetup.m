//
//  ActPGSVDateAutoSetup.m
//  frdfrd
//
//  Created by westbugs on 10-10-14.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGSVDateAutoSetup.h"

//Categories
#import "ActPGSVDateAutoSetup+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGSVDateAutoSetup

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGSVDateAuto:
			[self setComboAuto];
			break;
		default:
			break;
	}
	
}

@end
