//
//  ActPGDateMActButtonTUpInside+Selector.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGDateMActButtonTUpInside+Selector.h"

#import "MUi.h"
#import "MGirl.h"

#import "ConstantsPGMConfirm.h"
#import "ConstantsPGMAlert.h"
#import "ConstantsPGDate.h"

#import "ConstantsSceneCode.h"
#import "ConstantsTmpAction.h"
#import "ConstantsAuditorUserDefaults.h"

#import "ConstantsGirlStatus.h"
#import "ConstantsTmpRegion.h"
#import "ConstantsTmpScript.h"

@implementation ActPGDateMActButtonTUpInside(Selector)


-(void)setAlertViewtoWarnActRomance{
	NSLog(@"setAlertViewtoWarnActRomance");
	
	//setAction
	//[MUi modifyUserDefaultWithKey:kTmpAction value:kTmpActionPGDateMButton];
	
	//set Role for alert
	[MUi modifyTag:kAlertTitleLabel role:kAudUDNumPGMAlertTitle2 scene:kSceneCodePGMAlert];
	[MUi modifyTag:kAlertTextView role:kAudUDNumPGMAlertTextView2 scene:kSceneCodePGMAlert];
	
	[MUi presentModal:@"PGMAlertViewController" transition:UIModalTransitionStyleCoverVertical animated:YES];
	
}

-(void)setTmpAction{
	[MUi modifyUserDefaultWithKey:kTmpAction value:kTmpActionPGDateMButton];
	
}

-(void)setRoleForConfirm{
	[MUi modifyTag:kConfirmTitleLabel role:kAudUDNumPGMConfirmTitle10 scene:kSceneCodePGMConfirm];
	[MUi modifyTag:kConfirmTextView role:kAudUDNumPGMConfirmTextView10 scene:kSceneCodePGMConfirm];
	
}
//Modal 
-(void)presentModalConfirm{
	
	[MUi presentModal:@"PGMConfirmViewController" transition:UIModalTransitionStylePartialCurl animated:YES];
}

-(void)setTmpScript{
	NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
	
	NSString* s = [defaults stringForKey:kTmpRegion];
	
	NSUInteger r = [MUi getRoleWithTag:kDateBubbleImage scene:kSceneCodePGDate];
	NSUInteger i = [MGirl getRomance:r];
	
	//NSLog(@"Romance: %i", i);
	if ([s isEqualToString:kTRRegionA]) {
		switch (i) {
			case kGirlRomance1:
				[defaults setValue:kEvtGirlDateRomanceRegionA1 forKey:kTmpScript];
				break;
			case kGirlRomance2:
				[defaults setValue:kEvtGirlDateRomanceRegionA2 forKey:kTmpScript];
				break;
			case kGirlRomance3:
				[defaults setValue:kEvtGirlDateRomanceRegionA3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGDate - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionB]) {
		switch (i) {
			case kGirlRomance1:
				[defaults setValue:kEvtGirlDateRomanceRegionB1 forKey:kTmpScript];
				break;
			case kGirlRomance2:
				[defaults setValue:kEvtGirlDateRomanceRegionB2 forKey:kTmpScript];
				break;
			case kGirlRomance3:
				[defaults setValue:kEvtGirlDateRomanceRegionB3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGDate - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionC]) {
		switch (i) {
			case kGirlRomance1:
				[defaults setValue:kEvtGirlDateRomanceRegionC1 forKey:kTmpScript];
				break;
			case kGirlRomance2:
				[defaults setValue:kEvtGirlDateRomanceRegionC2 forKey:kTmpScript];
				break;
			case kGirlRomance3:
				[defaults setValue:kEvtGirlDateRomanceRegionC3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGDate - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionD]) {
		switch (i) {
			case kGirlRomance1:
				[defaults setValue:kEvtGirlDateRomanceRegionD1 forKey:kTmpScript];
				break;
			case kGirlRomance2:
				[defaults setValue:kEvtGirlDateRomanceRegionD2 forKey:kTmpScript];
				break;
			case kGirlRomance3:
				[defaults setValue:kEvtGirlDateRomanceRegionD3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGDate - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionE]) {
		switch (i) {
			case kGirlRomance1:
				[defaults setValue:kEvtGirlDateRomanceRegionE1 forKey:kTmpScript];
				break;
			case kGirlRomance2:
				[defaults setValue:kEvtGirlDateRomanceRegionE2 forKey:kTmpScript];
				break;
			case kGirlRomance3:
				[defaults setValue:kEvtGirlDateRomanceRegionE3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGDate - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionF]) {
		switch (i) {
			case kGirlRomance1:
				[defaults setValue:kEvtGirlDateRomanceRegionF1 forKey:kTmpScript];
				break;
			case kGirlRomance2:
				[defaults setValue:kEvtGirlDateRomanceRegionF2 forKey:kTmpScript];
				break;
			case kGirlRomance3:
				[defaults setValue:kEvtGirlDateRomanceRegionF3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGDate - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionG]) {
		switch (i) {
			case kGirlRomance1:
				[defaults setValue:kEvtGirlDateRomanceRegionG1 forKey:kTmpScript];
				break;
			case kGirlRomance2:
				[defaults setValue:kEvtGirlDateRomanceRegionG2 forKey:kTmpScript];
				break;
			case kGirlRomance3:
				[defaults setValue:kEvtGirlDateRomanceRegionG3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGDate - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionH]) {
		switch (i) {
			case kGirlRomance1:
				[defaults setValue:kEvtGirlDateRomanceRegionH1 forKey:kTmpScript];
				break;
			case kGirlRomance2:
				[defaults setValue:kEvtGirlDateRomanceRegionH2 forKey:kTmpScript];
				break;
			case kGirlRomance3:
				[defaults setValue:kEvtGirlDateRomanceRegionH3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGDate - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	if ([s isEqualToString:kTRRegionI]) {
		switch (i) {
			case kGirlRomance1:
				[defaults setValue:kEvtGirlDateRomanceRegionI1 forKey:kTmpScript];
				break;
			case kGirlRomance2:
				[defaults setValue:kEvtGirlDateRomanceRegionI2 forKey:kTmpScript];
				break;
			case kGirlRomance3:
				[defaults setValue:kEvtGirlDateRomanceRegionI3 forKey:kTmpScript];
				break;	
			default:
				NSLog(@"PGDate - Failed to setTmpScript");
				break;
		}
		return;
	}
	
	
}


@end
