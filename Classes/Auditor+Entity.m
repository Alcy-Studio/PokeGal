//
//  Auditor+Entity.m
//  frdfrd
//
//  Created by westbugs on 10-11-01.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "Auditor+Entity.h"

//Constants
#import "ConstantsSceneCode.h"
#import "ConstantsAuditor.h"
#import "ConstantsAuditorUserDefaults.h"
#import "ConstantsGlossaryDatabase.h"

@interface Auditor()
-(BOOL)setEntityForScenePGMain;
-(BOOL)setEntityForScenePGAchi;
-(BOOL)setEntityForScenePGAttr;

-(BOOL)setEntityForScenePGTitle; // 4
-(BOOL)setEntityForScenePGDate; // 7
-(BOOL)setEntityForScenePGWalk; // 17

-(BOOL)setEntityForScenePGMap; // 8
-(BOOL)setEntityForScenePGEvent; // 9
-(BOOL)setEntityForScenePGRomance; // 10
-(BOOL)setEntityForScenePGDetail; // 11
-(BOOL)setEntityForScenePGArrange; // 12
-(BOOL)setEntityForScenePGPlace; // 13
-(BOOL)setEntityForScenePGSchedule; // 14
-(BOOL)setEntityForScenePGTalk; // 15
-(BOOL)setEntityForScenePGSMS; // 16
-(BOOL)setEntityForScenePGTutorPage; // 18
-(BOOL)setEntityForScenePGTutorSV; // 19
//-(BOOL)setEntityForScenePGTutorMenu; // 20



-(BOOL)setEntityForScenePGMConfirm; // 31
-(BOOL)setEntityForScenePGMAlert; // 32
-(BOOL)setEntityForScenePGMSelection; // 33



-(BOOL)setEntityGlossaryForScenePGMain;
-(BOOL)setEntityGlossaryForScenePGAchi;
-(BOOL)setEntityGlossaryForScenePGAttr;

-(BOOL)setEntityGlossaryForScenePGTitle; // 4
-(BOOL)setEntityGlossaryForScenePGDate; // 7
-(BOOL)setEntityGlossaryForScenePGWalk; // 17

-(BOOL)setEntityGlossaryForScenePGMap; // 8
-(BOOL)setEntityGlossaryForScenePGEvent; // 9
-(BOOL)setEntityGlossaryForScenePGRomance; // 10
-(BOOL)setEntityGlossaryForScenePGDetail; // 11
-(BOOL)setEntityGlossaryForScenePGArrange; // 12
-(BOOL)setEntityGlossaryForScenePGPlace; // 13
-(BOOL)setEntityGlossaryForScenePGSchedule; // 14
-(BOOL)setEntityGlossaryForScenePGTalk; // 15
-(BOOL)setEntityGlossaryForScenePGSMS; // 16
-(BOOL)setEntityGlossaryForScenePGTutorPage; // 18
-(BOOL)setEntityGlossaryForScenePGTutorSV; // 19
//-(BOOL)setEntityGlossaryForScenePGTutorMenu; // 20



-(BOOL)setEntityGlossaryForScenePGMConfirm; // 31
-(BOOL)setEntityGlossaryForScenePGMAlert; // 32
-(BOOL)setEntityGlossaryForScenePGMSelection; // 33



@end

@implementation Auditor(Entity)

-(BOOL)setEntityGlossaryWithScene:(unsigned int)s{
	switch (s) {
		case kSceneCodePGMain: // 1
			[self setEntityGlossaryForScenePGMain];
			break;
		case kSceneCodePGAchi: // 2
			[self setEntityGlossaryForScenePGAchi];
			break;
		case kSceneCodePGAttr: // 3
			[self setEntityGlossaryForScenePGAttr];
			break;
		case kSceneCodePGTitle: // 4
			[self setEntityGlossaryForScenePGTitle];
			break;
		case kSceneCodePGDate: // 7
			[self setEntityGlossaryForScenePGDate];
			break;
		case kSceneCodePGWalk: // 17
			[self setEntityGlossaryForScenePGWalk];
			break;
			
		case kSceneCodePGMap: // 8
			[self setEntityGlossaryForScenePGMap];
			break;
		case kSceneCodePGEvent: // 9
			[self setEntityGlossaryForScenePGEvent];
			break;
		case kSceneCodePGRomance: // 10
			[self setEntityGlossaryForScenePGRomance];
			break;
		case kSceneCodePGDetail: // 11
			[self setEntityGlossaryForScenePGDetail];
			break;
		case kSceneCodePGArrange: // 12
			[self setEntityGlossaryForScenePGArrange];
			break;
		case kSceneCodePGPlace: // 13
			[self setEntityGlossaryForScenePGPlace];
			break;
		case kSceneCodePGSchedule: // 14
			[self setEntityGlossaryForScenePGSchedule];
			break;
		case kSceneCodePGTalk: // 15
			[self setEntityGlossaryForScenePGTalk];
			break;
		case kSceneCodePGSMS: // 16
			[self setEntityGlossaryForScenePGSMS];
			break;
		case kSceneCodePGTutorPage: // 18
			[self setEntityGlossaryForScenePGTutorPage];
			break;
		case kSceneCodePGTutorSV: // 19
			[self setEntityGlossaryForScenePGTutorSV];
			break;
		//case kSceneCodePGTutorMenu: // 20
//			[self setEntityGlossaryForScenePGTutorMenu];
//			break;
		case kSceneCodePGMConfirm: // 31
			[self setEntityGlossaryForScenePGMConfirm];
			break;
		case kSceneCodePGMAlert: // 32
			[self setEntityGlossaryForScenePGMAlert];
			break;
		case kSceneCodePGMSelection: // 33
			[self setEntityGlossaryForScenePGMSelection];
			break;
			
		default:
			break;
	}
	if (!self.dictionary)
		return NO;
	return YES;
}

-(BOOL)setEntityGlossaryForScenePGMain{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGMain
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainSummer],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainSpring],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainAutumn],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainWinter],

					   
					   [NSString stringWithFormat:@"%@", kGlossaryGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainActionPoint],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainDay],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainNight],

					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainMoodGood],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainMoodOk],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainMoodBad],

					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainCosSchoolGirl2],
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainOccHome],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainLArrow],
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainActSport], // view 8-1
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainActMovie], // view 9-1
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainActMusic], // view 10-1
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainActCall], // view 8-2
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainActSms], // view 9-2
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainActMove], // view 10-2
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainRArrow],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainHint],
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
	
}
-(BOOL)setEntityGlossaryForScenePGAchi{
	
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGAchi
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAvaNormal],
					   [NSString stringWithFormat:@"%@", kGlossaryGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftAmount],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiLArrow],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias1],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias2],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias3],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias4],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias5],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias6],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias7],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias8],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias9],

					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiRArrow],
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIconNone],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon1],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon2],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon3],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon4],
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon5],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon6],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon7],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon8],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon9],
					   [NSString stringWithFormat:@"%@", kGlossaryGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiPage],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiMessage],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiHint],
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiBgdBlueTile],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiBgdPinkTile],


					   nil];
	
	self.dictionary = d;
	[d release];
	
	return YES;
}
-(BOOL)setEntityGlossaryForScenePGAttr{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGAttr
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrAvaNormal], // view 1
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrWeekday], // view 2
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrTime], // view 3
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrLArrow], // view 4
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrDButton], // view 5 Detail
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrSButton], // view 5 Schedule

					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrRArrow], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrSportAttrValue], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrSportAttrBar], // view 8
					   [NSString stringWithFormat:@"%@", kGlossaryGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrMovieAttrValue], // view 9
					   [NSString stringWithFormat:@"%@", kGlossaryGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrMovieAttrBar], // view 10
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrMusicAttrValue], // view 11
					   [NSString stringWithFormat:@"%@", kGlossaryGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrMusicAttrBar], // view 12
					   [NSString stringWithFormat:@"%@", kGlossaryGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrPage], // view 14
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrMessage], // view 16
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrHint], // view 17
					   
					    [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrSportAttrTitle], // view 18
					    [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrMovieAttrTitle], // view 19
					    [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrMusicAttrTitle], // view 20
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrBgdBlueTile], // view 21
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrBgdPinkTile], // view 21

					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
	

}

