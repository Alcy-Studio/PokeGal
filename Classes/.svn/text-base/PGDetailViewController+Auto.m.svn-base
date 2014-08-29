//
//  PGDetailViewController+Auto.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "PGDetailViewController+Auto.h"

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
@implementation PGDetailViewController(Auto)

-(void)autoSetup{
	NSLog(@"PGDetailViewController - autoSetup");
	
	Think *think = [[Think alloc] initWithScene:kSceneCodePGDetail tag:[[self view] tag] event: kEventCodeAutoSetup resource: self];
	if (![think act])
		NSLog(@"[think act] failed");
	[think release];
	
}
-(void)autoRefresh{NSLog(@"PGDetailViewController - autoRefresh");}

@end
