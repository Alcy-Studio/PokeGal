//
//  ActPGSVMainAutoSetup+Selector.m
//  frdfrd
//
//  Created by westbugs on 11-03-27.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "ActPGSVMainAutoSetup+Selector.h"

#import "MUi.h"

#import "ConstantsAuditorUserDefaults.h"
#import "ConstantsSceneCode.h"

#import "ConstantsPGAchi.h"
#import "ConstantsPGAttr.h"
#import "ConstantsPGEvent.h"

#import "ConstantsPGMConfirm.h"
#import "ConstantsPGMAlert.h"

@implementation ActPGSVMainAutoSetup(Selector)

-(void)modifyDirectRole{
	NSLog(@"ActPGSVMainAutoSetup - modifyDirectRole");
	
	[MUi modifyTag:kAchiSceneBackground role:kAudUDNumPGAchiBgdBlueTile scene:kSceneCodePGAchi];
	[MUi modifyTag:kAttrSceneBackground role:kAudUDNumPGAttrBgdBlueTile scene:kSceneCodePGAttr];

	[MUi modifyTag:kEventSceneBackground role:kAudUDNumPGEventBgdBlueTile scene:kSceneCodePGEvent];

	//set Confirm
	[MUi modifyTag:kConfirmSceneBackground role:kAudUDNumPGMConfirmBgdBlueTile scene:kSceneCodePGMConfirm];

	//set Alert
	[MUi modifyTag:kAlertSceneBackground role:kAudUDNumPGMAlertBgdBlueTile scene:kSceneCodePGMAlert];

}

@end
