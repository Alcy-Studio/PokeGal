//
//  ActPGTutorSVBackButtonTUpInside.m
//  frdfrd
//
//  Created by westbugs on 10-10-14.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTutorSVBackButtonTUpInside.h"

//Categories
#import "ActPGTutorSVBackButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGTutorSVBackButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGTutorSVBack:
			[self setComboBackButton];
			break;
		default:
			break;
	}
	
};

@end
