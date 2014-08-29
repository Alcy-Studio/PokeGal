//
//  PGAchiViewController+Auto.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "PGAchiViewController+Auto.h"

//Additional
#import "ScreenLocking.h"
#import "Think.h"
#import "Think+Act.h"

//Constants
#import "ConstantsSceneCode.h"
#import "ConstantsEventCode.h"

@implementation PGAchiViewController(Auto)

-(void)autoSetup{
	NSLog(@"PGAchiViewController - autoSetup");
	
	Think *think = [[Think alloc] initWithScene:kSceneCodePGAchi tag:[[self view] tag] event: kEventCodeAutoSetup resource: self];
	if (![think act])
		NSLog(@"[think act] failed");
	[think release];
	
}
-(void)autoRefresh{NSLog(@"PGAchiViewController - autoRefresh");}

@end
