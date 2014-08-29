//
//  ActPGScheduleBackButtonTUpInside+Selector.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGScheduleBackButtonTUpInside+Selector.h"

//Method
#import "MUi.h"

@implementation ActPGScheduleBackButtonTUpInside(Selector)

-(void)switchViewToPGMainWithTFlipFromL{
	if (![MUi switchViewWithController:@"PGMainSVController" transition:UIViewAnimationTransitionFlipFromLeft])
		NSLog(@"ActPGTitleContinueButtonTUpInside - switchViewWithController: failed");	
}

-(void)switchViewToPGMainWithTCurlDown{
	if (![MUi switchViewWithController:@"PGMainSVController" transition:UIViewAnimationTransitionCurlDown])
		NSLog(@"ActPGTitleContinueButtonTUpInside - switchViewWithController: failed");	
}

-(void)dismissModal{
	[MUi dismissModal];
}
@end