// 4
-(BOOL)setEntityGlossaryForScenePGTitle{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGTitle
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGTitleNew], // view 1
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGTitleContinue], // view 2
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGTitleWebsite], // view 3

					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGTitleHeart], // view 4
					   
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
	
	
}

// 7
-(BOOL)setEntityGlossaryForScenePGDate{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGMain
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateSummer], // view 1
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateSpring], // view 1
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateAutumn], // view 1
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateWinter], // view 1

					   [NSString stringWithFormat:@"%@", kGlossaryGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateActionPoint], // view 2
					   //[NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrTime], // view 3
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateDay], // view 3
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateNight], // view 3

					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateMoodGood], // view 4
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateMoodOk], // view 4
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateMoodBad], // view 4

					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrLArrow], // view 4

					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrLArrow], // view 4
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateCosSchoolGirl2], // view 5
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateOccHome], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionA], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionB], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionC], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionD], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionE], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionF], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionG], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionH], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionI], // view 6

					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateLArrow], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateLActButton], // view 8
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateMActButton], // view 9
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateRActButton], // view 10
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateRArrow], // view 11
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateHint], // view 12
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionA], // view 12
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionB], // view 12
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionC], // view 12
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionD], // view 12
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionE], // view 12
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionF], // view 12
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionG], // view 12
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionH], // view 12
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionI], // view 12

					   
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
	
	
}

// 17
-(BOOL)setEntityGlossaryForScenePGWalk{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGWalk
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkSummer], // view 1
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkSpring], // view 1
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkAutumn], // view 1
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkWinter], // view 1

					   
					   [NSString stringWithFormat:@"%@", kGlossaryGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkActionPoint], // view 2
					   
					   //[NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrTime], // view 3
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkDay], // view 3
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkNight], // view 3

					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrLArrow], // view 4
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkCosSchoolGirl2], // view 5
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccHome], // view 6
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionA], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionB], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionC], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionD], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionE], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionF], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionG], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionH], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionI], // view 6

					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkLArrow], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkLActButton], // view 8
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkMActButton], // view 9
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkRActButton], // view 10
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkRArrow], // view 11
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHint], // view 12
					   
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionA], // view 12
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionB], // view 12
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionC], // view 12
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionD], // view 12
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionE], // view 12
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionF], // view 12
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionG], // view 12
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionH], // view 12
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionI], // view 12

					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
	
	
}

// 8
-(BOOL)setEntityGlossaryForScenePGMap{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapSummer], // view 1
					   [NSString stringWithFormat:@"%@", kGlossaryGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapActionPoint], // view 2
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapDay], // view 3
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapBack], // view 4
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMapMain], // view 5 temp
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionNoneDetail], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionADetail], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionBDetail], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionCDetail], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionDDetail], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionEDetail], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionFDetail], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionGDetail], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionHDetail], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionIDetail], // view 6

					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButton], // view 7
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonA], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonB], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonC], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonD], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonE], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonF], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonG], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonH], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonI], // view 7
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonA], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonB], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonC], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonD], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonE], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonF], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonG], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonH], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonI], // view 7
					   
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],			[NSString stringWithFormat:@"%d", kAudUDNumPGMapHint], // view 8
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionA], // view 9
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionB], // view 10
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionC], // view 11
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionD], // view 12
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionE], // view 13
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionF], // view 14
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionG], // view 15
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionH], // view 16
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionI], // view 17
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicA], // view 18
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicB], // view 18
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicC], // view 18
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicD], // view 18
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicE], // view 18
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicF], // view 18
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicG], // view 18
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicH], // view 18
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicI], // view 18
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapDatingIcon], // view 19
					   
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLvReqIconNone], // view 20 - 22
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLvReqIconOk], // view 20 - 22
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLvReqIconNo], 
					   
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionA], //view 23-25
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionA], 
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionA], 
					   
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionB], //view 23-25
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionB], 
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionB], 
					   
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionC], //view 23-25
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionC], 
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionC], 
					   
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionD], //view 23-25
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionD], 
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionD], 
					
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionE], //view 23-25
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionE], 
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionE], 
					
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionF], //view 23-25
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionF], 
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionF], 
					   
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionG], //view 23-25
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionG], 
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionG], 
					   
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionH], //view 23-25
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionH], 
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionH], 
					   
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionI], //view 23-25
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionI], 
					   [NSString stringWithFormat:@"%@", kGlossaryRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionI], 
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
	
	
}

// 9
-(BOOL)setEntityGlossaryForScenePGEvent{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGEvent
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventSummer], // view 1
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventSpring], // view 1
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventAutumn], // view 1
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventWinter], // view 1

					   
					   [NSString stringWithFormat:@"%@", kGlossaryGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventActionPoint], // view 2
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventDay], // view 3
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventNight], // view 3

					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventMoodGood], // view 4
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventCosSchoolGirl2], // view 5
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventOccHome], // view 6
					   //[NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventMsgButton], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventMsgLabel], // view 8
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventHint], // view 9
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventBgdBlueTile], // view 9
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventBgdPinkTile], // view 9

					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
	
	
}
// 10
-(BOOL)setEntityGlossaryForScenePGRomance{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGRomance
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceSummer], // view 1
					   [NSString stringWithFormat:@"%@", kGlossaryGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceActionPoint], // view 2
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceDay], // view 3
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceMoodGood], // view 4
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceKiss], // view 5(1)
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceHug], // view 5(2)
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceHold], // view 5(3)
					   
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceOccHome], // view 6
					   //[NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceMsgButton], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceMsgLabel], // view 8
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceHint], // view 9
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
	
	
}


