//
//  ActPGWeatherBackTUpInside+Selector.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGWeatherBackTUpInside+Selector.h"

//Method
#import "MUi.h"

@implementation ActPGWeatherBackTUpInside(Selector)

-(void)switchViewToPGMainWithTFlipFromL{
	if (![MUi switchViewWithController:@"PGMainSVController" transition:UIViewAnimationTransitionFlipFromLeft])
		NSLog(@"ActPGTitleContinueTUpInside - switchViewWithController: failed");	
}

-(void)switchViewToPGMainWithTCurlDown{
	if (![MUi switchViewWithController:@"PGMainSVController" transition:UIViewAnimationTransitionCurlDown])
		NSLog(@"ActPGTitleContinueTUpInside - switchViewWithController: failed");	
}

-(void)dismissModal{
	[MUi dismissModal];
}
@end
