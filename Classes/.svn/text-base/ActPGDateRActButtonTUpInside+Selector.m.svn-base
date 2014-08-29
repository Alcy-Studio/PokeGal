//
//  ActPGDateRActButtonTUpInside+Selector.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGDateRActButtonTUpInside+Selector.h"

#import "MUi.h"

#import "ConstantsPGMConfirm.h"
#import "ConstantsAuditorUserDefaults.h"
#import "ConstantsSceneCode.h"
#import "ConstantsTmpAction.h"

@implementation ActPGDateRActButtonTUpInside(Selector)

-(void)switchViewToPGMapWithTFlipFromL{
	if (![MUi switchViewWithController:@"PGMapViewController" transition:UIViewAnimationTransitionFlipFromLeft])
		NSLog(@"ActPGDateRActButtonTUpInside - switchViewWithController: failed");	
}

-(void)setRoleForConfirm{
	[MUi modifyTag:kConfirmTitleLabel role:kAudUDNumPGMConfirmTitle6 scene:kSceneCodePGMConfirm];
	[MUi modifyTag:kConfirmTextView role:kAudUDNumPGMConfirmTextView6 scene:kSceneCodePGMConfirm];
	
}
//Modal 
-(void)presentModalConfirm{
	
	[MUi presentModal:@"PGMConfirmViewController" transition:UIModalTransitionStylePartialCurl animated:YES];
}

-(void)setTmpAction{
	[MUi modifyUserDefaultWithKey:kTmpAction value:kTmpActionDateLeaveButton];
	
}

@end
