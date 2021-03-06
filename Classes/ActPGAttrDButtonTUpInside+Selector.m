//
//  ActPGAttrDButtonTUpInside+Selector.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGAttrDButtonTUpInside+Selector.h"

//-(void)switchViewToPGScheduleWithTFlipFromR
#import "MUi.h"
#import "PGScheduleViewController.h"

@implementation ActPGAttrDButtonTUpInside(Selector)

-(void)switchViewToPGDetailWithTCurlDown{
	if (![MUi switchViewWithController:@"PGDetailViewController" transition:UIViewAnimationTransitionCurlDown])
		NSLog(@"ActPGAttrDButtonTUpInside - switchViewWithController: failed");	
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
