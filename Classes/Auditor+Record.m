//
//  Auditor+Record.m
//  frdfrd
//
//  Created by westbugs on 10-11-01.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "Auditor+Record.h"

//Constants
#import "ConstantsSceneCode.h"
#import "ConstantsAuditor.h"
#import "ConstantsAuditorUserDefaults.h"
#import "ConstantsGlossaryDatabase.h"

@interface Auditor()

-(BOOL)setRecordForScenePGMain;
-(BOOL)setRecordForScenePGAchi;
-(BOOL)setRecordForScenePGAttr;

-(BOOL)setRecordForPGTitle; // 4

-(BOOL)setRecordForPGDate; // 7
-(BOOL)setRecordForPGWalk; // 17

-(BOOL)setRecordForPGMap; // 8

-(BOOL)setRecordForPGEvent; // 9
-(BOOL)setRecordForPGRomance; // 10
-(BOOL)setRecordForPGDetail; // 11

-(BOOL)setRecordForPGArrange; // 12
-(BOOL)setRecordForPGPlace; // 13
-(BOOL)setRecordForPGSchedule; // 14

-(BOOL)setRecordForPGTalk; // 15
-(BOOL)setRecordForPGSMS; // 16

-(BOOL)setRecordForPGMConfirm; // 31
-(BOOL)setRecordForPGMAlert; // 32
-(BOOL)setRecordForPGMSelection; // 33



@end

//Apply if retrieve value depends on role; Assume Record is chosen, the job for Auditor+Record is to determine the column
@implementation Auditor(Record)

-(BOOL)setRecordWithScene:(unsigned int)s{
	switch (s) {
		case kSceneCodePGMain:
			[self setRecordForScenePGMain];
			break;
		case kSceneCodePGAchi:
			[self setRecordForScenePGAchi];
			break;
		case kSceneCodePGAttr:
			[self setRecordForScenePGAttr];
			break;
		case kSceneCodePGTitle:
			[self setRecordForPGTitle];
			break;
		case kSceneCodePGDate:
			[self setRecordForPGDate];
			break;
		case kSceneCodePGWalk:
			[self setRecordForPGWalk]; // 17
			break;
		case kSceneCodePGMap:
			[self setRecordForPGMap];
			break;
		case kSceneCodePGEvent:
			[self setRecordForPGEvent];
			break;
		case kSceneCodePGRomance:
			[self setRecordForPGRomance];
			break;
		case kSceneCodePGDetail:
			[self setRecordForPGDetail];
			break;
		case kSceneCodePGArrange:
			[self setRecordForPGArrange];
			break;
		case kSceneCodePGPlace:
			[self setRecordForPGPlace];
			break;
		case kSceneCodePGSchedule:
			[self setRecordForPGSchedule];
			break;
		case kSceneCodePGTalk:
			[self setRecordForPGTalk];
			break;
		case kSceneCodePGSMS:
			[self setRecordForPGSMS];
			break;
		case kSceneCodePGMConfirm:
			[self setRecordForPGMConfirm];
			break;
		case kSceneCodePGMAlert:
			[self setRecordForPGMAlert];
			break;
		case kSceneCodePGMSelection:
			[self setRecordForPGMSelection];
			break;
			
			
		default:
			break;
	}
	if (!self.dictionary)
		return NO;
	return YES;
}

-(BOOL)setRecordForScenePGMain{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGMain
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainSummer],
					   [NSString stringWithFormat:@"%@", kGlossaryAtTotal],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainActionPoint],
					   //[NSString stringWithFormat:@"%@", kGlossaryAT],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainActionPoint],

					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainHint],
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
	
}
-(BOOL)setRecordForScenePGAchi{
	
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGAchi
					   [NSString stringWithFormat:@"%@", kGlossaryGiftTotal],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftAmount],

					   //[NSString stringWithFormat:@"%@", kGlossaryGift],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftAmount],
					   
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias1],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias2],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias3],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias4],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias5],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias6],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias7],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias8],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias9],

					   //[NSString stringWithFormat:@"%@", kGlossaryAlias],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias],
					   [NSString stringWithFormat:@"%@", kGlossaryPage],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiPage],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiMessage],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGAchiHint],
					   nil];
	
	self.dictionary = d;
	[d release];
	
	return YES;
}
-(BOOL)setRecordForScenePGAttr{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGMain
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrWeekday],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrTime],
					   [NSString stringWithFormat:@"%@", kGlossarySportLv],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrSportAttrValue],
					   [NSString stringWithFormat:@"%@", kGlossarySportExp],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrSportAttrBar],
					   [NSString stringWithFormat:@"%@", kGlossaryMovieLv],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrMovieAttrValue],
					   [NSString stringWithFormat:@"%@", kGlossaryMovieExp],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrMovieAttrBar],
					   
					   [NSString stringWithFormat:@"%@", kGlossaryMusicLv],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrMusicAttrValue],
					   [NSString stringWithFormat:@"%@", kGlossaryMusicExp],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrMusicAttrBar],
					   
					   [NSString stringWithFormat:@"%@", kGlossaryPage],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrPage],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrMessage],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrHint],
					   
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrSportAttrTitle],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrMovieAttrTitle],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGAttrMusicAttrTitle],
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
	
	
}

