//
//  ActPGMSelectionAutoSetup+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMSelectionAutoSetup+Selector.h"

//Additional
#import "PGMSelectionViewController.h"

//Method
#import "MLoad.h"

//Constants
#import "ConstantsPGMSelection.h"

@interface ActPGMSelectionAutoSetup()

-(void)setViewTopTitle;


@end


@implementation ActPGMSelectionAutoSetup(Selector)

-(void)setViewWithTag{
	[self setViewTopTitle];
	for (NSUInteger i = 1; i <= kSelectionViewTotal; i++) {
		[MLoad setViewWithTag:i controller:self.resource];
	}
}

-(void)setViewTopTitle{
	[(UILabel*)[[(PGMSelectionViewController*)self.resource view] viewWithTag:kSelectionViewTitle] 
	 setText:NSLocalizedString(kSelectionTitleText,  @"Localized")];
	
}
@end
