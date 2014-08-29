//
//  ActPGMainLActButtonTUpInside+Selector.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMainLActButtonTUpInside+Selector.h"

#import "MUi.h"
#import "MGirl.h"

//#import "ConstantsActionAlert.h"
#import "ConstantsTmpAction.h"
#import "ConstantsPGMConfirm.h"
#import "ConstantsSceneCode.h"
#import "ConstantsAuditorUserDefaults.h"

#import "ConstantsPGMAlert.h"

@implementation ActPGMainLActButtonTUpInside(Selector)

/*
-(void)switchViewToPGArrangeWithTFlipFromR{
	if (![MUi switchViewWithController:@"PGArrangeViewController" transition:UIViewAnimationTransitionFlipFromRight])
		NSLog(@"ActPGMainLActButtonTUpInside - switchViewWithController: failed");	
}
*/

-(void)setAlertViewtoWarnActCall{
	NSLog(@"setAlertViewtoWarnActCall");
	
	//setAction
	//[MUi modifyUserDefaultWithKey:kTmpAction value:kTmpActionPGMainLButton];
	
	//set Role for alert
	[MUi modifyTag:kAlertTitleLabel role:kAudUDNumPGMAlertTitle2 scene:kSceneCodePGMAlert];
	[MUi modifyTag:kAlertTextView role:kAudUDNumPGMAlertTextView2 scene:kSceneCodePGMAlert];
	
	[MUi presentModal:@"PGMAlertViewController" transition:UIModalTransitionStyleCoverVertical animated:YES];
	
}

/*
-(void)setAlertViewtoWarnActCall{
	[MUi alertViewCallAtWarning];
	
	
}
*/

/*
-(void)deductAt{
	[MGirl deductAtCall];
	
}
*/

-(void)setTmpAction{
	[MUi modifyUserDefaultWithKey:kTmpAction value:kTmpActionPGMainLButton];

}

-(void)setRoleForConfirm{
	[MUi modifyTag:kConfirmTitleLabel role:kAudUDNumPGMConfirmTitle1 scene:kSceneCodePGMConfirm];
	[MUi modifyTag:kConfirmTextView role:kAudUDNumPGMConfirmTextView1 scene:kSceneCodePGMConfirm];
}
 
//Modal 
-(void)presentModalConfirm{
	
	[MUi presentModal:@"PGMConfirmViewController" transition:UIModalTransitionStylePartialCurl animated:YES];
}

@end
