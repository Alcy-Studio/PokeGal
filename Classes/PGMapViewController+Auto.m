//
//  PGMapViewController+Auto.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "PGMapViewController+Auto.h"

#import "PGMapViewController+Ad.h"

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
@implementation PGMapViewController(Auto)

-(void)autoSetup{
	NSLog(@"PGMapViewController - autoSetup");
	
	Think *think = [[Think alloc] initWithScene:kSceneCodePGMap tag:[[self view] tag] event: kEventCodeAutoSetup resource: self];
	if (![think act])
		NSLog(@"[think act] failed");
	[think release];
	
}
-(void)autoRefresh{
	NSLog(@"PGMapViewController - autoRefresh");
	//[NSTimer scheduledTimerWithTimeInterval:3 
//									 target:[[[MAct alloc]initWithResource:self]autorelease] 
//								   selector:@selector(setActionAtRefresh)
//								   userInfo:nil 
//									repeats:YES];
}

-(void)autoAd{
	[self createADBannerView];
}
@end
