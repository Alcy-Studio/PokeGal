//
//  ActPGMainAutoSetup.m
//  frdfrd
//
//  Created by westbugs on 10-10-14.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMainAutoSetup.h"

//Categories
#import "ActPGMainAutoSetup+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGMainAutoSetup

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGMainAuto:
			[self setComboAuto];
			break;
		default:
			break;
	}
	//NSLog(@"%@",[self.combo description]);
};

@end