// 11
-(BOOL)setEntityGlossaryForScenePGDetail{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGDetail
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailBack],
					   [NSString stringWithFormat:@"%@", kGlossaryGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailAtPointLabel],

					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumb],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbA],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbB],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbC],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbD],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbE],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbF],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbG],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbH],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbI],

					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailHint],
					   
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionATitle], // view 5
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionBTitle], // view 5
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionCTitle], // view 5
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionDTitle], // view 5
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionETitle], // view 5
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionFTitle], // view 5
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionGTitle], // view 5
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionHTitle], // view 5
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionITitle], // view 5

					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionAEffect1], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionAEffect2], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionAEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionBEffect1], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionBEffect2], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionBEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionCEffect1], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionCEffect2], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionCEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionDEffect1], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionDEffect2], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionDEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionEEffect1], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionEEffect2], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionEEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionFEffect1], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionFEffect2], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionFEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionGEffect1], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionGEffect2], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionGEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionHEffect1], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionHEffect2], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionHEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionIEffect1], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionIEffect2], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionIEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionADescription], // view 9
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionBDescription], // view 9
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionCDescription], // view 9
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionDDescription], // view 9
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionEDescription], // view 9
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionFDescription], // view 9
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionGDescription], // view 9
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionHDescription], // view 9
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionIDescription], // view 9

					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
	
	
}

// 12
-(BOOL)setEntityGlossaryForScenePGArrange{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGArrange
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeBack], // view 1
					   [NSString stringWithFormat:@"%@", kGlossaryGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAtPointLabel], // view 2
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeHint], // view 3
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable10To11], // view 4
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable11To12], // view 5 temp
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable12To13], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable13To14], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable14To15], // view 8
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable15To16], // view 9
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable16To17], // view 10
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable17To18], // view 11
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable18To19], // view 12
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable19To20], // view 13
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable20To21], // view 14
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable21To22], // view 15
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable22To23], // view 16
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable23To24], // view 17
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
	
	
}

// 13
-(BOOL)setEntityGlossaryForScenePGPlace{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGPlace
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGPlaceBack],
					   [NSString stringWithFormat:@"%@", kGlossaryGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGPlaceAtPointLabel],
					   //[NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGPlaceLocationTable],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGPlaceHint],
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
	
	
}

// 14
-(BOOL)setEntityGlossaryForScenePGSchedule{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGSchedule
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleBack], // view 1
					   [NSString stringWithFormat:@"%@", kGlossaryGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAtPointLabel], // view 2
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleHint], // view 3
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventNone], // view 4
					   /*
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable11To12], // view 5 temp
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable12To13], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable13To14], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable14To15], // view 8
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable15To16], // view 9
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable16To17], // view 10
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable17To18], // view 11
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable18To19], // view 12
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable19To20], // view 13
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable20To21], // view 14
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable21To22], // view 15
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable22To23], // view 16
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable23To24], // view 17
					   */
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
	
	
}

// 15

-(BOOL)setEntityGlossaryForScenePGTalk{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGTalk
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGTalkSummer], // view 1
					   [NSString stringWithFormat:@"%@", kGlossaryGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGTalkActionPoint], // view 2
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGTalkDay], // view 3
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGTalkMoodGood], // view 4
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGTalkCosSchoolGirl2], // view 5
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGTalkOccHome], // view 6
					   //[NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGTalkMsgButton], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGTalkMsgLabel], //view 8
					   
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGTalkHint], // view 9
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
	
	
}


// 16
-(BOOL)setEntityGlossaryForScenePGSMS{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGSMS
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGSMSBack],
					   [NSString stringWithFormat:@"%@", kGlossaryGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGSMSAtPointLabel],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGSMSTextView],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGSMSHint],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGSMSSend],

					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
	
	
}

// 18
-(BOOL)setEntityGlossaryForScenePGTutorPage{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGTutorPage
					   
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
	
	
}

// 19
-(BOOL)setEntityGlossaryForScenePGTutorSV{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGTutorSV
					   
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
	
	
}

-(BOOL)setEntityGlossaryForScenePGMConfirm{
	/*
	 //PGMConfirm
	 kAudUDNumPGMConfirmAuto = 1,		//View0, Auto
	 
	 kAudUDNumPGMConfirmAtPointLabel = 11,	//View1, At Point Label
	 kAudUDNumPGMConfirmTextView1 = 12,			//View2, Text View
	 
	 kAudUDNumPGMConfirmLeftButton = 21,		//View3, Left Button
	 kAudUDNumPGMConfirmRightButton = 22,		//View4, Right Button
	 
	 
	 kAudUDNumPGMConfirmHint	= 31,		//View5, Hint Label
	 
	 
	 */
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmAtPointLabel],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView1],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView2],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView3],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView4],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView5],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView6],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView7],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView8],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView9],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView10],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView11],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView12],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView13],


					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmLeftButton],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmRightButton],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmHint],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle1],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle2],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle3],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle4],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle5],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle6],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle7],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle8],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle9],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle10],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle11],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle12],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle13],

					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmBgdBlueTile],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmBgdPinkTile],




					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}

-(BOOL)setEntityGlossaryForScenePGMAlert{
	/*
	 //PGMAlert
	 kAudUDNumPGMAlertAuto = 1,		//View0, Auto
	 
	 kAudUDNumPGMAlertAtPointLabel = 11,	//View1, At Point Label
	 kAudUDNumPGMAlertTextView1 = 12,			//View2, Text View
	 
	 kAudUDNumPGMAlertMidButton = 21,		//View3, Left Button
	 
	 
	 kAudUDNumPGMAlertHint	= 31,		//View4, Hint Label
	 
	 
	 */
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertAtPointLabel],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTextView1],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTextView2],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTextView3],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTextView4],

					   
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertMidButton],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertHint],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTitle1],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTitle2],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTitle3],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTitle4],

					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertBgdBlueTile],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertBgdPinkTile],


					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}

-(BOOL)setEntityGlossaryForScenePGMSelection{
	/*
	 //PGMSelection
	 kAudUDNumPGMSelectionAuto = 1,		//View0, Auto
	 
	 kAudUDNumPGMSelectionAtPointLabel = 11,	//View1, At Point Label
	 kAudUDNumPGMSelectionTextView1 = 12,			//View2, Text View
	 
	 kAudUDNumPGMSelectionChoice1Button = 21,		//View3, Choice 1 Button
	 kAudUDNumPGMSelectionChoice2Button = 22,		//View4, Choice 2 Button
	 kAudUDNumPGMSelectionChoice3Button = 23,		//View5, Choice 3 Button
	 
	 
	 kAudUDNumPGMSelectionHint	= 31,		//View6, Hint Label
	 
	 //view7, title
	 
	 //view8, choice 1
	 //view9, choice 2
	 //view10, choice 3
	 
	 
	 */
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   [NSString stringWithFormat:@"%@", kGlossaryGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionAtPointLabel],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionTextView1],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionChoice1Button],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionChoice2Button],
					   [NSString stringWithFormat:@"%@", kGlossaryGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionChoice3Button],
					   
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionHint],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionTitle1],
					   
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionChoice1Label],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionChoice2Label],
					   [NSString stringWithFormat:@"%@", kGlossaryTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionChoice3Label],
					   
					   

					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}



