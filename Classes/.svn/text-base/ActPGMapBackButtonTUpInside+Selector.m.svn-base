//
//  ActPGMapBackButtonTUpInside+Selector.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMapBackButtonTUpInside+Selector.h"

#import "MUi.h"
@implementation ActPGMapBackButtonTUpInside(Selector)

-(void)switchViewToPGMainWithTFlipFromL{
	if (![MUi switchViewWithController:@"PGMainSVController" transition:UIViewAnimationTransitionFlipFromLeft])
		NSLog(@"ActPGMapBackButtonTUpInside - switchViewWithController: failed");	
}

-(void)switchViewToPGMainWithTCurlDown{
	if (![MUi switchViewWithController:@"PGMainSVController" transition:UIViewAnimationTransitionCurlUp])
		NSLog(@"ActPGMapBackButtonTUpInside - switchViewWithController: failed");	
}
@end
