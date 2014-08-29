//
//  ActPGTutorMenuBackButtonTUpInside+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTutorMenuBackButtonTUpInside+Selector.h"

//Additional

//Method
#import "MUi.h"

//Constants

@implementation ActPGTutorMenuBackButtonTUpInside(Selector)

-(void)switchViewToPGTitleWithTFlipFromL{
	if (![MUi switchViewWithController:@"PGTitleViewController" transition:UIViewAnimationTransitionFlipFromLeft])
		NSLog(@"ActPGTutorMenuBackButtonTUpInside - switchViewWithController: failed");	
}

@end