//Retrieve Number form of Entity
-(BOOL)setEntityWithScene:(unsigned int)s{
	
	switch (s) {
		case kSceneCodePGMain:
			[self setEntityForScenePGMain];
			break;
		case kSceneCodePGAchi:
			[self setEntityForScenePGAchi];
			break;
		case kSceneCodePGAttr:
			[self setEntityForScenePGAttr];
			break;
		case kSceneCodePGTitle: // 4
			[self setEntityForScenePGTitle];
			break;
		case kSceneCodePGDate: // 7
			[self setEntityForScenePGDate];
			break;
		case kSceneCodePGWalk: // 17
			[self setEntityForScenePGWalk];
			break;
		case kSceneCodePGMap: // 8
			[self setEntityForScenePGMap];
			break;
		case kSceneCodePGEvent: // 9
			[self setEntityForScenePGEvent];
			break;
		case kSceneCodePGRomance: // 10
			[self setEntityForScenePGRomance];
			break;
		case kSceneCodePGDetail: // 11
			[self setEntityForScenePGDetail];
			break;
		case kSceneCodePGArrange: // 12
			[self setEntityForScenePGArrange];
			break;
		case kSceneCodePGPlace: // 13
			[self setEntityForScenePGPlace];
			break;
		case kSceneCodePGSchedule: // 14
			[self setEntityForScenePGSchedule];
			break;
		case kSceneCodePGTalk: // 15
			[self setEntityForScenePGTalk];
			break;
		case kSceneCodePGSMS: // 16
			[self setEntityForScenePGSMS];
			break;
		case kSceneCodePGMConfirm: // 31
			[self setEntityForScenePGMConfirm];
			break;
		case kSceneCodePGMAlert: // 32
			[self setEntityForScenePGMAlert];
			break;
		case kSceneCodePGMSelection: // 33
			[self setEntityForScenePGMSelection];
			break;
		default:
			break;
	}
	return YES;
		
}

-(BOOL)setEntityForScenePGMain{
	/*
	 //PGMain
	 kAudUDNumPGMainAuto = 1,		//View0, Auto
	 
	 kAudUDNumPGMainSummer = 11,			//View1, Summer (Realtime Dynamic)
	 kAudUDNumPGMainActionPoint = 21,	//View2, Action Point (Text)
	 kAudUDNumPGMainDay		= 31,		//View3, Day (Realtime Dynamic)
	 kAudUDNumPGMainMoodGood	= 41,		//View4, Mood: Good, Ok, Bad
	 kAudUDNumPGMainCosSchoolGirl2 = 51,		//View5, Girl Posture
	 
	 kAudUDNumPGMainOccHome = 71,			//View6, Background
	 kAudUDNumPGMainLArrow = 101,			//View7, Left Arrow
	 
	 kAudUDNumPGMainActSport = 111,		//View8, LAction
	 kAudUDNumPGMainActMovie = 112,			//View9, MAction
	 kAudUDNumPGMainActMusic = 113,		//View10, RAction
	 
	 kAudUDNumPGMainRArrow = 161,			//View11, Right Arrow
	 kAudUDNumPGMainHint = 171,			//View12, Hint
	 
	 */
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
		  //PGMain
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainSummer],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainSpring],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainAutumn],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainWinter],

					   
					   [NSString stringWithFormat:@"%d", kGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainActionPoint],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainDay],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainNight],

					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainMoodGood],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainMoodOk],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainMoodBad],

					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainCosSchoolGirl2],
		  
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainOccHome],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainLArrow],
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainActSport], // view 8
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainActMovie], // view 9
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainActMusic], // view 10
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainActCall], // view 8-2
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainActSms], // view 9-2
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainActMove], // view 10-2
		  
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainRArrow],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainHint],
		  
		  nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}
-(BOOL)setEntityForScenePGAchi{
	/*
	 //PGAchi
	 kAudUDNumPGAchiAuto = 1,		//View0, Auto
	 
	 kAudUDNumPGAchiAvaNormal = 11,		//View1, Avatar
	 
	 kAudUDNumPGAchiGiftAmount = 31,		//View2, Gift Amount
	 kAudUDNumPGAchiLArrow = 41,		//View3, Top Left Arrow
	 kAudUDNumPGAchiAlias = 51,			//View4, Alias
	 kAudUDNumPGAchiRArrow = 81,			//View5, Top Right Arrow
	 
	 kAudUDNumPGAchiGiftIconNone	= 91,	//View6, ULIcon
	 //	kAudUDNumPGAchiGiftIconNone	= 7,	//View7, UMIcon
	 //	kAudUDNumPGAchiGiftIconNone	= 8,	//View8, URIcon
	 //	kAudUDNumPGAchiGiftIconNone	= 9,	//View9, MLIcon
	 //	kAudUDNumPGAchiGiftIconNone	= 10,	//View10, MMIcon
	 
	 //	kAudUDNumPGAchiGiftIconNone	= 11,	//View11, MRIcon
	 //	kAudUDNumPGAchiGiftIconNone	= 12,	//View12, BLIcon
	 //	kAudUDNumPGAchiGiftIconNone	= 13,	//View13, BMIcon
	 //	kAudUDNumPGAchiGiftIconNone	= 14,	//View14, BRIcon
	 //	kAudUDNumPGAchiBLArrow = 41,		//View15, BLArrow
	 
	 kAudUDNumPGAchiGiftIcon1	= 92,	//Gift1
	 kAudUDNumPGAchiGiftIcon2	= 93,	//Gift2
	 kAudUDNumPGAchiGiftIcon3	= 94,	//Gift3
	 kAudUDNumPGAchiGiftIcon4	= 95,	//Gift4
	 kAudUDNumPGAchiGiftIcon5	= 96,	//Gift5
	 
	 kAudUDNumPGAchiGiftIcon6	= 97,	//Gift6
	 kAudUDNumPGAchiGiftIcon7	= 98,	//Gift7
	 kAudUDNumPGAchiGiftIcon8	= 99,	//Gift8
	 kAudUDNumPGAchiGiftIcon9	= 100,	//Gift9
	 
	 
	 kAudUDNumPGAchiPage = 211,			//View16, Page number
	 //	kAudUDNumPGAchiBRArrow = 81,		//View17, BRArrow
	 kAudUDNumPGAchiMessage = 231,		//View18, Message
	 kAudUDNumPGAchiHint = 241,			//View19, Hint
	 
	 */
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
		   //PGMain
		   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAvaNormal],
					   [NSString stringWithFormat:@"%d", kGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftAmount],
		   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiLArrow],
		   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias1],
		   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias2],
		   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias3],
		   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias4],
		   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias5],
		   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias6],
		   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias7],
		   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias8],
		   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias9],

		   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiRArrow],

		   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIconNone],
		   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon1],
		   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon2],
		   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon3],
		   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon4],

		   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon5],
		   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon6],
		   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon7],
		   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon8],
		   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon9],
		   [NSString stringWithFormat:@"%d", kGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiPage],
		   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiMessage],
		   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiHint],
					   
		   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiBgdBlueTile],
		   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiBgdPinkTile],

		   
		   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}

