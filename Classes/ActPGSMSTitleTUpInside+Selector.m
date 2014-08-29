//
//  ActPGSMSTitleTUpInside+Selector.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGSMSTitleTUpInside+Selector.h"

//Additional

//Method
#import "MUi.h"

//Constants
#import "ConstantsTmpTutor.h"
#import "ConstantsSceneCode.h"
#import "ConstantsPGMConfirm.h"

#import "ConstantsAuditorUserDefaults.h"
#import "ConstantsTmpAction.h"

@implementation ActPGSMSTitleTUpInside(Selector)

-(void)setTmpAction{
	[MUi modifyUserDefaultWithKey:kTmpAction value:kTmpActionPGMainTitleButton];
	
}

-(void)setRoleForConfirm{
	[MUi modifyTag:kConfirmTitleLabel role:kAudUDNumPGMConfirmTitle13 scene:kSceneCodePGMConfirm];
	[MUi modifyTag:kConfirmTextView role:kAudUDNumPGMConfirmTextView13 scene:kSceneCodePGMConfirm];
	
}
//Modal 
-(void)presentModalConfirm{
	
	[MUi presentModal:@"PGMConfirmViewController" transition:UIModalTransitionStylePartialCurl animated:YES];
}

@end
