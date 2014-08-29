//
//  ActPGSVDateAutoSetup+Selector.m
//  frdfrd
//
//  Created by westbugs on 11-03-27.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "ActPGSVDateAutoSetup+Selector.h"

#import "MUi.h"

#import "ConstantsAuditorUserDefaults.h"
#import "ConstantsSceneCode.h"

#import "ConstantsPGAchi.h"
#import "ConstantsPGAttr.h"
#import "ConstantsPGEvent.h"

#import "ConstantsPGMConfirm.h"
#import "ConstantsPGMAlert.h"

@implementation ActPGSVDateAutoSetup(Selector)

-(void)modifyDirectRole{
	NSLog(@"ActPGSVDateAutoSetup - modifyDirectRole");
	
	[MUi modifyTag:kAchiSceneBackground role:kAudUDNumPGAchiBgdPinkTile scene:kSceneCodePGAchi];
	[MUi modifyTag:kAttrSceneBackground role:kAudUDNumPGAttrBgdPinkTile scene:kSceneCodePGAttr];
	
	[MUi modifyTag:kEventSceneBackground role:kAudUDNumPGEventBgdPinkTile scene:kSceneCodePGEvent];
	
	//set Confirm
	[MUi modifyTag:kConfirmSceneBackground role:kAudUDNumPGMConfirmBgdPinkTile scene:kSceneCodePGMConfirm];
	
	//set Alert
	[MUi modifyTag:kAlertSceneBackground role:kAudUDNumPGMAlertBgdPinkTile scene:kSceneCodePGMAlert];
	
}

@end
