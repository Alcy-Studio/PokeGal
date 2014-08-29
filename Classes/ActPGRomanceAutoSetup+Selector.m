//
//  ActPGRomanceAutoSetup+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGRomanceAutoSetup+Selector.h"

//Additional
#import "PGRomanceViewController.h"

//Method
#import "MLoad.h"

//Constants
#import "ConstantsPGRomance.h"
@interface ActPGRomanceAutoSetup()

-(void)setViewTopTitle;


@end

@implementation ActPGRomanceAutoSetup(Selector)

-(void)setViewWithTag{
	[self setViewTopTitle];

	for (NSUInteger i = 1; i <= kRomanceViewTotal; i++) {
		[MLoad setViewWithTag:i controller:self.resource];
	}
}

-(void)setViewTopTitle{
	[(UILabel*)[[(PGRomanceViewController*)self.resource view] viewWithTag:kRomanceViewTitle] 
	 setText:NSLocalizedString(kRomanceTitleText,  @"Localized")];
	
}

@end
