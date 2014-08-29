//
//  ActPGTitleHeartButtonTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTitleHeartButtonTUpInside.h"

//Categories
#import "ActPGTitleHeartButtonTUpInside+Combo.h"

//Constants
//#import "ConstantsAuditorUserDefaults.h"
#import "ConstantsPGTitle.h"

@implementation ActPGTitleHeartButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kTitleHeartButton:
			[self setComboTitleViewHeartButton];
			break;
			
			
		default:
			break;
	}
	
};

@end

