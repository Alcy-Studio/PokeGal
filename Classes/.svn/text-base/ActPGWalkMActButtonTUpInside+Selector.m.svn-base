//
//  ActPGWalkMActButtonTUpInside+Selector.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGWalkMActButtonTUpInside+Selector.h"

#import "MUi.h"
#import "MGirl.h"

#import "ConstantsPGMConfirm.h"
#import "ConstantsPGMAlert.h"

#import "ConstantsSceneCode.h"
#import "ConstantsTmpAction.h"
#import "ConstantsAuditorUserDefaults.h"

#import "ConstantsGirlStatus.h"
#import "ConstantsTmpRegion.h"
#import "ConstantsTmpScript.h"


@implementation ActPGWalkMActButtonTUpInside(Selector)

-(void)setAlertViewtoWarnActLook{
	NSLog(@"setAlertViewtoWarnActLook");

	//setAction
	[MUi modifyUserDefaultWithKey:kTmpAction value:kTmpActionPGWalkMButton];

	//set Role for alert
	[MUi modifyTag:kAlertTitleLabel role:kAudUDNumPGMAlertTitle2 scene:kSceneCodePGMAlert];
	[MUi modifyTag:kAlertTextView role:kAudUDNumPGMAlertTextView2 scene:kSceneCodePGMAlert];
	
	[MUi presentModal:@"PGMAlertViewController" transition:UIModalTransitionStyleCoverVertical animated:YES];

}

-(void)setTmpAction{
	[MUi modifyUserDefaultWithKey:kTmpAction value:kTmpActionPGWalkMButton];
	
}

-(void)setRoleForConfirm{
	[MUi modifyTag:kConfirmTitleLabel role:kAudUDNumPGMConfirmTitle8 scene:kSceneCodePGMConfirm];
	[MUi modifyTag:kConfirmTextView role:kAudUDNumPGMConfirmTextView8 scene:kSceneCodePGMConfirm];
	
}
//Modal 
-(void)presentModalConfirm{
	
	[MUi presentModal:@"PGMConfirmViewController" transition:UIModalTransitionStylePartialCurl animated:YES];
}

-(void)setTmpScript{
	NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
	
	NSString* s = [defaults stringForKey:kTmpRegion];
	NSUInteger i = [MGirl getLook];
	//NSLog(@"Look: %i", i);
	if ([s isEqualToString:kTRRegionA]) {
		switch (i) {
			case kGirlLook1:
				[defaults setValue:kEvtGirlWalkLookRegionA1 forKey:kTmpScript];
				break;
			case kGirlLook2:
				[defaults setValue:kEvtGirlWalkLookRegionA2 forKey:kTmpScript];
				break;
			case kGirlLook3:
				[defaults setValue:kEvtGirlWalkLookRegionA3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGWalk - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionB]) {
		switch (i) {
			case kGirlLook1:
				[defaults setValue:kEvtGirlWalkLookRegionB1 forKey:kTmpScript];
				break;
			case kGirlLook2:
				[defaults setValue:kEvtGirlWalkLookRegionB2 forKey:kTmpScript];
				break;
			case kGirlLook3:
				[defaults setValue:kEvtGirlWalkLookRegionB3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGWalk - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionC]) {
		switch (i) {
			case kGirlLook1:
				[defaults setValue:kEvtGirlWalkLookRegionC1 forKey:kTmpScript];
				break;
			case kGirlLook2:
				[defaults setValue:kEvtGirlWalkLookRegionC2 forKey:kTmpScript];
				break;
			case kGirlLook3:
				[defaults setValue:kEvtGirlWalkLookRegionC3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGWalk - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionD]) {
		switch (i) {
			case kGirlLook1:
				[defaults setValue:kEvtGirlWalkLookRegionD1 forKey:kTmpScript];
				break;
			case kGirlLook2:
				[defaults setValue:kEvtGirlWalkLookRegionD2 forKey:kTmpScript];
				break;
			case kGirlLook3:
				[defaults setValue:kEvtGirlWalkLookRegionD3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGWalk - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionE]) {
		switch (i) {
			case kGirlLook1:
				[defaults setValue:kEvtGirlWalkLookRegionE1 forKey:kTmpScript];
				break;
			case kGirlLook2:
				[defaults setValue:kEvtGirlWalkLookRegionE2 forKey:kTmpScript];
				break;
			case kGirlLook3:
				[defaults setValue:kEvtGirlWalkLookRegionE3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGWalk - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionF]) {
		switch (i) {
			case kGirlLook1:
				[defaults setValue:kEvtGirlWalkLookRegionF1 forKey:kTmpScript];
				break;
			case kGirlLook2:
				[defaults setValue:kEvtGirlWalkLookRegionF2 forKey:kTmpScript];
				break;
			case kGirlLook3:
				[defaults setValue:kEvtGirlWalkLookRegionF3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGWalk - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionG]) {
		switch (i) {
			case kGirlLook1:
				[defaults setValue:kEvtGirlWalkLookRegionG1 forKey:kTmpScript];
				break;
			case kGirlLook2:
				[defaults setValue:kEvtGirlWalkLookRegionG2 forKey:kTmpScript];
				break;
			case kGirlLook3:
				[defaults setValue:kEvtGirlWalkLookRegionG3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGWalk - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionH]) {
		switch (i) {
			case kGirlLook1:
				[defaults setValue:kEvtGirlWalkLookRegionH1 forKey:kTmpScript];
				break;
			case kGirlLook2:
				[defaults setValue:kEvtGirlWalkLookRegionH2 forKey:kTmpScript];
				break;
			case kGirlLook3:
				[defaults setValue:kEvtGirlWalkLookRegionH3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGWalk - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionI]) {
		switch (i) {
			case kGirlLook1:
				[defaults setValue:kEvtGirlWalkLookRegionI1 forKey:kTmpScript];
				break;
			case kGirlLook2:
				[defaults setValue:kEvtGirlWalkLookRegionI2 forKey:kTmpScript];
				break;
			case kGirlLook3:
				[defaults setValue:kEvtGirlWalkLookRegionI3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGWalk - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	
}

@end
