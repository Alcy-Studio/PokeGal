//
//  ActPGWalkLActButtonTUpInside+Selector.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGWalkLActButtonTUpInside+Selector.h"

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

@implementation ActPGWalkLActButtonTUpInside(Selector)

-(void)setAlertViewtoWarnActTalk{
	NSLog(@"setAlertViewtoWarnActTalk");
	
	//setAction
	[MUi modifyUserDefaultWithKey:kTmpAction value:kTmpActionPGWalkMButton];
	
	//set Role for alert
	[MUi modifyTag:kAlertTitleLabel role:kAudUDNumPGMAlertTitle1 scene:kSceneCodePGMAlert];
	[MUi modifyTag:kAlertTextView role:kAudUDNumPGMAlertTextView1 scene:kSceneCodePGMAlert];
	
	[MUi presentModal:@"PGMAlertViewController" transition:UIModalTransitionStyleCoverVertical animated:YES];
	
}

-(void)setTmpAction{
	[MUi modifyUserDefaultWithKey:kTmpAction value:kTmpActionPGWalkLButton];
	
}

-(void)setRoleForConfirm{
	[MUi modifyTag:kConfirmTitleLabel role:kAudUDNumPGMConfirmTitle7 scene:kSceneCodePGMConfirm];
	[MUi modifyTag:kConfirmTextView role:kAudUDNumPGMConfirmTextView7 scene:kSceneCodePGMConfirm];
	
}
//Modal 
-(void)presentModalConfirm{
	
	[MUi presentModal:@"PGMConfirmViewController" transition:UIModalTransitionStylePartialCurl animated:YES];
}

-(void)setTmpScript{
	NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
	
	NSString* s = [defaults stringForKey:kTmpRegion];
	NSUInteger i = [MGirl getTalk];
	//NSLog(@"Talk: %i", i);
	if ([s isEqualToString:kTRRegionA]) {
		switch (i) {
			case kGirlTalk1:
				[defaults setValue:kEvtGirlWalkTalkRegionA1 forKey:kTmpScript];
				break;
			case kGirlTalk2:
				[defaults setValue:kEvtGirlWalkTalkRegionA2 forKey:kTmpScript];
				break;
			case kGirlTalk3:
				[defaults setValue:kEvtGirlWalkTalkRegionA3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGWalk - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionB]) {
		switch (i) {
			case kGirlTalk1:
				[defaults setValue:kEvtGirlWalkTalkRegionB1 forKey:kTmpScript];
				break;
			case kGirlTalk2:
				[defaults setValue:kEvtGirlWalkTalkRegionB2 forKey:kTmpScript];
				break;
			case kGirlTalk3:
				[defaults setValue:kEvtGirlWalkTalkRegionB3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGWalk - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionC]) {
		switch (i) {
			case kGirlTalk1:
				[defaults setValue:kEvtGirlWalkTalkRegionC1 forKey:kTmpScript];
				break;
			case kGirlTalk2:
				[defaults setValue:kEvtGirlWalkTalkRegionC2 forKey:kTmpScript];
				break;
			case kGirlTalk3:
				[defaults setValue:kEvtGirlWalkTalkRegionC3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGWalk - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionD]) {
		switch (i) {
			case kGirlTalk1:
				[defaults setValue:kEvtGirlWalkTalkRegionD1 forKey:kTmpScript];
				break;
			case kGirlTalk2:
				[defaults setValue:kEvtGirlWalkTalkRegionD2 forKey:kTmpScript];
				break;
			case kGirlTalk3:
				[defaults setValue:kEvtGirlWalkTalkRegionD3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGWalk - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionE]) {
		switch (i) {
			case kGirlTalk1:
				[defaults setValue:kEvtGirlWalkTalkRegionE1 forKey:kTmpScript];
				break;
			case kGirlTalk2:
				[defaults setValue:kEvtGirlWalkTalkRegionE2 forKey:kTmpScript];
				break;
			case kGirlTalk3:
				[defaults setValue:kEvtGirlWalkTalkRegionE3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGWalk - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionF]) {
		switch (i) {
			case kGirlTalk1:
				[defaults setValue:kEvtGirlWalkTalkRegionF1 forKey:kTmpScript];
				break;
			case kGirlTalk2:
				[defaults setValue:kEvtGirlWalkTalkRegionF2 forKey:kTmpScript];
				break;
			case kGirlTalk3:
				[defaults setValue:kEvtGirlWalkTalkRegionF3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGWalk - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionG]) {
		switch (i) {
			case kGirlTalk1:
				[defaults setValue:kEvtGirlWalkTalkRegionG1 forKey:kTmpScript];
				break;
			case kGirlTalk2:
				[defaults setValue:kEvtGirlWalkTalkRegionG2 forKey:kTmpScript];
				break;
			case kGirlTalk3:
				[defaults setValue:kEvtGirlWalkTalkRegionG3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGWalk - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionH]) {
		switch (i) {
			case kGirlTalk1:
				[defaults setValue:kEvtGirlWalkTalkRegionH1 forKey:kTmpScript];
				break;
			case kGirlTalk2:
				[defaults setValue:kEvtGirlWalkTalkRegionH2 forKey:kTmpScript];
				break;
			case kGirlTalk3:
				[defaults setValue:kEvtGirlWalkTalkRegionH3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGWalk - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionI]) {
		switch (i) {
			case kGirlTalk1:
				[defaults setValue:kEvtGirlWalkTalkRegionI1 forKey:kTmpScript];
				break;
			case kGirlTalk2:
				[defaults setValue:kEvtGirlWalkTalkRegionI2 forKey:kTmpScript];
				break;
			case kGirlTalk3:
				[defaults setValue:kEvtGirlWalkTalkRegionI3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGWalk - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	
}

@end
