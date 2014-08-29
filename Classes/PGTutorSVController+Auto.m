//
//  PGTutorSVController+Auto.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "PGTutorSVController+Auto.h"

//Additional
#import "ScreenLocking.h"
#import "Think.h"
#import "Think+Act.h"

//Constants
#import "ConstantsSceneCode.h"
#import "ConstantsEventCode.h"
#import "ConstantsRefreshFrequency.h"

//Repo
#import "MAct.h"
@implementation PGTutorSVController(Auto)

-(void)autoSetup{
	NSLog(@"PGTutorSVController - autoSetup");
	
	Think *think = [[Think alloc] initWithScene:kSceneCodePGTutorSV tag:[[self view] tag] event: kEventCodeAutoSetup resource: self];
	if (![think act])
		NSLog(@"[think act] failed");
	[think release];
	
}
-(void)autoRefresh{NSLog(@"PGTutorSVController - autoRefresh");}

@end
