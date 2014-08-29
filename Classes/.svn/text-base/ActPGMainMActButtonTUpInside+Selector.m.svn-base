//
//  ActPGMainMActButtonTUpInside+Selector.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMainMActButtonTUpInside+Selector.h"

#import "MUi.h"
#import "MGirl.h"

//Constants
#import "ConstantsGlossaryDatabase.h"
#import "ConstantsTmpAction.h"
#import "ConstantsPGMConfirm.h"
#import "ConstantsSceneCode.h"
#import "ConstantsAuditorUserDefaults.h"
#import "ConstantsPGMAlert.h"

@implementation ActPGMainMActButtonTUpInside(Selector)
/*
-(void)switchViewToPGSmsWithTFlipFromR{
	if (![MUi switchViewWithController:@"PGSMSViewController" transition:UIViewAnimationTransitionFlipFromRight])
		NSLog(@"ActPGMainMActButtonTUpInside - switchViewWithController: failed");	
}
*/

-(void)setAlertViewtoWarnActSms{
	NSLog(@"setAlertViewtoWarnActSms");
	
	//setAction
	//[MUi modifyUserDefaultWithKey:kTmpAction value:kTmpActionPGMainMButton];
	
	//set Role for alert
	[MUi modifyTag:kAlertTitleLabel role:kAudUDNumPGMAlertTitle1 scene:kSceneCodePGMAlert];
	[MUi modifyTag:kAlertTextView role:kAudUDNumPGMAlertTextView1 scene:kSceneCodePGMAlert];
	
	[MUi presentModal:@"PGMAlertViewController" transition:UIModalTransitionStyleCoverVertical animated:YES];
	
}

/*
-(void)setAlertViewtoWarnActSms{
	[MUi alertViewSmsAtWarning];
}
*/
-(void)setTmpAction{
	[MUi modifyUserDefaultWithKey:kTmpAction value:kTmpActionPGMainMButton];
	
}

-(void)setRoleForConfirm{
	[MUi modifyTag:kConfirmTitleLabel role:kAudUDNumPGMConfirmTitle2 scene:kSceneCodePGMConfirm];
	[MUi modifyTag:kConfirmTextView role:kAudUDNumPGMConfirmTextView2 scene:kSceneCodePGMConfirm];

}
//Modal 
-(void)presentModalConfirm{
	
	[MUi presentModal:@"PGMConfirmViewController" transition:UIModalTransitionStylePartialCurl animated:YES];

}

/*
-(void)deductAt{
	[MGirl deductAtSms];
	
}
*/
@end
