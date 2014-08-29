//
//  ActPGMAlertAutoSetup+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMAlertAutoSetup+Selector.h"

//Additional
#import "PGMAlertViewController.h"

//Method
#import "MLoad.h"

//Constants
#import "ConstantsPGMAlert.h"

@interface ActPGMAlertAutoSetup()

-(void)setViewTopTitle;
-(void)setViewTopLeftLabel;


@end


@implementation ActPGMAlertAutoSetup(Selector)

-(void)setViewWithTag{
	[self setViewTopTitle];
	[self setViewTopLeftLabel];

	for (NSUInteger i = 1; i <= kAlertViewTotal; i++) {
		[MLoad setViewWithTag:i controller:self.resource];
	}
}

-(void)setViewTopTitle{
	
	//NSString* localizedStr = [[NSBundle mainBundle] 
//								 localizedStringForKey:
//								 [[NSUserDefaults standardUserDefaults] objectForKey:@"preferredLang"] 
//								 value:kAlertTitleText table:nil];
//	
//	[(UILabel*)[[(PGMAlertViewController*)self.resource view] viewWithTag:kAlertViewTitle] 
//	 setText:NSLocalizedString(localizedStr,  @"Localized")];
//
//	NSLog(@"%@: %@",[[NSUserDefaults standardUserDefaults] objectForKey:@"preferredLang"], localizedStr );
//	
	[(UILabel*)[[(PGMAlertViewController*)self.resource view] viewWithTag:kAlertViewTitle] 
	 setText:NSLocalizedString(kAlertTitleText,  @"Localized")];
	
}

-(void)setViewTopLeftLabel{
	[(UILabel*)[[(PGMAlertViewController*)self.resource view] viewWithTag:kAlertTopLeftLabel] 
	 setText:NSLocalizedString(kAlertTopLeftLabelText,  @"Localized")];
	
}
@end
