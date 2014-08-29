//
//  ActPGTitleWebsiteButtonTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTitleWebsiteButtonTUpInside.h"

//Categories
#import "ActPGTitleWebsiteButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGTitleWebsiteButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGTitleWebsite:
			[self setComboWebsiteButton];
			break;
			
		default:
			break;
	}
	
};
@end

