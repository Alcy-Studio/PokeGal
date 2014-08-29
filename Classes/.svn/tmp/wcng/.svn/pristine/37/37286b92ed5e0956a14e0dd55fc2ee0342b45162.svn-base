//
//  PGTitleViewController+Auto.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "PGTitleViewController+Auto.h"

//Additional
#import "ScreenLocking.h"
#import "Think.h"
#import "Think+Act.h"

//Constants
#import "ConstantsSceneCode.h"
#import "ConstantsEventCode.h"
@implementation PGTitleViewController(Auto)

-(void)autoSetup{
	NSLog(@"PGTitleViewController - autoSetup");
	
	Think *think = [[Think alloc] initWithScene:kSceneCodePGTitle tag:[[self view] tag] event: kEventCodeAutoSetup resource: self];
	if (![think act])
		NSLog(@"[think act] failed");
	[think release];
	
}
-(void)autoRefresh{NSLog(@"PGTitleViewController - autoRefresh");}

@end
