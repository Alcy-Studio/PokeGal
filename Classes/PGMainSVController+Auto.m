    //
//  PGMainSVController+Auto.m
//  frdfrd
//
//  Created by westbugs on 11-03-27.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "PGMainSVController+Auto.h"

#import "ConstantsAuditorUserDefaults.h"
#import "ActPGSVMainAutoSetup.h"

@implementation PGMainSVController(Auto)

-(void)autoSetup{
	ActPGSVMainAutoSetup* action = [[ActPGSVMainAutoSetup alloc] initWithRole:kAudUDNumPGSVMainAuto];
	[action setCombo];
	[action trigger];
	[action release];
}

@end
