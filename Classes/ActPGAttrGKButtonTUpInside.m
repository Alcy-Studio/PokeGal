//
//  ActPGAttrGKButtonTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGAttrGKButtonTUpInside.h"

//Categories
#import "ActPGAttrGKButtonTUpInside+Combo.h"

//Constants
//#import "ConstantsAuditorUserDefaults.h"
#import "ConstantsPGAttr.h"

@implementation ActPGAttrGKButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAttrGKButton:
			[self setComboAttrViewGKButton];
			break;
			
			
		default:
			break;
	}
	
};

@end

