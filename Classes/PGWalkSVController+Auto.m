//
//  PGWalkSVController+Auto.m
//  frdfrd
//
//  Created by westbugs on 11-03-27.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "PGWalkSVController+Auto.h"

#import "ConstantsAuditorUserDefaults.h"
#import "ActPGSVWalkAutoSetup.h"

@implementation PGWalkSVController(Auto)

-(void)autoSetup{
	ActPGSVWalkAutoSetup* action = [[ActPGSVWalkAutoSetup alloc] initWithRole:kAudUDNumPGSVWalkAuto];
	[action setCombo];
	[action trigger];
	[action release];
}

@end
