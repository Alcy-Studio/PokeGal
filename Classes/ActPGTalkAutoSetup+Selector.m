//
//  ActPGTalkAutoSetup+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTalkAutoSetup+Selector.h"

//Additional
#import "PGTalkViewController.h"

//Method
#import "MLoad.h"

//Constants
#import "ConstantsPGTalk.h"

@interface ActPGTalkAutoSetup()

-(void)setViewTopTitle;


@end


@implementation ActPGTalkAutoSetup(Selector)

-(void)setViewWithTag{
	[self setViewTopTitle];

	for (NSUInteger i = 1; i <= kTalkViewTotal; i++) {
		[MLoad setViewWithTag:i controller:self.resource];
	}
}

-(void)setViewTopTitle{
	[(UILabel*)[[(PGTalkViewController*)self.resource view] viewWithTag:kTalkViewTitle] 
	 setText:NSLocalizedString(kTalkTitleText,  @"Localized")];
	
}

@end