//4
-(BOOL)setRecordForPGTitle{return YES;}
//7
-(BOOL)setRecordForPGDate{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGDate
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateSummer],
					   [NSString stringWithFormat:@"%@", kGlossaryAtTotal],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateActionPoint],
					   //[NSString stringWithFormat:@"%@", kGlossaryAT],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainActionPoint],
					   
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateHint],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionA],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionB],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionC],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionD],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionE],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionF],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionG],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionH],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionI],


					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;	
}

//17
-(BOOL)setRecordForPGWalk{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGWalk
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkSummer],
					   [NSString stringWithFormat:@"%@", kGlossaryAtTotal],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkActionPoint],
					   //[NSString stringWithFormat:@"%@", kGlossaryAT],		[NSString stringWithFormat:@"%d", kAudUDNumPGMainActionPoint],
					   
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHint],
					   
					   [NSString stringWithFormat:@"%@", kGlossaryName],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionA], // view 12
					   [NSString stringWithFormat:@"%@", kGlossaryName],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionB], // view 12
					   [NSString stringWithFormat:@"%@", kGlossaryName],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionC], // view 12
					   [NSString stringWithFormat:@"%@", kGlossaryName],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionD], // view 12
					   [NSString stringWithFormat:@"%@", kGlossaryName],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionE], // view 12
					   [NSString stringWithFormat:@"%@", kGlossaryName],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionF], // view 12
					   [NSString stringWithFormat:@"%@", kGlossaryName],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionG], // view 12
					   [NSString stringWithFormat:@"%@", kGlossaryName],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionH], // view 12
					   [NSString stringWithFormat:@"%@", kGlossaryName],		[NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionI], // view 12
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;	
}

//8
-(BOOL)setRecordForPGMap{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGMap
					   //[NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapSummer],
					   [NSString stringWithFormat:@"%@", kGlossaryAtTotal],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapActionPoint], //Girl
					   
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapHint], //TextOut
					   
					   [NSString stringWithFormat:@"%@", kGlossaryLvReqA],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionA], //Region
					   [NSString stringWithFormat:@"%@", kGlossaryLvReqB],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionA], //Region
					   [NSString stringWithFormat:@"%@", kGlossaryLvReqC],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionA], //Region

					   [NSString stringWithFormat:@"%@", kGlossaryLvReqA],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionB], //Region
					   [NSString stringWithFormat:@"%@", kGlossaryLvReqB],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionB], //Region
					   [NSString stringWithFormat:@"%@", kGlossaryLvReqC],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionB], //Region
					   
					   [NSString stringWithFormat:@"%@", kGlossaryLvReqA],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionC], //Region
					   [NSString stringWithFormat:@"%@", kGlossaryLvReqB],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionC], //Region
					   [NSString stringWithFormat:@"%@", kGlossaryLvReqC],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionC], //Region
					   
					   [NSString stringWithFormat:@"%@", kGlossaryLvReqA],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionD], //Region
					   [NSString stringWithFormat:@"%@", kGlossaryLvReqB],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionD], //Region
					   [NSString stringWithFormat:@"%@", kGlossaryLvReqC],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionD], //Region
					   
					   [NSString stringWithFormat:@"%@", kGlossaryLvReqA],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionE], //Region
					   [NSString stringWithFormat:@"%@", kGlossaryLvReqB],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionE], //Region
					   [NSString stringWithFormat:@"%@", kGlossaryLvReqC],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionE], //Region
					   
					   [NSString stringWithFormat:@"%@", kGlossaryLvReqA],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionF], //Region
					   [NSString stringWithFormat:@"%@", kGlossaryLvReqB],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionF], //Region
					   [NSString stringWithFormat:@"%@", kGlossaryLvReqC],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionF], //Region
					   
					   [NSString stringWithFormat:@"%@", kGlossaryLvReqA],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionG], //Region
					   [NSString stringWithFormat:@"%@", kGlossaryLvReqB],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionG], //Region
					   [NSString stringWithFormat:@"%@", kGlossaryLvReqC],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionG], //Region
					   
					   [NSString stringWithFormat:@"%@", kGlossaryLvReqA],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionH], //Region
					   [NSString stringWithFormat:@"%@", kGlossaryLvReqB],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionH], //Region
					   [NSString stringWithFormat:@"%@", kGlossaryLvReqC],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionH], //Region
					   
					   [NSString stringWithFormat:@"%@", kGlossaryLvReqA],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionI], //Region
					   [NSString stringWithFormat:@"%@", kGlossaryLvReqB],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionI], //Region
					   [NSString stringWithFormat:@"%@", kGlossaryLvReqC],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionI], //Region
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}
//9
-(BOOL)setRecordForPGEvent{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGMap
					   //[NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapSummer],
					   [NSString stringWithFormat:@"%@", kGlossaryAtTotal],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventActionPoint],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventMsgLabel],
					   
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventHint],
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}
//10
-(BOOL)setRecordForPGRomance{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGRomance
					   //[NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapSummer],
					   [NSString stringWithFormat:@"%@", kGlossaryAtTotal],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceActionPoint],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceMsgLabel],
					   
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceHint],
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}
//11
-(BOOL)setRecordForPGDetail{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGDetail
					   //[NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapSummer],
					   [NSString stringWithFormat:@"%@", kGlossaryAtTotal],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailAtPointLabel],
					   
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailHint],
					   
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionATitle], // view 5
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionBTitle], // view 5
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionCTitle], // view 5
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionDTitle], // view 5
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionETitle], // view 5
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionFTitle], // view 5
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionGTitle], // view 5
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionHTitle], // view 5
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionITitle], // view 5

					   
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionAEffect1], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionAEffect2], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionAEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionBEffect1], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionBEffect2], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionBEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionCEffect1], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionCEffect2], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionCEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionDEffect1], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionDEffect2], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionDEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionEEffect1], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionEEffect2], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionEEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionFEffect1], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionFEffect2], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionFEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionGEffect1], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionGEffect2], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionGEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionHEffect1], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionHEffect2], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionHEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionIEffect1], // view 6
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionIEffect2], // view 7
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionIEffect3], // view 8
					   
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionADescription], // view 9
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionBDescription], // view 9
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionCDescription], // view 9
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionDDescription], // view 9
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionEDescription], // view 9
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionFDescription], // view 9
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionGDescription], // view 9
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionHDescription], // view 9
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionIDescription], // view 9

					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}
