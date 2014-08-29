//
//  PGDateSVController+Auto.m
//  frdfrd
//
//  Created by westbugs on 11-03-27.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "PGDateSVController+Auto.h"

#import "ConstantsAuditorUserDefaults.h"
#import "ActPGSVDateAutoSetup.h"

@implementation PGDateSVController(Auto)

-(void)autoSetup{
	ActPGSVDateAutoSetup* action = [[ActPGSVDateAutoSetup alloc] initWithRole:kAudUDNumPGSVDateAuto];
	[action setCombo];
	[action trigger];
	[action release];
}

@end
