//
//  ActPGMapNavButtonCTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMapNavButtonCTUpInside.h"

//Categories
#import "ActPGMapNavButtonCTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGMapNavButtonCTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGMapRegionC:
			[self setComboNavButtonC];
			break;
		default:
			break;
	}
	
};
@end

