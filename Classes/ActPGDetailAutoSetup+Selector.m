//
//  ActPGDetailAutoSetup+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGDetailAutoSetup+Selector.h"

//Additional
#import "PGDetailViewController.h"

//Method
#import "MLoad.h"

//Constants
#import "ConstantsPGDetail.h"

@interface ActPGDetailAutoSetup()

-(void)setViewTopTitle;
-(void)setHint;
-(void)setViewTextEffect;

@end

@implementation ActPGDetailAutoSetup(Selector)

-(void)setViewWithTag{
	[self setViewTopTitle];
	[self setHint];
	[self setViewTextEffect];
	for (NSUInteger i = 1; i <= kDetailViewTotal; i++) {
		if (i != kDetailViewHelp && i != kDetailHintLabel )
			[MLoad setViewWithTag:i controller:self.resource];
	}
}

-(void)setHint{
		
	[(UILabel*)[[(PGDetailViewController*)self.resource view] viewWithTag:kDetailHintLabel] 
	 setText:[NSString stringWithFormat:@"%@", NSLocalizedString(kDetailHintText, @"Localized")]];
}

-(void)setViewTopTitle{
	[(UILabel*)[[(PGDetailViewController*)self.resource view] viewWithTag:kDetailViewTitle] 
	 setText:NSLocalizedString(kDetailTitleText,  @"Localized")];
	
}

-(void)setViewTextEffect{
	[(UILabel*)[[(PGDetailViewController*)self.resource view] viewWithTag:kDetailViewEffect1] 
	 setText:NSLocalizedString(kDetailTextEffect1,  @"Localized")];
	
	[(UILabel*)[[(PGDetailViewController*)self.resource view] viewWithTag:kDetailViewEffect2] 
	 setText:NSLocalizedString(kDetailTextEffect2,  @"Localized")];
	
	[(UILabel*)[[(PGDetailViewController*)self.resource view] viewWithTag:kDetailViewEffect3] 
	 setText:NSLocalizedString(kDetailTextEffect3,  @"Localized")];
	
}

@end
