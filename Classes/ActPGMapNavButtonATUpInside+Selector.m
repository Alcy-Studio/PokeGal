//
//  ActPGMapNavButtonATUpInside+Selector.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMapNavButtonATUpInside+Selector.h"

#import "MUi.h"
#import "MLoad.h"
#import "MEvent.h"
#import "MSe.h"
#import "MSave.h"

#import "Region.h"
#import "Girl.h"
#import "Se.h"

#import "PGMapViewController.h"

#import "ConstantsAuditorUserDefaults.h"
#import "ConstantsRegions.h"
#import "ConstantsGlossaryDatabase.h"
#import "ConstantsGirlStatus.h"
#import "ConstantsSceneCode.h"
#import "ConstantsStringFormat.h"
#import "ConstantsTmpAction.h"


//Se
#import "ConstantsModelSe.h"
#import "ConstantsModelGeneral.h"

@interface ActPGMapNavButtonATUpInside()

-(void)prepareNav;
-(void)playSoundNormal;
-(void)playSoundDate;

@end


@implementation ActPGMapNavButtonATUpInside(Selector)





//Roles that no need to compare or edit
-(void)modifyDirectRole{
	//Change role of Picture, Top Lv, Mid Lv, Low Lv, DetailButton 
	[MUi modifyTag:kRegionTagPic role:kAudUDNumPGMapRegionPicA scene:kSceneCodePGMap];
	[MUi modifyTag:kRegionTagTopLvReq role:kAudUDNumPGMapTopLvReqRegionA scene:kSceneCodePGMap];
	[MUi modifyTag:kRegionTagMidLvReq role:kAudUDNumPGMapMidLvReqRegionA scene:kSceneCodePGMap];
	[MUi modifyTag:kRegionTagLowLvReq role:kAudUDNumPGMapLowLvReqRegionA scene:kSceneCodePGMap];
	[MUi modifyTag:kRegionTagDetail role:kAudUDNumPGMapRegionADetail scene:kSceneCodePGMap];

	[MUi modifyTag:kRegionTagGo role:kAudUDNumPGMapGoButtonA scene:kSceneCodePGMap];


}
-(void)modifyInDirectRole{
	//Compare Top, Mid, Low Lv with Current Lv. Then Change role of view23-25(Ok, No)
	NSArray* array1 = [MLoad getRecordsWithAttrName:kGlossaryName attrValue:kGirlStatusName1 Entity:kGlossaryGirl];
	if ([array1 count] != 1) {
		NSLog(@"[ActPGMapNavButton modifyInDirectRole] - Failed");
		return;
	}
	
	Girl* girl = [array1 objectAtIndex:0];
	
	NSArray* array2 = [MLoad getRecordsWithAttrName:kGlossaryName attrValue:kRegionNameA Entity:kGlossaryRegion];
	if ([array2 count] != 1) {
		NSLog(@"[ActPGMapNavButton modifyInDirectRole] - Failed");
		return;
	}
	
	Region* region = [array2 objectAtIndex:0];

	
	//Top Icon
	if(girl.sportLv >= region.lvReqA)
		[MUi modifyTag:kRegionTagTopIcon role:kAudUDNumPGMapLvReqIconOk scene:kSceneCodePGMap];
	else
		[MUi modifyTag:kRegionTagTopIcon role:kAudUDNumPGMapLvReqIconNo scene:kSceneCodePGMap];
	//Mid Icon
	if(girl.movieLv >= region.lvReqB)
		[MUi modifyTag:kRegionTagMidIcon role:kAudUDNumPGMapLvReqIconOk scene:kSceneCodePGMap];
	else
		[MUi modifyTag:kRegionTagMidIcon role:kAudUDNumPGMapLvReqIconNo scene:kSceneCodePGMap];
	//Low Icon
	if(girl.musicLv >= region.lvReqC)
		[MUi modifyTag:kRegionTagLowIcon role:kAudUDNumPGMapLvReqIconOk scene:kSceneCodePGMap];
	else
		[MUi modifyTag:kRegionTagLowIcon role:kAudUDNumPGMapLvReqIconNo scene:kSceneCodePGMap];
	
}

