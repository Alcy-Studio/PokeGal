//
//  PGAttrViewController+Auto.m
//  frdfrd
//
//  Created by westbugs on 10-10-12.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "PGAttrViewController+Auto.h"

#import "PGAttrViewController+Ad.h"

//Additional
#import "Setting+Application.h"

//Constants
#import "ConstantsPGAttr.h"

/* for auto */
//Additional
#import "ScreenLocking.h"
#import "Think.h"
#import "Think+Act.h"

//Constants
#import "ConstantsSceneCode.h"
#import "ConstantsEventCode.h"

//Repo
#import "MTime.h"

@interface PGAttrViewController()

//System Method
-(void)setAuto;

@end

@implementation PGAttrViewController(Auto)

#pragma mark System

-(void)autoSetup{
	NSLog(@"PGAttrViewController - autoSetup");
	
	Think *think = [[Think alloc] initWithScene:kSceneCodePGAttr tag:[[self view] tag] event: kEventCodeAutoSetup resource: self];
	if (![think act])
		NSLog(@"[think act] failed");
	[think release];
	
}
-(void)autoRefresh{
	
	NSLog(@"PGAttrViewController - autoRefresh");
	[self setAuto];
}



-(void)setAuto{
	//[self showTimeWithTag:kDefaultTimeTag];
	// timer is set & will be triggered each second 
	MTime* time = [[MTime alloc] initWithResource:self];
	[time showTimeWithTag:kAttrTimeLabel];
	[time showWeekdayWithTag:kAttrWeekLabel];
	[time release];

    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(setTime)userInfo:nil repeats:YES];


}

-(void)setTime{
	MTime* time = [[MTime alloc] initWithResource:self];
	[time PGAttrShowTimeDate];
	[time release];
}

-(void)autoAd{
	[self createADBannerView];
}
@end
