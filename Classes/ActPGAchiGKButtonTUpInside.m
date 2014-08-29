//
//  ActPGAchiGKButtonTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGAchiGKButtonTUpInside.h"

//Categories
#import "ActPGAchiGKButtonTUpInside+Combo.h"

//Constants
//#import "ConstantsAuditorUserDefaults.h"
#import "ConstantsPGAchi.h"

@implementation ActPGAchiGKButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAchiGKButton:
			[self setComboAchiViewGKButton];
			break;
			
			
		default:
			break;
	}
	
};

@end