-(BOOL)setEntityForScenePGAttr{
	/*
	 //PGAttr
	 kAudUDNumPGAttrAuto = 1,			//View0, Auto
	 
	 kAudUDNumPGAttrAvaNormal = 11,		//View1, Avatar
	 kAudUDNumPGAttrWeekday = 31,		//View2, Weekday Sun
	 kAudUDNumPGAttrTime = 41,			//View3, Time
	 kAudUDNumPGAttrLArrow = 51,			//View4, Top Left Arrow
	 kAudUDNumPGAttrDButton = 61,		//View5, Detail Button
	 kAudUDNumPGAttrSButton = 62,		//View5, Schedule Button

	 kAudUDNumPGAttrRArrow = 71,			//View6, Top Right Arrow
	 kAudUDNumPGAttrSportAttrValue = 81,	//View7, UAttr Value
	 kAudUDNumPGAttrSportAttrBar	= 91,	//View8, UAttr Progress Bar
	 kAudUDNumPGAttrMovieAttrValue = 101,	//View9, MAttr Value
	 kAudUDNumPGAttrMovieAttrBar = 111,	//View10, MAttr Progress Bar
	 
	 kAudUDNumPGAttrMusicAttrValue = 121,//View11, BAttr Value
	 kAudUDNumPGAttrMusicAttrBar = 131,	//View12, BAttr Progress Bar
	 //	kAudUDNumPGAttrLArrow	= 51,			//View13, Bottom Left Arrow
	 kAudUDNumPGAttrPage	= 151,			//View14, Page Number
	 //	kAudUDNumPGAttrRArrow = 71,		//View15, Bottom Right Arrow
	 kAudUDNumPGAttrMessage = 171,		//View16, Message
	 kAudUDNumPGAttrHint	= 181,			//View17, Hint
	 
	 kAudUDNumPGAttrSportAttrTitle = 191,	//View18, UAttr Title
	 kAudUDNumPGAttrMovieAttrTitle	= 201,	//View19, MAttr Title
	 kAudUDNumPGAttrMusicAttrTitle = 211,//View20, BAttr Title
	 
	 
	 */
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:

					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrAvaNormal],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrWeekday],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrTime],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrLArrow],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrDButton], // View 5, Detail
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrSButton], // View 5, Schedule

		   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrRArrow],
					   [NSString stringWithFormat:@"%d", kGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrSportAttrValue],
					   [NSString stringWithFormat:@"%d", kGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrSportAttrBar],
					   [NSString stringWithFormat:@"%d", kGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrMovieAttrValue],
					   [NSString stringWithFormat:@"%d", kGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrMovieAttrBar],
		   
					   [NSString stringWithFormat:@"%d", kGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrMusicAttrValue],
					   [NSString stringWithFormat:@"%d", kGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrMusicAttrBar],
					   
					   [NSString stringWithFormat:@"%d", kGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrPage],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrMessage],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrHint],
					   
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrSportAttrTitle],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrMovieAttrTitle],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrMusicAttrTitle],
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrBgdBlueTile],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrBgdPinkTile],
 
					   
					   

		   
		   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}

-(BOOL)setEntityForScenePGTitle{
	/*

	 //PGTitle
	 kAudUDNumPGTitleAuto = 1,		//View0, Auto
	 
	 kAudUDNumPGTitleNew = 11,			//View1, goto NewGame
	 kAudUDNumPGTitleContinue = 12,	//View2, goto Load Game
	 kAudUDNumPGTitleWebsite		= 21,		//View3, goto Website

	 kAudUDNumPGTitleHeart	= 31,		//View4, Heart Shape Image
	 
	*/
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGTitleNew],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGTitleContinue],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGTitleWebsite],

					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGTitleHeart],
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}

-(BOOL)setEntityForScenePGDate{
	/*
	 
	 //PGDate
	 kAudUDNumPGDateAuto = 1,		//View0, Auto
	 
	 kAudUDNumPGDateSummer = 11,			//View1, Summer (Realtime Dynamic)
	 kAudUDNumPGDateActionPoint = 21,	//View2, Action Point (Text)
	 kAudUDNumPGDateDay		= 31,		//View3, Day (Realtime Dynamic) <Plural>
	 kAudUDNumPGDateMoodGood	= 41,		//View4, Mood: Good, Ok, Bad <Plural>
	 kAudUDNumPGDateCosSchoolGirl2 = 51,		//View5, Girl Animation <Plural>
	 
	 kAudUDNumPGDateOccHome = 71,			//View6, Background <Plural>
	 kAudUDNumPGDateLArrow = 101,			//View7, Left Arrow
	 
	 kAudUDNumPGDateLActButton = 111,		//View8, LAction Talk
	 kAudUDNumPGDateMActButton = 112,			//View9, MAction Romance
	 kAudUDNumPGDateRActButton = 113,		//View10, RAction Action
	 
	 kAudUDNumPGDateRArrow = 161,			//View11, Right Arrow
	 kAudUDNumPGDateHint = 171,			//View12, Hint
	 
	 
	 */
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateSummer], // view 1
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateSpring], // view 1
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateAutumn], // view 1
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateWinter], // view 1

					   
					   [NSString stringWithFormat:@"%d", kGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateActionPoint], // view 2
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateDay], // view 3
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateNight], // view 3

					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateMoodGood], // view 4
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateMoodOk], // view 4
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateMoodBad], // view 4

					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateCosSchoolGirl2], // view 5 temp

					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateOccHome], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionA], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionB], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionC], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionD], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionE], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionF], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionG], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionH], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionI], // view 6

					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateLArrow], // view 7
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateLActButton], // view 8
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateMActButton], // view 9
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateRActButton], // view 10
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateRArrow], // view 11
					   [NSString stringWithFormat:@"%d", kTextOut],		    [NSString stringWithFormat:@"%d", kAudUDNumPGDateHint], // view 12
					   [NSString stringWithFormat:@"%d", kTextOut],		    [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionA], // view 12
					   [NSString stringWithFormat:@"%d", kTextOut],		    [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionB], // view 12
					   [NSString stringWithFormat:@"%d", kTextOut],		    [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionC], // view 12
					   [NSString stringWithFormat:@"%d", kTextOut],		    [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionD], // view 12
					   [NSString stringWithFormat:@"%d", kTextOut],		    [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionE], // view 12
					   [NSString stringWithFormat:@"%d", kTextOut],		    [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionF], // view 12
					   [NSString stringWithFormat:@"%d", kTextOut],		    [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionG], // view 12
					   [NSString stringWithFormat:@"%d", kTextOut],		    [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionH], // view 12
					   [NSString stringWithFormat:@"%d", kTextOut],		    [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionI], // view 12

					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}

-(BOOL)setEntityForScenePGWalk{
	/*
	 
	 //PGWalk
	 kAudUDNumPGWalkAuto = 1,		//View0, Auto
	 
	 kAudUDNumPGWalkSummer = 11,			//View1, Summer (Realtime Dynamic)
	 kAudUDNumPGWalkActionPoint = 21,	//View2, Action Point (Text)
	 kAudUDNumPGWalkDay		= 31,		//View3, Day (Realtime Dynamic) <Plural>
	 kAudUDNumPGWalkMoodGood	= 41,		//View4, Mood: Good, Ok, Bad <Plural>
	 kAudUDNumPGWalkCosSchoolGirl2 = 51,		//View5, Girl Animation <Plural>
	 
	 kAudUDNumPGWalkOccHome = 71,			//View6, Background <Plural>
	 kAudUDNumPGWalkLArrow = 101,			//View7, Left Arrow
	 
	 kAudUDNumPGWalkLActButton = 111,		//View8, LAction Talk
	 kAudUDNumPGWalkMActButton = 112,			//View9, MAction Romance
	 kAudUDNumPGWalkRActButton = 113,		//View10, RAction Action
	 
	 kAudUDNumPGWalkRArrow = 161,			//View11, Right Arrow
	 kAudUDNumPGWalkHint = 171,			//View12, Hint
	 
	 
	 */
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkSummer], // view 1
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkSpring], // view 1
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkAutumn], // view 1
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkWinter], // view 1

					   [NSString stringWithFormat:@"%d", kGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkActionPoint], // view 2
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkDay], // view 3
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkNight], // view 3

					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkMoodGood], // view 4
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkCosSchoolGirl2], // view 5 temp
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccHome], // view 6
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionA], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionB], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionC], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionD], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionE], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionF], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionG], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionH], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionI], // view 6
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkLArrow], // view 7
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkLActButton], // view 8
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkMActButton], // view 9
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkRActButton], // view 10
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkRArrow], // view 11
					   [NSString stringWithFormat:@"%d", kTextOut],		    [NSString stringWithFormat:@"%d", kAudUDNumPGWalkHint], // view 12
					   
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionA], // view 12
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionB], // view 12
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionC], // view 12
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionD], // view 12
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionE], // view 12
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionF], // view 12
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionG], // view 12
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionH], // view 12
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionI], // view 12
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}

