//
//  ActPGDateLActButtonTUpInside+Selector.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGDateLActButtonTUpInside+Selector.h"

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

@implementation ActPGDateLActButtonTUpInside(Selector)

-(void)setAlertViewtoWarnActChat{
	NSLog(@"setAlertViewtoWarnActChat");
	
	//setAction
	//[MUi modifyUserDefaultWithKey:kTmpAction value:kTmpActionPGDateMButton];
	
	//set Role for alert
	[MUi modifyTag:kAlertTitleLabel role:kAudUDNumPGMAlertTitle1 scene:kSceneCodePGMAlert];
	[MUi modifyTag:kAlertTextView role:kAudUDNumPGMAlertTextView1 scene:kSceneCodePGMAlert];
	
	[MUi presentModal:@"PGMAlertViewController" transition:UIModalTransitionStyleCoverVertical animated:YES];
	
}

-(void)setTmpAction{
	[MUi modifyUserDefaultWithKey:kTmpAction value:kTmpActionPGDateLButton];
	
}

-(void)setRoleForConfirm{
	[MUi modifyTag:kConfirmTitleLabel role:kAudUDNumPGMConfirmTitle9 scene:kSceneCodePGMConfirm];
	[MUi modifyTag:kConfirmTextView role:kAudUDNumPGMConfirmTextView9 scene:kSceneCodePGMConfirm];
	
}
//Modal 
-(void)presentModalConfirm{
	
	[MUi presentModal:@"PGMConfirmViewController" transition:UIModalTransitionStylePartialCurl animated:YES];
}

-(void)setTmpScript{
	NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
	
	NSString* s = [defaults stringForKey:kTmpRegion];
	NSUInteger i = [MGirl getChat];
	//NSLog(@"Date: %i", i);
	if ([s isEqualToString:kTRRegionA]) {
		switch (i) {
			case kGirlChat1:
				[defaults setValue:kEvtGirlDateChatRegionA1 forKey:kTmpScript];
				break;
			case kGirlChat2:
				[defaults setValue:kEvtGirlDateChatRegionA2 forKey:kTmpScript];
				break;
			case kGirlChat3:
				[defaults setValue:kEvtGirlDateChatRegionA3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGDate - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionB]) {
		switch (i) {
			case kGirlChat1:
				[defaults setValue:kEvtGirlDateChatRegionB1 forKey:kTmpScript];
				break;
			case kGirlChat2:
				[defaults setValue:kEvtGirlDateChatRegionB2 forKey:kTmpScript];
				break;
			case kGirlChat3:
				[defaults setValue:kEvtGirlDateChatRegionB3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGDate - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionC]) {
		switch (i) {
			case kGirlChat1:
				[defaults setValue:kEvtGirlDateChatRegionC1 forKey:kTmpScript];
				break;
			case kGirlChat2:
				[defaults setValue:kEvtGirlDateChatRegionC2 forKey:kTmpScript];
				break;
			case kGirlChat3:
				[defaults setValue:kEvtGirlDateChatRegionC3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGDate - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionD]) {
		switch (i) {
			case kGirlChat1:
				[defaults setValue:kEvtGirlDateChatRegionD1 forKey:kTmpScript];
				break;
			case kGirlChat2:
				[defaults setValue:kEvtGirlDateChatRegionD2 forKey:kTmpScript];
				break;
			case kGirlChat3:
				[defaults setValue:kEvtGirlDateChatRegionD3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGDate - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionE]) {
		switch (i) {
			case kGirlChat1:
				[defaults setValue:kEvtGirlDateChatRegionE1 forKey:kTmpScript];
				break;
			case kGirlChat2:
				[defaults setValue:kEvtGirlDateChatRegionE2 forKey:kTmpScript];
				break;
			case kGirlChat3:
				[defaults setValue:kEvtGirlDateChatRegionE3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGDate - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionF]) {
		switch (i) {
			case kGirlChat1:
				[defaults setValue:kEvtGirlDateChatRegionF1 forKey:kTmpScript];
				break;
			case kGirlChat2:
				[defaults setValue:kEvtGirlDateChatRegionF2 forKey:kTmpScript];
				break;
			case kGirlChat3:
				[defaults setValue:kEvtGirlDateChatRegionF3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGDate - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionG]) {
		switch (i) {
			case kGirlChat1:
				[defaults setValue:kEvtGirlDateChatRegionG1 forKey:kTmpScript];
				break;
			case kGirlChat2:
				[defaults setValue:kEvtGirlDateChatRegionG2 forKey:kTmpScript];
				break;
			case kGirlChat3:
				[defaults setValue:kEvtGirlDateChatRegionG3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGDate - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionH]) {
		switch (i) {
			case kGirlChat1:
				[defaults setValue:kEvtGirlDateChatRegionH1 forKey:kTmpScript];
				break;
			case kGirlChat2:
				[defaults setValue:kEvtGirlDateChatRegionH2 forKey:kTmpScript];
				break;
			case kGirlChat3:
				[defaults setValue:kEvtGirlDateChatRegionH3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGDate - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionI]) {
		switch (i) {
			case kGirlChat1:
				[defaults setValue:kEvtGirlDateChatRegionI1 forKey:kTmpScript];
				break;
			case kGirlChat2:
				[defaults setValue:kEvtGirlDateChatRegionI2 forKey:kTmpScript];
				break;
			case kGirlChat3:
				[defaults setValue:kEvtGirlDateChatRegionI3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGDate - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	
}

@end