-(void)setViewWithTag{
	//SetViewWithTag: 6,7,18-25
	[MLoad setViewWithTag:kRegionTagDetail controller:self.resource];
	[MLoad setViewWithTag:kRegionTagGo controller:self.resource];

	
	for (NSUInteger i = kRegionTagPic; i <= kRegionTagLowLvReq; i++) {
		[MLoad setViewWithTag:i controller:self.resource];
	}

}
-(void)showDirectRole{
	//Picture, Detail Set Hidden = NO 
	[MUi setHidden:NO tag:kRegionTagPic controller:self.resource];
	[MUi setHidden:NO tag:kRegionTagDetail controller:self.resource];

	//top, Mid, Low Lv, top, mid, low icon, Hidden = NO 
	for (NSUInteger i = kRegionTagTopIcon; i <= kRegionTagLowLvReq; i++) {
		[MUi setHidden:NO tag:i controller:self.resource];
	}
}
-(void)prepareNav{
	//Detail Button Set Enabled
	[MUi setEnabled:YES tag:kRegionTagDetail controller:self.resource];
	[MUi setEnabled:YES tag:kRegionTagGo controller:self.resource];
	[MUi setHidden:YES tag:kRegionTagDate controller:self.resource];
	
}
-(void)setupNav{
	
	
	NSArray* array1 = [MLoad getRecordsWithAttrName:kGlossaryName attrValue:kGirlStatusName1 Entity:kGlossaryGirl];
	if ([array1 count] != 1) {
		NSLog(@"[ActPGMapNavButton setupNav] - Failed");
		return;
	}
	Girl* girl = [array1 objectAtIndex:0];
	
	
	NSArray* array2 = [MLoad getRecordsWithAttrName:kGlossaryName attrValue:kRegionNameA Entity:kGlossaryRegion];
	if ([array2 count] != 1) {
		NSLog(@"[ActPGMapNavButton setupNav] - Failed");
		return;
	}
	Region* region = [array2 objectAtIndex:0];

	//In case if region failed to unlocked
	if ((girl.sportLv >= region.lvReqA) && 
		(girl.movieLv >= region.lvReqB) && 
		(girl.musicLv >= region.lvReqC)) {
			if (!region.unlocked) {
				region.unlocked = [NSNumber numberWithBool:YES];
				[MSave saveMoc];
			}
	} else {
		if (region.unlocked) {
			region.unlocked = [NSNumber numberWithBool:NO];
			[MSave saveMoc];
		}
		
	}
	//NSLog(@"sportLv: %@; Req %@; movieLv: %@; Req %@; musicLv: %@; Req %@", 
//		  girl.sportLv, region.lvReqA, 
//		  girl.movieLv, region.lvReqB,
//		  girl.musicLv, region.lvReqC);
	//set initial
	[self prepareNav];
	
	//setText for Hint	
	id v = [[(PGMapViewController*)self.resource view] viewWithTag:kRegionTagHint];
	
	if (![v isMemberOfClass:[UILabel class]]){
		NSLog(@"ActPGMapNavButton: v is not UILabel");
		//[self playSoundNormal];
		return;
	}
	[(UILabel*)v setText:[NSString stringWithFormat:@"%@", NSLocalizedString(region.name, @"Localized")]];
	
	
	//Go set Hidden = No
	[MUi setHidden:NO tag:kRegionTagGo controller:self.resource];


	
	//Compare region unlocked, if "unlocked = NO", 
	if (!region.unlocked) {
		//Go set Enabled = NO
		
		[MUi setEnabled:NO tag:kRegionTagGo controller:self.resource];
		
		//[self playSoundNormal];
		return;
	}
	
	NSString* s1 = [MUi getDateStringWithDateFormat:kDateFormat1];
	NSString* s2 = [MUi getDateStringWithDateFormat:kDateFormat2];
	
	NSLog(@"%@ %@", s1, s2);
	//Compare Event for Date, if "no date",
	if(![MEvent checkEventExist:[NSString stringWithFormat:@"%@ %@",s1,s2] Region:kRegionA]){
		//set TmpAction Go
		[MUi modifyUserDefaultWithKey:kTmpAction value:kAtRegionA];
		
		//[self playSoundNormal];
		return;
	}
	
	[MUi setHidden:NO tag:kRegionTagDate controller:self.resource];
	[MUi setEnabled:NO tag:kRegionTagDetail controller:self.resource];
	//set TmpAction Go with Date
	[MUi modifyUserDefaultWithKey:kTmpAction value:kAtRegionDateA];

	//set Role for Dating
	[MUi modifyTag:kRegionTagGo role:kAudUDNumPGMapDateButtonA scene:kSceneCodePGMap];

	
	[self playSoundDate];

	
	
}

-(void)playSoundNormal{
	
	NSArray* array = [MLoad getRecordWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGAll] 
										 Attr2:[NSNumber numberWithInt:kModelSeInfoUi]  
										 Attr3:[NSNumber numberWithInt:kModelSeKindButtonPress1]  
										Entity:kGlossarySe];
	
	
	
	NSString* fn = [(Se*)[array objectAtIndex:0] fileName];
	NSString* ext = [(Se*)[array objectAtIndex:0] extension];
	
	
	[MSe playSound:fn extension:ext];
}

-(void)playSoundDate{
		
	NSArray* array = [MLoad getRecordWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGAll] 
								Attr2:[NSNumber numberWithInt:kModelSeInfoUi]  
								Attr3:[NSNumber numberWithInt:kModelSeKindButtonPress2]  
							   Entity:kGlossarySe];
	
	
	
	NSString* fn = [(Se*)[array objectAtIndex:0] fileName];
	NSString* ext = [(Se*)[array objectAtIndex:0] extension];
	
	
	[MSe playSound:fn extension:ext];
}

@end