-(BOOL)setEntityForScenePGMap{
	/*
	 //PGMap
	 kAudUDNumPGMapAuto = 1,		//View0, Auto
	 
	 kAudUDNumPGMapSummer = 11,			//View1, Summer (Realtime Dynamic)
	 kAudUDNumPGMapActionPoint = 21,	//View2, Action Point (Text)
	 kAudUDNumPGMapDay		= 31,		//View3, Day (Realtime Dynamic)
	 kAudUDNumPGMapBack	= 61,		//View4, Back to Main
	 
	 kAudUDNumPGMapMapMain = 71,			//View5, Map Background
	 kAudUDNumPGMapMsgButton = 101,			//View6, Message Button
	 kAudUDNumPGMapMsgLabel = 111,			//View7, Message Label
	 
	 kAudUDNumPGMapHint = 171,			//View8, Hint
	 
	 kAudUDNumPGMapRegionA = 181,			//View9, Region A
	 kAudUDNumPGMapRegionB = 182,			//View10, Region B
	 kAudUDNumPGMapRegionC = 183,			//View11, Region C
	 
	 kAudUDNumPGMapRegionD = 184,			//View12, Region D
	 kAudUDNumPGMapRegionE = 185,			//View13, Region E
	 kAudUDNumPGMapRegionF = 186,			//View14, Region F
	 
	 kAudUDNumPGMapRegionG = 187,			//View15, Region G
	 kAudUDNumPGMapRegionH = 188,			//View16, Region H
	 kAudUDNumPGMapRegionI = 189,			//View17, Region I
	
	 
	 */
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapSummer], // view 1
					   [NSString stringWithFormat:@"%d", kGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapActionPoint], // view 2
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapDay], // view 3
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapBack], // view 4
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMapMain], // view 5 temp
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionNoneDetail], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionADetail], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionBDetail], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionCDetail], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionDDetail], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionEDetail], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionFDetail], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionGDetail], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionHDetail], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionIDetail], // view 6

					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButton], // view 7
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonA], // view 7
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonB], // view 7
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonC], // view 7
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonD], // view 7
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonE], // view 7
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonF], // view 7
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonG], // view 7
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonH], // view 7
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonI], // view 7

					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonA], // view 7
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonB], // view 7
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonC], // view 7
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonD], // view 7
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonE], // view 7
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonF], // view 7
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonG], // view 7
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonH], // view 7
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonI], // view 7
					   
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapHint], // view 8
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionA], // view 9
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionB], // view 10
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionC], // view 11
					   [NSString stringWithFormat:@"%d", kGraphic2D],		    [NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionD], // view 12
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionE], // view 13
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionF], // view 14
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionG], // view 15
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionH], // view 16
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionI], // view 17
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicNone], // view 18

					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicA], // view 18
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicB], // view 18
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicC], // view 18
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicD], // view 18
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicE], // view 18
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicF], // view 18
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicG], // view 18
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicH], // view 18
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicI], // view 18

					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapDatingIcon], // view 19
					   
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLvReqIconNone], // view 20 - 22
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLvReqIconOk], // view 20 - 22
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLvReqIconNo], 
					   
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionA], //view 23-25
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionA], 
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionA], 
					   
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionB], //view 23-25
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionB], 
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionB], 
					   
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionC], //view 23-25
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionC], 
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionC], 
					   
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionD], //view 23-25
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionD], 
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionD], 
					   
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionE], //view 23-25
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionE], 
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionE], 
					   
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionF], //view 23-25
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionF], 
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionF], 
					   
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionG], //view 23-25
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionG], 
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionG], 
					   
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionH], //view 23-25
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionH], 
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionH], 
					   
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionI], //view 23-25
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionI], 
					   [NSString stringWithFormat:@"%d", kRegion],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionI], 



					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}

-(BOOL)setEntityForScenePGEvent{
	/*
	 //PGEvent
	 kAudUDNumPGEventAuto = 1,			//View0, Auto
	 
	 kAudUDNumPGEventSummer = 11,		//View1, Summer (Realtime Dynamic)
	 kAudUDNumPGEventActionPoint = 21,	//View2, Action Point (Text)
	 kAudUDNumPGEventDay		= 31,		//View3, Day (Realtime Dynamic)
	 kAudUDNumPGEventMoodGood	= 41,		//View4, Mood: Good, Ok, Bad
	 kAudUDNumPGEventCosSchoolGirl2 = 51,			//View5, Avatar Posture
	 
	 kAudUDNumPGEventOccHome = 71,			//View6, Place Background
	 kAudUDNumPGEventMsgButton = 101,			//View7, Message Button
	 kAudUDNumPGEventMsgLabel = 111,			//View8, Message Label
	 
	 kAudUDNumPGEventHint = 171,			//View9, Hint
	 
	 
	 */
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventSummer], // view 1
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventSpring], // view 1
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventAutumn], // view 1
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventWinter], // view 1

					   
					   [NSString stringWithFormat:@"%d", kGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventActionPoint], // view 2
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventDay], // view 3
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventNight], // view 3

					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventMoodGood], // view 4
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventCosSchoolGirl2], // view 5
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventOccHome], // view 6
					   //[NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventMsgButton], // view 7
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventMsgLabel], // view 8
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventHint], // view 9
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventBgdBlueTile], // view 10
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventBgdPinkTile], // view 10

					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}

-(BOOL)setEntityForScenePGRomance{
	/*
	 //PGRomance
	 kAudUDNumPGRomanceAuto = 1,			//View0, Auto
	 
	 kAudUDNumPGRomanceSummer = 11,		//View1, Summer (Realtime Dynamic)
	 kAudUDNumPGRomanceActionPoint = 21,	//View2, Action Point (Text)
	 kAudUDNumPGRomanceDay		= 31,		//View3, Day (Realtime Dynamic)
	 kAudUDNumPGRomanceMoodGood	= 41,		//View4, Mood: Good, Ok, Bad
	 
	 //View 5,
	 kAudUDNumPGRomanceKiss = 51,			//	Romance Animation 1: Kiss
	 kAudUDNumPGRomanceHug = 52,				//	Romance Animation 2: Hug
	 kAudUDNumPGRomanceHold = 53,		//	Romance Animation 3: Hold Hand
	 
	 
	 
	 kAudUDNumPGRomanceOccHome = 71,			//View6, Place Background
	 kAudUDNumPGRomanceMsgButton = 101,			//View7, Message Button
	 kAudUDNumPGRomanceMsgLabel = 111,			//View8, Message Label
	 
	 kAudUDNumPGRomanceHint = 171,			//View9, Hint
	 
	 
	 
	 */
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceSummer], // view 1
					   [NSString stringWithFormat:@"%d", kGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceActionPoint], // view 2
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceDay], // view 3
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceMoodGood], // view 4
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceKiss], // view 5(1)
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceHug], // view 5(2)
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceHold], // view 5(3)

					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceOccHome], // view 6
					   //[NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceMsgButton], // view 7
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceMsgLabel], // view 8
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceHint], // view 9
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}

