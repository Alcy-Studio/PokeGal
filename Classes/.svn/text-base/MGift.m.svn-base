//
//  MGift.m
//  frdfrd
//
//  Created by westbugs on 11-01-25.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "MGift.h"
#import "Gift.h"

//Method
#import "MLoad.h"
#import "MUi.h"

//Constants
#import "ConstantsGlossaryDatabase.h"
#import "ConstantsTmpPreset.h"
#import "ConstantsAuditorUserDefaults.h"
#import "ConstantsSceneCode.h"
#import "ConstantsPGAchi.h"

@implementation MGift

+(Gift*)getGiftWithPreset:(NSString*)p{
	NSArray* array = [MLoad getRecordsWithAttrName:kGlossaryPreset attrValue:p Entity:kGlossaryGift];
	if ([array count] != 1) {
		NSLog(@"[MGift deductAt] - Failed");
		return nil;
	}
	
	return (Gift*)[array objectAtIndex:0];
}

/*
 kAchiGiftUpLeftButton = 6,
 kAchiGiftUpMidButton = 7,
 kAchiGiftUpRightButton = 8,
 kAchiGiftMidLeftButton = 9,
 kAchiGiftMidMidButton = 10,
 kAchiGiftMidRightButton = 11,
 kAchiGiftBottomLeftButton = 12,
 
 kAchiGiftBottomMidButton = 13,
 kAchiGiftBottomRightButton = 14,
 */
+(void)setGiftRoleWithTag:(NSUInteger)i{
	Gift* gift;
	switch (i) {
		case kAchiGiftUpLeftButton:
		{
			gift = [self getGiftWithPreset:kGiftPreset1];
			if([gift.unlocked boolValue]){
				[MUi modifyTag:kAchiGiftUpLeftButton role:kAudUDNumPGAchiGiftIcon1 scene:kSceneCodePGAchi];
			} else {
				[MUi modifyTag:kAchiGiftUpLeftButton role:kAudUDNumPGAchiGiftIconNone scene:kSceneCodePGAchi];
			}

		}
			break;
		case kAchiGiftUpMidButton:
		{
			gift = [self getGiftWithPreset:kGiftPreset2];
			if([gift.unlocked boolValue]){
				[MUi modifyTag:kAchiGiftUpMidButton role:kAudUDNumPGAchiGiftIcon2 scene:kSceneCodePGAchi];
			} else {
				[MUi modifyTag:kAchiGiftUpMidButton role:kAudUDNumPGAchiGiftIconNone scene:kSceneCodePGAchi];
			}
			
		}
			break;
		case kAchiGiftUpRightButton:
		{
			gift = [self getGiftWithPreset:kGiftPreset3];
			if([gift.unlocked boolValue]){
				[MUi modifyTag:kAchiGiftUpRightButton role:kAudUDNumPGAchiGiftIcon3 scene:kSceneCodePGAchi];
			} else {
				[MUi modifyTag:kAchiGiftUpRightButton role:kAudUDNumPGAchiGiftIconNone scene:kSceneCodePGAchi];
			}
			
		}
			break;
		case kAchiGiftMidLeftButton:
		{
			gift = [self getGiftWithPreset:kGiftPreset4];
			if([gift.unlocked boolValue]){
				[MUi modifyTag:kAchiGiftMidLeftButton role:kAudUDNumPGAchiGiftIcon4 scene:kSceneCodePGAchi];
			} else {
				[MUi modifyTag:kAchiGiftMidLeftButton role:kAudUDNumPGAchiGiftIconNone scene:kSceneCodePGAchi];
			}
			
		}
			break;
		case kAchiGiftMidMidButton:
		{
			gift = [self getGiftWithPreset:kGiftPreset5];
			if([gift.unlocked boolValue]){
				[MUi modifyTag:kAchiGiftMidMidButton role:kAudUDNumPGAchiGiftIcon5 scene:kSceneCodePGAchi];
			} else {
				[MUi modifyTag:kAchiGiftMidMidButton role:kAudUDNumPGAchiGiftIconNone scene:kSceneCodePGAchi];
			}
			
		}
			break;
		case kAchiGiftMidRightButton:
		{
			gift = [self getGiftWithPreset:kGiftPreset6];
			if([gift.unlocked boolValue]){
				[MUi modifyTag:kAchiGiftMidRightButton role:kAudUDNumPGAchiGiftIcon6 scene:kSceneCodePGAchi];
			} else {
				[MUi modifyTag:kAchiGiftMidRightButton role:kAudUDNumPGAchiGiftIconNone scene:kSceneCodePGAchi];
			}
			
		}
			break;
		case kAchiGiftBottomLeftButton:
		{
			gift = [self getGiftWithPreset:kGiftPreset7];
			if([gift.unlocked boolValue]){
				[MUi modifyTag:kAchiGiftBottomLeftButton role:kAudUDNumPGAchiGiftIcon7 scene:kSceneCodePGAchi];
			} else {
				[MUi modifyTag:kAchiGiftBottomLeftButton role:kAudUDNumPGAchiGiftIconNone scene:kSceneCodePGAchi];
			}
			
		}
			break;
		case kAchiGiftBottomMidButton:
		{
			gift = [self getGiftWithPreset:kGiftPreset8];
			if([gift.unlocked boolValue]){
				[MUi modifyTag:kAchiGiftBottomMidButton role:kAudUDNumPGAchiGiftIcon8 scene:kSceneCodePGAchi];
			} else {
				[MUi modifyTag:kAchiGiftBottomMidButton role:kAudUDNumPGAchiGiftIconNone scene:kSceneCodePGAchi];
			}
			
		}
			break;
		case kAchiGiftBottomRightButton:
		{
			gift = [self getGiftWithPreset:kGiftPreset9];
			if([gift.unlocked boolValue]){
				[MUi modifyTag:kAchiGiftBottomRightButton role:kAudUDNumPGAchiGiftIcon9 scene:kSceneCodePGAchi];
			} else {
				[MUi modifyTag:kAchiGiftBottomRightButton role:kAudUDNumPGAchiGiftIconNone scene:kSceneCodePGAchi];
			}
			
		}
			break;
		default:
			NSLog(@"MGift - Failed to setGiftRoleWithTag");
			break;
	}
}
@end
