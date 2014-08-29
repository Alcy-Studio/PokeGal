//
//  ActPGMConfirmAutoSetup+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMConfirmAutoSetup+Selector.h"

//Additional
#import "PGMConfirmViewController.h"

//Method
#import "MLoad.h"
#import "MUi.h"
//Constants
//#import "ConstantsTmpAction.h"

#import "ConstantsPGMConfirm.h"
//#import "ConstantsSceneCode.h"
//#import "ConstantsAuditorUserDefaults.h"

@interface ActPGMConfirmAutoSetup()

-(void)setViewTopTitle;
-(void)setViewTopLeftLabel;


@end


@implementation ActPGMConfirmAutoSetup(Selector)

/*
-(void)setRole{
	NSInteger i = [[NSUserDefaults standardUserDefaults] integerForKey:kTmpAction];
	
	//Title & message role 
	switch (i) {
		case kTmpActionPGMainLButton:
			[MUi modifyTag:kConfirmTitleLabel role:kAudUDNumPGMConfirmTitle1 scene:kSceneCodePGMConfirm];
			[MUi modifyTag:kConfirmTextView role:kAudUDNumPGMConfirmTextView1 scene:kSceneCodePGMConfirm];
			break;
		case kTmpActionPGMainMButton:
			[MUi modifyTag:kConfirmTitleLabel role:kAudUDNumPGMConfirmTitle2 scene:kSceneCodePGMConfirm];
			[MUi modifyTag:kConfirmTextView role:kAudUDNumPGMConfirmTextView2 scene:kSceneCodePGMConfirm];
			break;
		case kTmpActionPGMainRButton:
			[MUi modifyTag:kConfirmTitleLabel role:kAudUDNumPGMConfirmTitle3 scene:kSceneCodePGMConfirm];
			[MUi modifyTag:kConfirmTextView role:kAudUDNumPGMConfirmTextView3 scene:kSceneCodePGMConfirm];
			break;
		default:
			break;
	}
}
*/
-(void)setViewWithTag{
	[self setViewTopTitle];
	[self setViewTopLeftLabel];

	for (NSUInteger i = 1; i <= kConfirmViewTotal; i++) {
		[MLoad setViewWithTag:i controller:self.resource];
	}
}

-(void)setViewTopTitle{
	[(UILabel*)[[(PGMConfirmViewController*)self.resource view] viewWithTag:kConfirmViewTitle] 
	 setText:NSLocalizedString(kConfirmTitleText,  @"Localized")];
	
}

-(void)setViewTopLeftLabel{
	[(UILabel*)[[(PGMConfirmViewController*)self.resource view] viewWithTag:kConfirmTopLeftLabel] 
	 setText:NSLocalizedString(kConfirmTopLeftLabelText,  @"Localized")];
	
}

@end
