//
//  ActPGTitleWebsiteButtonTUpInside+Selector.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTitleWebsiteButtonTUpInside+Selector.h"

//Method
#import "MUi.h"

//Constants
#import "ConstantsTmpTutor.h"
#import "ConstantsSceneCode.h"
@implementation ActPGTitleWebsiteButtonTUpInside(Selector)

-(void)switchViewToPGTutorMenuWithTFlipFromR{
	if (![MUi switchViewWithController:@"PGTutorMenuViewController" transition:UIViewAnimationTransitionFlipFromRight])
		NSLog(@"ActPGTitleWebsiteButtonTUpInside - switchViewWithController: failed");	
}

@end
