//
//  PGDateViewController+Auto.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "PGDateViewController+Auto.h"

#import "PGDateViewController+Ad.h"

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

@implementation PGDateViewController(Auto)

-(void)autoSetup{
	NSLog(@"PGDateViewController - autoSetup");
	
	Think *think = [[Think alloc] initWithScene:kSceneCodePGDate tag:[[self view] tag] event: kEventCodeAutoSetup resource: self];
	if (![think act])
		NSLog(@"[think act] failed");
	[think release];
	
}
-(void)autoRefresh{
	NSLog(@"PGDateViewController - autoRefresh");
	[NSTimer scheduledTimerWithTimeInterval:kPGAllRefreshFreq 
									 target:[[[MAct alloc]initWithResource:self]autorelease] 
								   selector:@selector(setActionAtRefresh)
								   userInfo:nil 
									repeats:YES];
}

-(void)autoAd{
	[self createADBannerView];
}
@end
