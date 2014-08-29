//
//  PGWalkViewController+Auto.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "PGWalkViewController+Auto.h"

#import "PGWalkViewController+Ad.h"

//Additional
#import "ScreenLocking.h"
#import "Think.h"
#import "Think+Act.h"

//Constants
#import "ConstantsSceneCode.h"
#import "ConstantsEventCode.h"
//#import "ConstantsAuditorUserDefaults.h"
//#import "ConstantsRefreshFrequency.h"

//Repo
//#import "MAct.h"

@interface PGWalkViewController()

//-(void)setAt;


@end


@implementation PGWalkViewController(Auto)

-(void)autoSetup{
	NSLog(@"PGWalkViewController - autoSetup");
	
	Think *think = [[Think alloc] initWithScene:kSceneCodePGWalk tag:[[self view] tag] event: kEventCodeAutoSetup resource: self];
	if (![think act])
		NSLog(@"[think act] failed");
	[think release];
	
}
-(void)autoRefresh{
	NSLog(@"PGWalkViewController - autoRefresh");
	
	Think *think = [[Think alloc] initWithScene:kSceneCodePGWalk tag:[[self view] tag] event: kEventCodeAutoRefresh resource: self];
	if (![think act])
		NSLog(@"[think act] failed");
	[think release];
	
	/*
	timer = [NSTimer scheduledTimerWithTimeInterval:kPGAllRefreshFreq 
											 target:self 
										   selector:@selector(setAt)
										   userInfo:nil 
											repeats:YES];
	 */
	//[[NSRunLoop currentRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
}

/*
-(void)setAt{
	MAct* act = [[MAct alloc]initWithResource:self];
	[act setActionAtRefresh];
	[act release];
}
*/

-(void)autoAd{
	[self createADBannerView];
}
@end