-(BOOL)setEntityForScenePGDetail{
	/*
	 //PGDetail
	 kAudUDNumPGDetailAuto = 1,		//View0, Auto
	 
	 kAudUDNumPGDetailBack = 11,			//View1, Back to Previous
	 kAudUDNumPGDetailAtPointLabel = 12,	//View2, At Point Label
	 kAudUDNumPGDetailDiaryTable = 21,		//View3, Diary List
	 kAudUDNumPGDetailHint	= 31,		//View4, Hint Label
	 
	 
	 */
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailBack],
					   [NSString stringWithFormat:@"%d", kGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailAtPointLabel],
					   //Table is setup separately
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumb],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbA],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbB],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbC],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbD],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbE],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbF],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbG],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbH],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbI],

					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailHint], // view 4
					   
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionATitle], // view 5
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionBTitle], // view 5
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionCTitle], // view 5
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionDTitle], // view 5
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionETitle], // view 5
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionFTitle], // view 5
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionGTitle], // view 5
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionHTitle], // view 5
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionITitle], // view 5
					   
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionAEffect1], // view 6
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionAEffect2], // view 7
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionAEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionBEffect1], // view 6
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionBEffect2], // view 7
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionBEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionCEffect1], // view 6
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionCEffect2], // view 7
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionCEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionDEffect1], // view 6
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionDEffect2], // view 7
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionDEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionEEffect1], // view 6
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionEEffect2], // view 7
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionEEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionFEffect1], // view 6
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionFEffect2], // view 7
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionFEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionGEffect1], // view 6
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionGEffect2], // view 7
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionGEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionHEffect1], // view 6
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionHEffect2], // view 7
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionHEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionIEffect1], // view 6
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionIEffect2], // view 7
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionIEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionADescription], // view 9
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionBDescription], // view 9
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionCDescription], // view 9
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionDDescription], // view 9
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionEDescription], // view 9
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionFDescription], // view 9
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionGDescription], // view 9
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionHDescription], // view 9
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionIDescription], // view 9

					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}

-(BOOL)setEntityForScenePGArrange{
	/*
	 //PGArrange
	 kAudUDNumPGArrangeAuto = 1,		//View0, Auto
	 
	 kAudUDNumPGArrangeBack = 11,			//View1, Back to Previous
	 kAudUDNumPGArrangeAtPointLabel = 12,	//View2, At Point Label
	 kAudUDNumPGArrangeHint	= 21,		//View3, Hint Label
	 

	 kAudUDNumPGArrange10To11 = 31,		//View4, 10 to 11
	 kAudUDNumPGArrange11To12 = 32,		//View5, 11 to 12
	 kAudUDNumPGArrange12To13 = 33,		//View6, 12 to 13
	 kAudUDNumPGArrange13To14 = 34,		//View7, 13 to 14
	 kAudUDNumPGArrange14To15 = 35,		//View8, 14 to 15
	 
	 kAudUDNumPGArrange15To16 = 36,		//View9, 15 to 16
	 kAudUDNumPGArrange16To17 = 37,		//View10, 16 to 17
	 kAudUDNumPGArrange17To18 = 38,		//View11, 17 to 18
	 kAudUDNumPGArrange18To19 = 39,		//View12, 18 to 19
	 kAudUDNumPGArrange19To20 = 40,		//View13, 19 to 20
	 
	 kAudUDNumPGArrange20To21 = 41,		//View14, 20 to 21
	 kAudUDNumPGArrange21To22 = 42,		//View15, 21 to 22
	 kAudUDNumPGArrange22To23 = 43,		//View16, 22 to 23
	 kAudUDNumPGArrange23To24 = 44,		//View17, 23 to 24
	 
	 
	 //kAudUDNumPGArrangeAvailable = 61,		//View4-17, Available
	 //kAudUDNumPGArrangeOccupied = 62,		//View4-17, Occupied
	 
	 
	 */
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeBack], // view 1
					   [NSString stringWithFormat:@"%d", kGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAtPointLabel], // view 2
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeHint], // view 3
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable10To11], // view 4
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable11To12], // view 5 temp
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable12To13], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable13To14], // view 7
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable14To15], // view 8
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable15To16], // view 9
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable16To17], // view 10
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable17To18], // view 11
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable18To19], // view 12
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable19To20], // view 13
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable20To21], // view 14
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable21To22], // view 15
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable22To23], // view 16
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable23To24], // view 17
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied10To11], // view 4
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied11To12], // view 5 temp
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied12To13], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied13To14], // view 7
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied14To15], // view 8
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied15To16], // view 9
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied16To17], // view 10
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied17To18], // view 11
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied18To19], // view 12
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied19To20], // view 13
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied20To21], // view 14
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied21To22], // view 15
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied22To23], // view 16
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied23To24], // view 17
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}

-(BOOL)setEntityForScenePGPlace{
	/*
	 //PGPlace
	 kAudUDNumPGPlaceAuto = 1,		//View0, Auto
	 
	 kAudUDNumPGPlaceBack = 11,			//View1, Back to Previous
	 kAudUDNumPGPlaceAtPointLabel = 12,	//View2, At Point Label
	 kAudUDNumPGPlaceLocationTable = 21,		//View3, Location List
	 kAudUDNumPGPlaceHint	= 31,		//View4, Hint Label
	 
	 
	 */
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGPlaceBack],
					   [NSString stringWithFormat:@"%d", kGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGPlaceAtPointLabel],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGPlaceHint],
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGPlaceRegionA],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGPlaceRegionB],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGPlaceRegionC],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGPlaceRegionD],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGPlaceRegionE],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGPlaceRegionF],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGPlaceRegionG],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGPlaceRegionH],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGPlaceRegionI],

					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}
