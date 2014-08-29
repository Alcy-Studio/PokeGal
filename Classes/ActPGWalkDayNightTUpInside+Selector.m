//
//  ActPGWalkDayNightTUpInside+Selector.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGWalkDayNightTUpInside+Selector.h"

//-(void)switchViewToPGScheduleWithTFlipFromR
#import "MUi.h"
#import "PGScheduleViewController.h"

@implementation ActPGWalkDayNightTUpInside(Selector)

-(void)modalViewToPGWeatherWithCV{
	[MUi presentModal:@"PGWeatherViewController" transition:UIModalTransitionStyleCoverVertical animated:YES];
	
}

//-(void)modalViewToPGWeatherWithTFlipFromR{
//	[MUi presentModal:@"PGWeatherViewController" transition:UIModalTransitionStyleCoverVertical animated:YES];
//	
//}

-(void)switchViewToPGDetailWithTCurlDown{
	if (![MUi switchViewWithController:@"PGDetailViewController" transition:UIViewAnimationTransitionCurlDown])
		NSLog(@"ActPGWalkDayNightTUpInside - switchViewWithController: failed");	
}

-(void)switchViewToPGScheduleWithTFlipFromR{
	if (![MUi switchViewWithController:@"PGScheduleViewController" transition:UIViewAnimationTransitionFlipFromRight])
		NSLog(@"ActPGAttrSButtonTUpInside - switchViewWithController: failed");	
}

-(void)switchViewToPGScheduleWithTCurlUp{
	if (![MUi switchViewWithController:@"PGScheduleViewController" transition:UIViewAnimationTransitionCurlUp])
		NSLog(@"ActPGAttrSButtonTUpInside - switchViewWithController: failed");	
}

-(void)presentModalSchedule{
	[MUi presentModal:@"PGScheduleViewController" transition:UIModalTransitionStyleFlipHorizontal animated:YES];
}

@end
