//
//  ActPGTitleBottomButtonTUpInside+Selector.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTitleBottomButtonTUpInside+Selector.h"

//-(void)switchViewToPGScheduleWithTFlipFromR
#import "MUi.h"
#import "PGScheduleViewController.h"

#import "ConstantsTmpAction.h"
#import "ConstantsPGTitle.h"

@implementation ActPGTitleBottomButtonTUpInside(Selector)

-(void)directToRating{
	//Full Version
[[UIApplication sharedApplication] 
 openURL:[NSURL URLWithString: NSLocalizedString(kTitleViewLinkToFull, @"Localized")]];

	

}

//-(void)presentModalConfirm{
//	[MUi presentModal:@"PGMConfirmViewController" transition:UIModalTransitionStylePartialCurl animated:YES];
//}
//
//-(void)setTmpAction{
//	[MUi modifyUserDefaultWithKey:kTmpAction value:kTmpActionPGTitleBottomButton];
//	
//}
//
//-(void)setRoleForConfirm{
//	[MUi modifyTag:kConfirmTitleLabel role:kAudUDNumPGMConfirmTitle7 scene:kSceneCodePGMConfirm];
//	[MUi modifyTag:kConfirmTextView role:kAudUDNumPGMConfirmTextView7 scene:kSceneCodePGMConfirm];
//	
//}

@end
