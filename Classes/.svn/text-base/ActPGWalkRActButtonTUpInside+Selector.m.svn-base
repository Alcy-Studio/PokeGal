//
//  ActPGWalkRActButtonTUpInside+Selector.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGWalkRActButtonTUpInside+Selector.h"

#import "MUi.h"

#import "ConstantsPGMConfirm.h"
#import "ConstantsSceneCode.h"
#import "ConstantsAuditorUserDefaults.h"
#import "ConstantsTmpAction.h"

@implementation ActPGWalkRActButtonTUpInside(Selector)

-(void)switchViewToPGMainWithTFlipFromL{
	if (![MUi switchViewWithController:@"PGMainSVController" transition:UIViewAnimationTransitionFlipFromLeft])
		NSLog(@"ActPGWalkRActButtonTUpInside - switchViewWithController: failed");	
}

-(void)setRoleForConfirmGo{
	[MUi modifyTag:kConfirmTitleLabel role:kAudUDNumPGMConfirmTitle6 scene:kSceneCodePGMConfirm];
	[MUi modifyTag:kConfirmTextView role:kAudUDNumPGMConfirmTextView6 scene:kSceneCodePGMConfirm];
	
}
//Modal 
-(void)presentModalConfirm{
	
	[MUi presentModal:@"PGMConfirmViewController" transition:UIModalTransitionStylePartialCurl animated:YES];
}

-(void)setTmpAction{
	[MUi modifyUserDefaultWithKey:kTmpAction value:kTmpActionLeaveButton];
	
}
@end
