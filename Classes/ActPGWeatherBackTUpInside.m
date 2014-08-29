//
//  ActPGWeatherBackTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGWeatherBackTUpInside.h"

//Categories
#import "ActPGWeatherBackTUpInside+Combo.h"
//Temporary for 
#import "ActPGWeatherBackTUpInside+Selector.h"


//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGWeatherBackTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGWeatherBack:
			[self setComboBack];
			break;
		default:
			break;
	}
	
};
@end

