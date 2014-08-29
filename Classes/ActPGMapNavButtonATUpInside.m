//
//  ActPGMapNavButtonATUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMapNavButtonATUpInside.h"

//Categories
#import "ActPGMapNavButtonATUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGMapNavButtonATUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGMapRegionA:
			[self setComboNavButtonA];
			break;
		default:
			break;
	}
	
};
@end