//14
-(BOOL)setEntityForScenePGSchedule{
	/*
	 //PGSchedule
	 kAudUDNumPGScheduleAuto = 1,		//View0, Auto
	 
	 kAudUDNumPGScheduleBack = 11,			//View1, Back to Previous
	 kAudUDNumPGScheduleAtPointLabel = 12,	//View2, At Point Label
	 kAudUDNumPGScheduleHint	= 21,		//View3, Hint Label
	 
	 
	 kAudUDNumPGSchedule10To11 = 31,		//View4, 10 to 11
	 kAudUDNumPGSchedule11To12 = 32,		//View5, 11 to 12
	 kAudUDNumPGSchedule12To13 = 33,		//View6, 12 to 13
	 kAudUDNumPGSchedule13To14 = 34,		//View7, 13 to 14
	 kAudUDNumPGSchedule14To15 = 35,		//View8, 14 to 15
	 
	 kAudUDNumPGSchedule15To16 = 36,		//View9, 15 to 16
	 kAudUDNumPGSchedule16To17 = 37,		//View10, 16 to 17
	 kAudUDNumPGSchedule17To18 = 38,		//View11, 17 to 18
	 kAudUDNumPGSchedule18To19 = 39,		//View12, 18 to 19
	 kAudUDNumPGSchedule19To20 = 40,		//View13, 19 to 20
	 
	 kAudUDNumPGSchedule20To21 = 41,		//View14, 20 to 21
	 kAudUDNumPGSchedule21To22 = 42,		//View15, 21 to 22
	 kAudUDNumPGSchedule22To23 = 43,		//View16, 22 to 23
	 kAudUDNumPGSchedule23To24 = 44,		//View17, 23 to 24
	 
	 
	 //kAudUDNumPGScheduleAvailable = 61,		//View4-17, Available
	 //kAudUDNumPGScheduleOccupied = 62,		//View4-17, Occupied
	 
	 
	 */
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleBack], // view 1
					   [NSString stringWithFormat:@"%d", kGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAtPointLabel], // view 2
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleHint], // view 3
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventNone], // view 4 temp
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventRegionA], // view 4-17
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventRegionB], // view 4-17
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventRegionC], // view 4-17
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventRegionD], // view 4-17
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventRegionE], // view 4-17
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventRegionF], // view 4-17
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventRegionG], // view 4-17
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventRegionH], // view 4-17
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventRegionI], // view 4-17

					   /*
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGSchedule11To12], // view 5
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGSchedule12To13], // view 6
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGSchedule13To14], // view 7
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGSchedule14To15], // view 8
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGSchedule15To16], // view 9
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGSchedule16To17], // view 10
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGSchedule17To18], // view 11
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGSchedule18To19], // view 12
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGSchedule19To20], // view 13
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGSchedule20To21], // view 14
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGSchedule21To22], // view 15
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGSchedule22To23], // view 16
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGSchedule23To24], // view 17
						*/
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}

-(BOOL)setEntityForScenePGTalk{
	/*
	 //PGTalk
	 kAudUDNumPGTalkAuto = 1,			//View0, Auto
	 
	 kAudUDNumPGTalkSummer = 11,		//View1, Summer (Realtime Dynamic)
	 kAudUDNumPGTalkActionPoint = 21,	//View2, Action Point (Text)
	 kAudUDNumPGTalkDay		= 31,		//View3, Day (Realtime Dynamic)
	 kAudUDNumPGTalkMoodGood	= 41,		//View4, Mood: Good, Ok, Bad
	 kAudUDNumPGTalkCosSchoolGirl2 = 51,			//View5, Avatar Posture
	 
	 kAudUDNumPGTalkOccHome = 71,			//View6, Place Background
	 kAudUDNumPGTalkMsgButton = 101,			//View7, Message Button
	 kAudUDNumPGTalkMsgLabel = 111,			//View8, Message Label
	 
	 kAudUDNumPGTalkHint = 171,			//View9, Hint
	 
	 
	 */
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGTalkSummer], // view 1
					   [NSString stringWithFormat:@"%d", kGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGTalkActionPoint], // view 2
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGTalkDay], // view 3
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGTalkMoodGood], // view 4
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGTalkCosSchoolGirl2], // view 5
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGTalkOccHome], // view 6
					   //[NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGTalkMsgButton], // view 7
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGTalkMsgLabel], //view 8

					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGTalkHint], // view 9

					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}

-(BOOL)setEntityForScenePGSMS{
	/*
	 //PGSMS
	 kAudUDNumPGSMSAuto = 1,		//View0, Auto
	 
	 kAudUDNumPGSMSBack = 11,			//View1, Back to Previous
	 kAudUDNumPGSMSAtPointLabel = 12,	//View2, At Point Label
	 kAudUDNumPGSMSTextView = 21,		//View3, TextView
	 
	 kAudUDNumPGSMSHint	= 31,		//View4, Hint Label
	 
	 
	 */
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGSMSBack],
					   [NSString stringWithFormat:@"%d", kGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGSMSAtPointLabel],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGSMSTextView],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGSMSHint],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGSMSSend],

					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}

-(BOOL)setEntityForScenePGMConfirm{
	/*
	 //PGMConfirm
	 kAudUDNumPGMConfirmAuto = 1,		//View0, Auto
	 
	 kAudUDNumPGMConfirmAtPointLabel = 11,	//View1, At Point Label
	 kAudUDNumPGMConfirmTextView1 = 12,			//View2, Text View
	 
	 kAudUDNumPGMConfirmLeftButton = 21,		//View3, Left Button
	 kAudUDNumPGMConfirmRightButton = 22,		//View4, Right Button
	 
	 
	 kAudUDNumPGMConfirmHint	= 31,		//View5, Hint Label
	 
	 
	 */
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   [NSString stringWithFormat:@"%d", kGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmAtPointLabel],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView1],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView2],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView3],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView4],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView5],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView6],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView7],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView8],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView9],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView10],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView11],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView12],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView13],

					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmLeftButton],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmRightButton],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmHint],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle1],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle2],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle3],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle4],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle5],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle6],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle7],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle8],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle9],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle10],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle11],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle12],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle13],

					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmBgdBlueTile],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmBgdPinkTile],



					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}

-(BOOL)setEntityForScenePGMAlert{
	/*
	 //PGMAlert
	 kAudUDNumPGMAlertAuto = 1,		//View0, Auto
	 
	 kAudUDNumPGMAlertAtPointLabel = 11,	//View1, At Point Label
	 kAudUDNumPGMAlertTextView1 = 12,			//View2, Text View
	 
	 kAudUDNumPGMAlertMidButton = 21,		//View3, Left Button
	 
	 
	 kAudUDNumPGMAlertHint	= 31,		//View4, Hint Label
	 
	 
	 */
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   [NSString stringWithFormat:@"%d", kGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertAtPointLabel],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTextView1],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTextView2],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTextView3],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTextView4],

					   
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertMidButton],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertHint],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTitle1],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTitle2],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTitle3],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTitle4],

					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertBgdBlueTile],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertBgdPinkTile],


					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}

-(BOOL)setEntityForScenePGMSelection{
	/*
	 //PGMSelection
	 kAudUDNumPGMSelectionAuto = 1,		//View0, Auto
	 
	 kAudUDNumPGMSelectionAtPointLabel = 11,	//View1, At Point Label
	 kAudUDNumPGMSelectionTextView1 = 12,			//View2, Text View
	 
	 kAudUDNumPGMSelectionChoice1Button = 21,		//View3, Choice 1 Button
	 kAudUDNumPGMSelectionChoice2Button = 22,		//View4, Choice 2 Button
	 kAudUDNumPGMSelectionChoice3Button = 23,		//View5, Choice 3 Button
	 
	 
	 kAudUDNumPGMSelectionHint	= 31,		//View6, Hint Label
	 
											//view7, title

											//view8, choice 1
											//view9, choice 2
											//view10, choice 3
	 
	 
	 */
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   [NSString stringWithFormat:@"%d", kGirl],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionAtPointLabel],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionTextView1],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionChoice1Button],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionChoice2Button],
					   [NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionChoice3Button],

					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionHint],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionTitle1],
					   
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionChoice1Label],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionChoice2Label],
					   [NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionChoice3Label],


					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}


@end
