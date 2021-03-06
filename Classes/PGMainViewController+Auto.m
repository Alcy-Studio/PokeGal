//
//  PGMainViewController+Auto.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "PGMainViewController+Auto.h"

#import "PGMainViewController+Ad.h"

//Additional
#import "ScreenLocking.h"
#import "Think.h"
#import "Think+Act.h"

//Constants
#import "ConstantsSceneCode.h"
#import "ConstantsEventCode.h"
//#import "ConstantsAuditorUserDefaults.h"
#import "ConstantsRefreshFrequency.h"

//Repo
#import "MAct.h"

@interface PGMainViewController()

-(void)setAt;


@end


@implementation PGMainViewController(Auto)

-(void)autoSetup{
	NSLog(@"PGMainViewController - autoSetup");
	
	Think *think = [[Think alloc] initWithScene:kSceneCodePGMain tag:[[self view] tag] event: kEventCodeAutoSetup resource: self];
	if (![think act])
		NSLog(@"[think act] failed");
	[think release];
	
}
-(void)autoRefresh{
	NSLog(@"PGMainViewController - autoRefresh");
	
	
	
	timer = [NSTimer scheduledTimerWithTimeInterval:kPGAllRefreshFreq 
									target:self 
								  selector:@selector(setAt)
								  userInfo:nil 
								   repeats:YES];
	//[[NSRunLoop currentRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
}

-(void)setAt{
	MAct* act = [[MAct alloc]initWithResource:self];
	[act setActionAtRefresh];
	[act release];
}

-(void)autoAd{
	NSLog(@"PGMainViewController - autoRefresh");
	[self createADBannerView];
}

@end
