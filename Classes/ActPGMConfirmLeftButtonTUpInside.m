//
//  ActPGMConfirmLeftButtonTUpInside.m
//  frdfrd
//
//  Created by westbugs on 10-10-14.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMConfirmLeftButtonTUpInside.h"

//Categories
#import "ActPGMConfirmLeftButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGMConfirmLeftButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGMConfirmLeftButton:
			[self setComboLeftButton];
			break;
		default:
			break;
	}
	
};

@end