//12
-(BOOL)setRecordForPGArrange{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGArrange
					   //[NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapSummer],
					   [NSString stringWithFormat:@"%@", kGlossaryAtTotal],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAtPointLabel],
					   
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeHint],
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}
//13
-(BOOL)setRecordForPGPlace{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGPlace
					   //[NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapSummer],
					   [NSString stringWithFormat:@"%@", kGlossaryAtTotal],		[NSString stringWithFormat:@"%d", kAudUDNumPGPlaceAtPointLabel],
					   
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGPlaceHint],
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}
//14
-(BOOL)setRecordForPGSchedule{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGSchedule
					   //[NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapSummer],
					   [NSString stringWithFormat:@"%@", kGlossaryAtTotal],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAtPointLabel],
					   
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleHint],
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}
//15
-(BOOL)setRecordForPGTalk{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGMap
					   //[NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapSummer],
					   [NSString stringWithFormat:@"%@", kGlossaryAtTotal],		[NSString stringWithFormat:@"%d", kAudUDNumPGTalkActionPoint],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGTalkMsgLabel],
					   
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGTalkHint],
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}
//16
-(BOOL)setRecordForPGSMS{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGMap
					   //[NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapSummer],
					   [NSString stringWithFormat:@"%@", kGlossaryAtTotal],		[NSString stringWithFormat:@"%d", kAudUDNumPGSMSAtPointLabel],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGSMSTextView],
					   
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGSMSHint],
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}

//31
-(BOOL)setRecordForPGMConfirm{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGMConfirm
					   //[NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapSummer],
					   [NSString stringWithFormat:@"%@", kGlossaryAtTotal],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmAtPointLabel],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView1],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView2],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView3],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView4],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView5],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView6],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView7],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView8],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView9],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView10],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView11],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView12],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView13],

					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmHint],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle1],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle2],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle3],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle4],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle5],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle6],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle7],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle8],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle9],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle10],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle11],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle12],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle13],


					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}


//32
-(BOOL)setRecordForPGMAlert{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGMAlert
					   //[NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapSummer],
					   [NSString stringWithFormat:@"%@", kGlossaryAtTotal],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertAtPointLabel],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTextView1],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTextView2],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTextView3],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTextView4],

					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertHint],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTitle1],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTitle2],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTitle3],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTitle4],


					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}


//33
-(BOOL)setRecordForPGMSelection{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   //PGMSelection
					   //[NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapSummer],
					   [NSString stringWithFormat:@"%@", kGlossaryAtTotal],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionAtPointLabel],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionTextView1],
					   
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionHint],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionTitle1],
					   
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionChoice1Label],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionChoice2Label],
					   [NSString stringWithFormat:@"%@", kGlossaryContent],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionChoice3Label],


					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}




@end
