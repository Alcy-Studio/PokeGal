//
//  ActPGScheduleBackButtonTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGScheduleBackButtonTUpInside.h"

//Categories
#import "ActPGScheduleBackButtonTUpInside+Combo.h"
//Temporary for 
#import "ActPGScheduleBackButtonTUpInside+Selector.h"


//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGScheduleBackButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGScheduleBack:
			[self setComboBackButton];
			break;
		default:
			break;
	}
	
};
@end

