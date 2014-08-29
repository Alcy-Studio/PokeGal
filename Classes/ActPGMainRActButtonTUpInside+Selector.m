//
//  ActPGMainRActButtonTUpInside+Selector.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMainRActButtonTUpInside+Selector.h"

#import "MUi.h"
#import "MGirl.h"

#import "ConstantsTmpAction.h"
#import "ConstantsPGMConfirm.h"
#import "ConstantsSceneCode.h"
#import "ConstantsAuditorUserDefaults.h"

#import "ConstantsPGMAlert.h"
@implementation ActPGMainRActButtonTUpInside(Selector)
/*
-(void)switchViewToPGMapWithTFlipFromR{
	if (![MUi switchViewWithController:@"PGMapViewController" transition:UIViewAnimationTransitionFlipFromRight])
		NSLog(@"ActPGMainRActButtonTUpInside - switchViewWithController: failed");	
}
*/

-(void)setAlertViewtoWarnActMove{
	NSLog(@"setAlertViewtoWarnActMove");
	
	//setAction
	//[MUi modifyUserDefaultWithKey:kTmpAction value:kTmpActionPGMainMButton];
	
	//set Role for alert
	[MUi modifyTag:kAlertTitleLabel role:kAudUDNumPGMAlertTitle3 scene:kSceneCodePGMAlert];
	[MUi modifyTag:kAlertTextView role:kAudUDNumPGMAlertTextView3 scene:kSceneCodePGMAlert];
	
	[MUi presentModal:@"PGMAlertViewController" transition:UIModalTransitionStyleCoverVertical animated:YES];
	
}

/*
-(void)setAlertViewtoWarnActMove{
	[MUi alertViewMoveAtWarning];
}
*/
/*
-(void)deductAt{
	[MGirl deductAtMove];
	
}
*/
-(void)setTmpAction{
	[MUi modifyUserDefaultWithKey:kTmpAction value:kTmpActionPGMainRButton];
	
}

-(void)setRoleForConfirm{
	[MUi modifyTag:kConfirmTitleLabel role:kAudUDNumPGMConfirmTitle3 scene:kSceneCodePGMConfirm];
	[MUi modifyTag:kConfirmTextView role:kAudUDNumPGMConfirmTextView3 scene:kSceneCodePGMConfirm];
	
}
//Modal 
-(void)presentModalConfirm{
	
	[MUi presentModal:@"PGMConfirmViewController" transition:UIModalTransitionStylePartialCurl animated:YES];
}
@end
