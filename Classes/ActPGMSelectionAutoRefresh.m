//
//  ActPGMSelectionAutoRefresh.m
//  frdfrd
//
//  Created by westbugs on 10-10-14.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMSelectionAutoRefresh.h"

//Categories
#import "ActPGMSelectionAutoRefresh+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGMSelectionAutoRefresh

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGMSelectionAuto:
			[self setComboAuto];
			break;
		default:
			break;
	}
	
};

@end
