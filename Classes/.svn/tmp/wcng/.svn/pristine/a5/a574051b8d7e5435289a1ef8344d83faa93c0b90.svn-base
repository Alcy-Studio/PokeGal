//
//  ActPGTalkAutoRefresh.m
//  frdfrd
//
//  Created by westbugs on 10-10-14.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTalkAutoRefresh.h"

//Categories
#import "ActPGTalkAutoRefresh+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGTalkAutoRefresh

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGTalkAuto:
			[self setComboAuto];
			break;
		default:
			break;
	}
	
};

@end
