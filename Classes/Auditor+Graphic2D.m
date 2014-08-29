//
//  Auditor+Graphic2D.m
//  frdfrd
//
//  Created by westbugs on 10-10-28.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "Auditor+Graphic2D.h"

//Constants
#import "ConstantsGlossaryDatabase.h"
#import "ConstantsAuditorUserDefaults.h"
	//Scene
#import "ConstantsSceneCode.h"
#import "ConstantsModelGeneral.h"
#import "ConstantsModelGenSize.h"

	//Graphic2D
#import "ConstantsModelGraphic2D.h"
#import "ConstantsModelG2DKindGift.h"
#import "ConstantsModelG2DKindEffect.h"

@implementation Auditor(Graphic2D)

-(BOOL)setGraphic2DWithScene:(unsigned int)s{
	switch (s) {
		case kSceneCodePGMain:
			[self setGraphic2DForPGMain];
			break;
		case kSceneCodePGAchi:
			[self setGraphic2DForPGAchi];
			break;
		case kSceneCodePGAttr:
			[self setGraphic2DForPGAttr];
			break;
			
		case kSceneCodePGTitle:
			[self setGraphic2DForPGTitle];
			break;
		case kSceneCodePGDate:
			[self setGraphic2DForPGDate];
			break;
		case kSceneCodePGWalk:
			[self setGraphic2DForPGWalk];
			break;			
		case kSceneCodePGMap:
			[self setGraphic2DForPGMap];
			break;
		case kSceneCodePGEvent:
			[self setGraphic2DForPGEvent];
			break;
		case kSceneCodePGRomance:
			[self setGraphic2DForPGRomance];
			break;
		case kSceneCodePGDetail:
			[self setGraphic2DForPGDetail];
			break;
		case kSceneCodePGArrange:
			[self setGraphic2DForPGArrange];
			break;
		case kSceneCodePGPlace:
			[self setGraphic2DForPGPlace];
			break;
		case kSceneCodePGSchedule:
			[self setGraphic2DForPGSchedule];
			break;
		case kSceneCodePGTalk:
			[self setGraphic2DForPGTalk];
			break;
		case kSceneCodePGSMS:
			[self setGraphic2DForPGSMS];
			break;
		case kSceneCodePGMConfirm:
			[self setGraphic2DForPGMConfirm];
			break;
		case kSceneCodePGMAlert:
			[self setGraphic2DForPGMAlert];
			break;
		case kSceneCodePGMSelection:
			[self setGraphic2DForPGMSelection];
			break;
			
		default:
			break;
	}
	if (!self.dictionary)
		return NO;
	return YES;
}

-(BOOL)setGraphic2DForPGMain{
	
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:

   /*
   PGMain
   
   kAudUDNumPGMainSummer = 11,			//View1, Summer (Realtime Dynamic)
										//View2, (Text)
   kAudUDNumPGMainDay		= 31,		//View3, Day (Realtime Dynamic)
   kAudUDNumPGMainMoodGood	= 41,		//View4, Mood: Good, Ok, Bad
   kAudUDNumPGMainCosSchoolGirl2 = 51,		//View5, Girl Posture
   
   kAudUDNumPGMainOccHome = 71,			//View6, Background
   kAudUDNumPGMainLArrow = 101,			//View7, Left Arrow
   
   kAudUDNumPGMainActSport = 111,		//View8, LAction
   kAudUDNumPGMainActMovie = 112,		//View9,	MAction
   kAudUDNumPGMainActMusic = 113,		//View10, RAction
	
	kAudUDNumPGMainActCall = 114,		//View8, LAction
	kAudUDNumPGMainActSms = 115,			//View9, MAction
	kAudUDNumPGMainActMove = 116,		//View10, RAction
   
   kAudUDNumPGMainRArrow = 161,			//View11, Right Arrow
										//View12 (Text)
   */
	
   //Object1 for view1
   [NSDictionary dictionaryWithObjectsAndKeys:	
	[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
	[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	[NSNumber numberWithUnsignedInt:kModelG2DKindUiSummer] ,kGlossaryKind,
	nil],
   //Key1 (Role from User default)
   [NSString stringWithFormat:@"%d", kAudUDNumPGMainSummer],
					   
					   //Object2 for view1
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiSpring] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMainSpring],
					   
					   //Object1 for view1
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiAutumn] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMainAutumn],
					   
					   //Object1 for view1
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiWinter] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMainWinter],
   
   
   //Object1 for view3
   [NSDictionary dictionaryWithObjectsAndKeys:	
	[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
	[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	[NSNumber numberWithUnsignedInt:kModelG2DKindUiDay] ,kGlossaryKind,
	nil],
   //Key1
   [NSString stringWithFormat:@"%d", kAudUDNumPGMainDay],
   
					   //Object2 for view3
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiNight] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMainNight],
					   
					   
   //Object1 for view4
   [NSDictionary dictionaryWithObjectsAndKeys:	
	[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
	[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	[NSNumber numberWithUnsignedInt:kModelG2DKindUiMoodGood] ,kGlossaryKind,
	nil],
   //Key1
   [NSString stringWithFormat:@"%d", kAudUDNumPGMainMoodGood],
					   
					   //Object2 for view4
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMoodOk] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMainMoodOk],
					   
					   //Object3 for view4
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMoodBad] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMainMoodBad],
   
   //Object1 for view5
   [NSDictionary dictionaryWithObjectsAndKeys:	
	[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
	[NSNumber numberWithUnsignedInt:kModelG2DInfoCharacter] ,kGlossaryInfo,
	[NSNumber numberWithUnsignedInt:kModelG2DKindCosSchoolGirl2] ,kGlossaryKind,
	nil],
   //Key1
   [NSString stringWithFormat:@"%d", kAudUDNumPGMainCosSchoolGirl2],
   
   //Object1 for view6
   [NSDictionary dictionaryWithObjectsAndKeys:	
	[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
	[NSNumber numberWithUnsignedInt:kModelG2DInfoOccasion] ,kGlossaryInfo,
	[NSNumber numberWithUnsignedInt:kModelG2DKindOccHome] ,kGlossaryKind,
	nil],
   //Key1
   [NSString stringWithFormat:@"%d", kAudUDNumPGMainOccHome],
   
   //Object1 for view7
   [NSDictionary dictionaryWithObjectsAndKeys:	
	[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
	[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	[NSNumber numberWithUnsignedInt:kModelG2DKindUiArrowLeft] ,kGlossaryKind,
	nil],
   //Key1
   [NSString stringWithFormat:@"%d", kAudUDNumPGMainLArrow],
   
   //Object1 for view8
   [NSDictionary dictionaryWithObjectsAndKeys:	
	[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
	[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	[NSNumber numberWithUnsignedInt:kModelG2DKindUiActSport] ,kGlossaryKind,
	nil],
   //Key1
   [NSString stringWithFormat:@"%d", kAudUDNumPGMainActSport],
					   
					   
	   //Object2 for view8
	   [NSDictionary dictionaryWithObjectsAndKeys:	
		[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
		[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
		[NSNumber numberWithUnsignedInt:kModelG2DKindUiActCall] ,kGlossaryKind,
		nil],
	   //Key1
	   [NSString stringWithFormat:@"%d", kAudUDNumPGMainActCall],
					   
   
   //Object1 for view9
   [NSDictionary dictionaryWithObjectsAndKeys:	
	[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
	[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	[NSNumber numberWithUnsignedInt:kModelG2DKindUiActMovie] ,kGlossaryKind,
	nil],
   //Key1
   [NSString stringWithFormat:@"%d", kAudUDNumPGMainActMovie],
					   
	   //Object2 for view9
	   [NSDictionary dictionaryWithObjectsAndKeys:	
		[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
		[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
		[NSNumber numberWithUnsignedInt:kModelG2DKindUiActSms] ,kGlossaryKind,
		nil],
	   //Key1
	   [NSString stringWithFormat:@"%d", kAudUDNumPGMainActSms],
   
   //Object1 for view10
   [NSDictionary dictionaryWithObjectsAndKeys:	
	[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
	[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	[NSNumber numberWithUnsignedInt:kModelG2DKindUiActMusic] ,kGlossaryKind,
	nil],
   //Key1
   [NSString stringWithFormat:@"%d", kAudUDNumPGMainActMusic],
					   
	   //Object2 for view10
	   [NSDictionary dictionaryWithObjectsAndKeys:	
		[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
		[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
		[NSNumber numberWithUnsignedInt:kModelG2DKindUiActMove] ,kGlossaryKind,
		nil],
	   //Key1
	   [NSString stringWithFormat:@"%d", kAudUDNumPGMainActMove],
   
   //Object1 for view11
   [NSDictionary dictionaryWithObjectsAndKeys:	
	[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
	[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	[NSNumber numberWithUnsignedInt:kModelG2DKindUiArrowRight] ,kGlossaryKind,
	nil],
   //Key1
   [NSString stringWithFormat:@"%d", kAudUDNumPGMainRArrow],
   
   
	nil];
	self.dictionary = d;
	//NSLog(@"%@", [d description]);
	[d release];
	
	return YES;
	
}

-(BOOL)setGraphic2DForPGAchi{
	

	/*
	 //PGAchi
	 
	 kAudUDNumPGAchiAvaNormal = 11,		//View1, Avatar
	 
	 //View2, Gift Amount (Text)
	 kAudUDNumPGAchiLArrow = 41,		//View3, Top Left Arrow
	 //View4, Alias (Text)
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
	 
	 
	 //View16, Page number (Text)
	 //	kAudUDNumPGAchiBRArrow = 81,		//View17, BRArrow
	 //View18, Message (Text)
	 //View19, Hint (Text)
	 */
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:

	//Object1 for view1
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiAvaNormal] ,kGlossaryKind,
	 nil],
	//Key1 (Role from User default)
	[NSString stringWithFormat:@"%d", kAudUDNumPGAchiAvaNormal],
	
	//Object1 for view3
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiArrowLeft] ,kGlossaryKind,
	 nil],
	//Key1 (Role from User default)
	[NSString stringWithFormat:@"%d", kAudUDNumPGAchiLArrow],
	
	//Object1 for view5
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiArrowRight] ,kGlossaryKind,
	 nil],
	//Key1 (Role from User default)
	[NSString stringWithFormat:@"%d", kAudUDNumPGAchiRArrow],
	
	//Object1 for view6
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiIcoGiftNone] ,kGlossaryKind,
	 nil],
	//Key1 (Role from User default)
	[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIconNone],
	
					   //Object2 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoGift] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindGiftIcon1] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon1],
	//Object1 for view7
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiIcoGiftNone] ,kGlossaryKind,
	 nil],
	//Key1 (Role from User default)
	[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIconNone],
	
					   //Object2 for view7
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoGift] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindGiftIcon2] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon2],
	//Object1 for view8
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiIcoGiftNone] ,kGlossaryKind,
	 nil],
	//Key1 (Role from User default)
	[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIconNone],
	
					   //Object2 for view8
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoGift] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindGiftIcon3] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon3],
					   
	//Object1 for view9
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiIcoGiftNone] ,kGlossaryKind,
	 nil],
	//Key1 (Role from User default)
	[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIconNone],
	
					   //Object2 for view9
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoGift] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindGiftIcon4] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon4],
					   
	//Object1 for view10
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiIcoGiftNone] ,kGlossaryKind,
	 nil],
	//Key1 (Role from User default)
	[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIconNone],
	
					   //Object2 for view9
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoGift] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindGiftIcon5] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon5],
					   					   
	//Object1 for view11
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiIcoGiftNone] ,kGlossaryKind,
	 nil],
	//Key1 (Role from User default)
	[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIconNone],
	
					   //Object2 for view11
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoGift] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindGiftIcon6] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon6],
					   
	//Object1 for view12
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiIcoGiftNone] ,kGlossaryKind,
	 nil],
	//Key1 (Role from User default)
	[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIconNone],
	
					   //Object2 for view12
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoGift] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindGiftIcon7] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon7],
					   
	//Object1 for view13
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiIcoGiftNone] ,kGlossaryKind,
	 nil],
	//Key1 (Role from User default)
	[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIconNone],
	
					   //Object2 for view13
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoGift] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindGiftIcon8] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon8],
					   
	//Object1 for view14
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiIcoGiftNone] ,kGlossaryKind,
	 nil],
	//Key1 (Role from User default)
	[NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIconNone],
	
					   //Object2 for view14
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoGift] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindGiftIcon9] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftIcon9],
					   
	//Object1 for view15
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiArrowLeft] ,kGlossaryKind,
	 nil],
	//Key1 (Role from User default)
	[NSString stringWithFormat:@"%d", kAudUDNumPGAchiLArrow],
	
	//Object1 for view17
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiArrowRight] ,kGlossaryKind,
	 nil],
	//Key1 (Role from User default)
	[NSString stringWithFormat:@"%d", kAudUDNumPGAchiRArrow],
	
	//Object1 for view20				   
   [NSDictionary dictionaryWithObjectsAndKeys:	
	[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
	[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	[NSNumber numberWithUnsignedInt:kModelG2DKindUiBgdBlueTile] ,kGlossaryKind,
	nil],
   //Key1 (Role from User default)
   [NSString stringWithFormat:@"%d", kAudUDNumPGAchiBgdBlueTile],

					   //Object2 for view20
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiBgdPinkTile] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAchiBgdPinkTile],
					   
					   
	nil];
	
	self.dictionary = d;
	//NSLog(@"Dictionary: %@",[d description]);
	[d release];
	
	return YES;
}

-(BOOL)setGraphic2DForPGAttr{
	
	/*PGAttr

	kAudUDNumPGAttrAvaNormal = 11,		//View1, Avatar
	//View2, Weekday Sun (Text)
	//View3, Time (Text)
	kAudUDNumPGAttrLArrow = 51,			//View4, Top Left Arrow
	kAudUDNumPGAttrDButton = 61,		//View5, Detail Button
	kAudUDNumPGAttrSButton = 62,		//View5, Schedule Button

	kAudUDNumPGAttrRArrow = 71,			//View6, Top Right Arrow
	//View7, UAttr Value (Text)
	//View8, UAttr Progress Bar (Number)
	//View9, MAttr Value (Text)
	//View10, MAttr Progress Bar (Number)
	
	//View11, BAttr Value (Text)
	//View12, BAttr Progress Bar (Number)
	//	kAudUDNumPGAttrLArrow	= 51,	//View13, Bottom Left Arrow
	//View14, Page Number (Text)
	//	kAudUDNumPGAttrRArrow = 71,		//View15, Bottom Right Arrow
	//View16, Message (Text)
	//View17, Hint (Text)
	*/
	
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:

					   //Object1 for view1
						[NSDictionary dictionaryWithObjectsAndKeys:	
						 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						 [NSNumber numberWithUnsignedInt:kModelG2DKindUiAvaNormal] ,kGlossaryKind,
						 nil],
						//Key1 (Role from User default)
						[NSString stringWithFormat:@"%d", kAudUDNumPGAttrAvaNormal],
					   
					   //Object1 for view4
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiArrowLeft] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAttrLArrow],
					   
					   //Object1 for view5
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAttr] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiIcoDetail] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAttrDButton],
					   
					   //Object2 for view5
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAttr] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiIcoSchedule] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAttrSButton],
					   
					   //Object1 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiArrowRight] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAttrRArrow],
					   
					   //Object1 for view8
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiAvaNormal] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAttrAvaNormal],
					   
					   //Object1 for view10
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiAvaNormal] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAttrAvaNormal],
					   
					   //Object1 for view12
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiAvaNormal] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAttrAvaNormal],
					   
					   //Object1 for view13
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiArrowLeft] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAttrLArrow],
					   
					   //Object1 for view15
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiArrowRight] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAttrRArrow],
					   
   //Object1 for view21
   [NSDictionary dictionaryWithObjectsAndKeys:	
	[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
	[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	[NSNumber numberWithUnsignedInt:kModelG2DKindUiBgdBlueTile] ,kGlossaryKind,
	nil],
   //Key1 (Role from User default)
   [NSString stringWithFormat:@"%d", kAudUDNumPGAttrBgdBlueTile],
   
					   //Object2 for view21
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiBgdPinkTile] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAttrBgdPinkTile],
					   
	nil];
	
	self.dictionary = d;
	//NSLog(@"Dictionary: %@",[d description]);
	[d release];
	
	return YES;
}

-(BOOL)setGraphic2DForPGTitle{
	
	/*
	 //PGTitle
	 kAudUDNumPGTitleAuto = 1,		//View0, Auto
	 
	 kAudUDNumPGTitleNew = 11,			//View1, goto NewGame
	 kAudUDNumPGTitleContinue = 12,	//View2, goto Load Game
	 kAudUDNumPGTitleWebsite		= 21,		//View3, goto Website

	 kAudUDNumPGTitleHeart	= 31,		//View4, Heart Shape Image
	 
	 */
	
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   //Object1 for view1
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGTitle] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiIcoNew] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGTitleNew],
					   
					   //Object1 for view2
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGTitle] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiIcoContinue] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGTitleContinue],
					   
					   //Object1 for view3
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGTitle] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiIcoTutorial] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGTitleWebsite],
					   
					   
					   //Object1 for view4
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGTitle] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiHeart] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGTitleHeart],
					   
					   
					   nil];
	
	self.dictionary = d;
	//NSLog(@"Dictionary: %@",[d description]);
	[d release];
	
	return YES;
}
//7
-(BOOL)setGraphic2DForPGDate{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   /*
						PGDate
						
						kAudUDNumPGDateSummer = 11,			//View1, Summer (Realtime Dynamic)
						//View2, (Text)
						kAudUDNumPGDateDay		= 31,		//View3, Day (Realtime Dynamic)
						kAudUDNumPGDateMoodGood	= 41,		//View4, Mood: Good, Ok, Bad
						kAudUDNumPGDateCosSchoolGirl2 = 51,		//View5, Girl Posture
						
						kAudUDNumPGDateOccHome = 71,			//View6, Background
						kAudUDNumPGDateLArrow = 101,			//View7, Left Arrow
						
						kAudUDNumPGDateActSport = 111,		//View8, LAction
						kAudUDNumPGDateActMovie = 112,		//View9, MAction
						kAudUDNumPGDateActMusic = 113,		//View10, RAction
						
						kAudUDNumPGDateRArrow = 161,			//View11, Right Arrow
						//View12 (Text)
						*/
					   
					   //Object1 for view1
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiSummer] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDateSummer],
					   
						   //Object2 for view1
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelG2DKindUiSpring] ,kGlossaryKind,
							nil],
						   //Key1 (Role from User default)
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDateSpring],
						   
						   //Object3 for view1
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelG2DKindUiAutumn] ,kGlossaryKind,
							nil],
						   //Key1 (Role from User default)
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDateAutumn],
						   
						   //Object4 for view1
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelG2DKindUiWinter] ,kGlossaryKind,
							nil],
						   //Key1 (Role from User default)
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDateWinter],
					   
					   
					   //Object1 for view3
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiDay] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDateDay],
					   
						   //Object2 for view3
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelG2DKindUiNight] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDateNight],
					   
					   //Object1 for view4
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMoodGood] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDateMoodGood],
					   
						   //Object1 for view4
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelG2DKindUiMoodOk] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDateMoodOk],
						   
						   //Object1 for view4
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelG2DKindUiMoodBad] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDateMoodBad],
					   
					   //Object1 for view5
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoCharacter] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindCosSchoolGirl2] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDateCosSchoolGirl2],
					   
					   //Object1 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoOccasion] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindOccHome] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDateOccHome],
					   
					   
						   //Object2 for view6
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelG2DInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelG2DKindOccGym] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionA],
						   
						   //Object3 for view6
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelG2DInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelG2DKindOccBeach] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionB],
						   
						   //Object4 for view6
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelG2DInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelG2DKindOccBowling] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionC],
						   
						   //Object5 for view6
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelG2DInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelG2DKindOccShoppingMall] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionD],
						   
						   //Object6 for view6
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelG2DInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelG2DKindOccRestaurant] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionE],
						   
						   //Object7 for view6
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelG2DInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelG2DKindOccPark] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionF],
						   
						   //Object8 for view6
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelG2DInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelG2DKindOccKaraoke] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionG],
						   
						   //Object9 for view6
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelG2DInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelG2DKindOccConcertHall] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionH],
					   
						   //Object10 for view6
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelG2DInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelG2DKindOccAquarium] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDateOccRegionI],
					   
					   //Object1 for view7
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiArrowLeft] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDateLArrow],
					   
					   //Object1 for view8
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGDate] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActTalk] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDateLActButton],
					   
					   //Object1 for view9
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGDate] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActRomance] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDateMActButton],
					   
					   //Object1 for view10
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGDate] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActLeave] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDateRActButton],
					   
					   //Object1 for view11
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiArrowRight] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDateRArrow],
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}

//17
-(BOOL)setGraphic2DForPGWalk{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   /*
						PGWalk
						
						kAudUDNumPGWalkSummer = 11,			//View1, Summer (Realtime Dynamic)
						//View2, (Text)
						kAudUDNumPGWalkDay		= 31,		//View3, Day (Realtime Dynamic)
						kAudUDNumPGWalkMoodGood	= 41,		//View4, Mood: Good, Ok, Bad
						kAudUDNumPGWalkCosSchoolGirl2 = 51,		//View5, Girl Posture
						
						kAudUDNumPGWalkOccHome = 71,			//View6, Background
						kAudUDNumPGWalkLArrow = 101,			//View7, Left Arrow
						
						kAudUDNumPGWalkActSport = 111,		//View8, LAction
						kAudUDNumPGWalkActMovie = 112,		//View9, MAction
						kAudUDNumPGWalkActMusic = 113,		//View10, RAction
						
						kAudUDNumPGWalkRArrow = 161,			//View11, Right Arrow
						//View12 (Text)
						*/
					   
					   //Object1 for view1
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiSummer] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkSummer],
					   
						   //Object2 for view1
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelG2DKindUiSpring] ,kGlossaryKind,
							nil],
						   //Key1 (Role from User default)
						   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkSpring],

						   //Object3 for view1
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelG2DKindUiAutumn] ,kGlossaryKind,
							nil],
						   //Key1 (Role from User default)
						   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkAutumn],

						   //Object4 for view1
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelG2DKindUiWinter] ,kGlossaryKind,
							nil],
						   //Key1 (Role from User default)
						   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkWinter],
					   
					   
					   
					   //Object1 for view3
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiDay] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkDay],
					   
						   //Object2 for view3
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelG2DKindUiNight] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkNight],
					   
					   //Object1 for view4
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMoodGood] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkMoodGood],
					   
					   //Object1 for view5
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoCharacter] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindCosSchoolGirl2] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkCosSchoolGirl2],
					   
	   //Object1 for view6
	   [NSDictionary dictionaryWithObjectsAndKeys:	
		[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
		[NSNumber numberWithUnsignedInt:kModelG2DInfoOccasion] ,kGlossaryInfo,
		[NSNumber numberWithUnsignedInt:kModelG2DKindOccHome] ,kGlossaryKind,
		nil],
	   //Key1
	   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccHome],
					   
					   //Object2 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoOccasion] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindOccGym] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionA],
					   
					   //Object3 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoOccasion] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindOccBeach] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionB],
					   
					   //Object4 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoOccasion] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindOccBowling] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionC],
					   
					   //Object5 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoOccasion] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindOccShoppingMall] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionD],
					   
					   //Object6 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoOccasion] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindOccRestaurant] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionE],
					   
					   //Object7 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoOccasion] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindOccPark] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionF],
					   
					   //Object8 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoOccasion] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindOccKaraoke] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionG],
					   
					   //Object9 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoOccasion] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindOccConcertHall] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionH],
					   
					   //Object9 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoOccasion] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindOccAquarium] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkOccRegionI],
					   
					   
					   //Object1 for view7
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiArrowLeft] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkLArrow],
					   
					   //Object1 for view8
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGDate] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActTalk] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkLActButton],
					   
					   //Object1 for view9
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGWalk] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActPlay] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkMActButton],
					   
					   //Object1 for view10
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGDate] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActLeave] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkRActButton],
					   
					   //Object1 for view11
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiArrowRight] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkRArrow],
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}

//8

-(BOOL)setGraphic2DForPGMap{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:

	/*
	 //PGMap
	 kAudUDNumPGMapAuto = 1,		//View0, Auto
	 
	 kAudUDNumPGMapSummer = 11,			//View1, Summer (Realtime Dynamic)
	 kAudUDNumPGMapActionPoint = 21,	//View2, Action Point (Text)
	 kAudUDNumPGMapDay		= 31,		//View3, Day (Realtime Dynamic)
	 kAudUDNumPGMapBack	= 61,		//View4, Back to Main
	 
	 kAudUDNumPGMapMapMain = 71,			//View5, Map Background
	 
	 kAudUDNumPGMapRegionNoneDetail = 100,			//View6, Region None Detail
	 
	 kAudUDNumPGMapRegionADetail = 101,			//View6, RegionA Detail
	 kAudUDNumPGMapRegionBDetail = 102,			//View6, RegionB Detail
	 kAudUDNumPGMapRegionCDetail = 103,			//View6, RegionC Detail
	 kAudUDNumPGMapRegionDDetail = 104,			//View6, RegionD Detail
	 kAudUDNumPGMapRegionEDetail = 105,			//View6, RegionE Detail
	 kAudUDNumPGMapRegionFDetail = 106,			//View6, RegionF Detail
	 kAudUDNumPGMapRegionGDetail = 107,			//View6, RegionG Detail
	 kAudUDNumPGMapRegionHDetail = 108,			//View6, RegionH Detail
	 kAudUDNumPGMapRegionIDetail = 109,			//View6, RegionI Detail
	 
	 kAudUDNumPGMapGoButton = 121,			//View7, Go Button
	 
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
	 
	 kAudUDNumPGMapRegionPicNone = 190,			//View18, Region Pic None
	 
	 kAudUDNumPGMapRegionPicA = 191,			//View18, Region Pic A
	 kAudUDNumPGMapRegionPicB = 192,			//View18, Region Pic B
	 kAudUDNumPGMapRegionPicC = 193,			//View18, Region Pic C
	 
	 kAudUDNumPGMapRegionPicD = 194,			//View18, Region Pic D
	 kAudUDNumPGMapRegionPicE = 195,			//View18, Region Pic E
	 kAudUDNumPGMapRegionPicF = 196,			//View18, Region Pic F
	 
	 kAudUDNumPGMapRegionPicG = 197,			//View18, Region Pic G
	 kAudUDNumPGMapRegionPicH = 198,			//View18, Region Pic H
	 kAudUDNumPGMapRegionPicI = 199,			//View18, Region Pic I
	 
	 kAudUDNumPGMapDatingIcon = 200,			//View19, Dating Icon, Heart
	 
	 kAudUDNumPGMapLvReqIconNone = 201,			//View20-22, Lv Req Icon Ok
	 kAudUDNumPGMapLvReqIconOk = 202,			//View20-22, Lv Req Icon Ok
	 kAudUDNumPGMapLvReqIconNo = 203,			//View20-22, Lv Req Icon No
	 
	 
	 kAudUDNumPGMapTopLvReqRegionA = 204,			//View23, Top Lv Req Label
	 kAudUDNumPGMapMidLvReqRegionA = 205,			//View24, Mid ...
	 kAudUDNumPGMapLowLvReqRegionA = 206,			//View25, Low ...
	 
	 kAudUDNumPGMapTopLvReqRegionB = 207,			//View23, Top Lv Req Label
	 kAudUDNumPGMapMidLvReqRegionB = 208,			//View24, Mid ...
	 kAudUDNumPGMapLowLvReqRegionB = 209,			//View25, Low ...
	 
	 kAudUDNumPGMapTopLvReqRegionC = 210,			//View23, Top Lv Req Label
	 kAudUDNumPGMapMidLvReqRegionC = 211,			//View24, Mid ...
	 kAudUDNumPGMapLowLvReqRegionC = 212,			//View25, Low ...
	 
	 kAudUDNumPGMapTopLvReqRegionD = 213,			//View23, Top Lv Req Label
	 kAudUDNumPGMapMidLvReqRegionD = 214,			//View24, Mid ...
	 kAudUDNumPGMapLowLvReqRegionD = 215,			//View25, Low ...
	 
	 kAudUDNumPGMapTopLvReqRegionE = 216,			//View23, Top Lv Req Label
	 kAudUDNumPGMapMidLvReqRegionE = 217,			//View24, Mid ...
	 kAudUDNumPGMapLowLvReqRegionE = 218,			//View25, Low ...
	 
	 kAudUDNumPGMapTopLvReqRegionF = 219,			//View23, Top Lv Req Label
	 kAudUDNumPGMapMidLvReqRegionF = 220,			//View24, Mid ...
	 kAudUDNumPGMapLowLvReqRegionF = 221,			//View25, Low ...
	 
	 kAudUDNumPGMapTopLvReqRegionG = 222,			//View23, Top Lv Req Label
	 kAudUDNumPGMapMidLvReqRegionG = 223,			//View24, Mid ...
	 kAudUDNumPGMapLowLvReqRegionG = 224,			//View25, Low ...
	 
	 kAudUDNumPGMapTopLvReqRegionH = 225,			//View23, Top Lv Req Label
	 kAudUDNumPGMapMidLvReqRegionH = 226,			//View24, Mid ...
	 kAudUDNumPGMapLowLvReqRegionH = 227,			//View25, Low ...
	 
	 kAudUDNumPGMapTopLvReqRegionI = 228,			//View23, Top Lv Req Label
	 kAudUDNumPGMapMidLvReqRegionI = 229,			//View24, Mid ...
	 kAudUDNumPGMapLowLvReqRegionI = 230,			//View25, Low ...
	 
	 */
	
	//Object1 for view1
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiSummer] ,kGlossaryKind,
	 nil],
	//Key1 (Role from User default)
	[NSString stringWithFormat:@"%d", kAudUDNumPGMapSummer],
	
	
	//Object1 for view3
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiDay] ,kGlossaryKind,
	 nil],
	//Key1
	[NSString stringWithFormat:@"%d", kAudUDNumPGMapDay],
	
	//Object1 for view4
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiActBack] ,kGlossaryKind,
	 nil],
	//Key1
	[NSString stringWithFormat:@"%d", kAudUDNumPGMapBack],
	
	//Object1 for view5
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiMap] ,kGlossaryKind,
	 nil],
	//Key1
	[NSString stringWithFormat:@"%d", kAudUDNumPGMapMapMain],
	
   //Object0 for view6
   [NSDictionary dictionaryWithObjectsAndKeys:	
	[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
	[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionA] ,kGlossaryKind,
	nil],
   //Key1
   [NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionNoneDetail],
					   
					   //Object1 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionA] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionADetail],

					   //Object2 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionB] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionBDetail],

					   //Object3 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionC] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionCDetail],

					   //Object4 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionD] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionDDetail],

					   //Object5 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionE] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionEDetail],

					   //Object6 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionF] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionFDetail],

					   //Object7 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionG] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionGDetail],

					   //Object8 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionH] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionHDetail],

					   //Object9 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionI] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionIDetail],
					   
   //Object1 for view7
   [NSDictionary dictionaryWithObjectsAndKeys:	
	[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
	[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapGo] ,kGlossaryKind,
	nil],
   //Key1
   [NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButton],
					
					   //Object2 for view7
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapGo] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonA],
					   
					   //Object3 for view7
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapGo] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonB],
					   
					   //Object4 for view7
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapGo] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonC],
					   
					   //Object5 for view7
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapGo] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonD],
					   
					   //Object6 for view7
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapGo] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonE],
					   
					   //Object7 for view7
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapGo] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonF],
					   
					   //Object8 for view7
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapGo] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonG],
					   
					   //Object9 for view7
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapGo] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonH],
					   
					   //Object10 for view7
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapGo] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapGoButtonI],
					   
					   
					   //Object11 for view7
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapGo] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonA],
					   
					   //Object12 for view7
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapGo] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonB],
					   
					   //Object13 for view7
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapGo] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonC],
					   
					   //Object14 for view7
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapGo] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonD],
					   
					   //Object15 for view7
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapGo] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonE],
					   
					   //Object16 for view7
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapGo] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonF],
					   
					   //Object17 for view7
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapGo] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonG],
					   
					   //Object18 for view7
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapGo] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonH],
					   
					   //Object19 for view7
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapGo] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapDateButtonI],
					   
	//Object1 for view9
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiRegionA] ,kGlossaryKind,
	 nil],
	//Key1
	[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionA],
	
	//Object1 for view10
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiRegionB] ,kGlossaryKind,
	 nil],
	//Key1
	[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionB],
	
	//Object1 for view11
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiRegionC] ,kGlossaryKind,
	 nil],
	//Key1
	[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionC],
	
	//Object1 for view12
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiRegionD] ,kGlossaryKind,
	 nil],
	//Key1
	[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionD],
	
	//Object1 for view13
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiRegionE] ,kGlossaryKind,
	 nil],
	//Key1
	[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionE],
	
	//Object1 for view14
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiRegionF] ,kGlossaryKind,
	 nil],
	//Key1
	[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionF],
	
	//Object1 for view15
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiRegionG] ,kGlossaryKind,
	 nil],
	//Key1
	[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionG],
	
	//Object1 for view16
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiRegionH] ,kGlossaryKind,
	 nil],
	//Key1
	[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionH],
	
	//Object1 for view17
	[NSDictionary dictionaryWithObjectsAndKeys:	
	 [NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
	 [NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	 [NSNumber numberWithUnsignedInt:kModelG2DKindUiRegionI] ,kGlossaryKind,
	 nil],
	//Key1
	[NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionI],
	
					   
					   
		
   //Object0 for view18
   [NSDictionary dictionaryWithObjectsAndKeys:	
	[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
	[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapRegionThumbA] ,kGlossaryKind,
	nil],
   //Key1
   [NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicNone],		
					   
					   //Object1 for view18
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapRegionThumbA] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicA],		
					   
					   //Object2 for view18
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapRegionThumbB] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicB],		
					   
					   //Object3 for view18
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapRegionThumbC] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicC],		
					   
					   //Object4 for view18
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapRegionThumbD] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicD],		
					   
					   //Object5 for view18
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapRegionThumbE] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicE],		
					   
					   //Object6 for view18
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapRegionThumbF] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicF],		
					   
					   //Object7 for view18
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapRegionThumbG] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicG],		
					   
					   //Object8 for view18
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapRegionThumbH] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicH],		
					   
					   //Object9 for view18
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapRegionThumbI] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapRegionPicI],		
					   
					   
   //Object1 for view19
   [NSDictionary dictionaryWithObjectsAndKeys:	
	[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
	[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapHeartIcon] ,kGlossaryKind,
	nil],
   //Key1
   [NSString stringWithFormat:@"%d", kAudUDNumPGMapDatingIcon],	
					   

   //Object1 for view20-22
   [NSDictionary dictionaryWithObjectsAndKeys:	
	[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
	[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapLvIconOk] ,kGlossaryKind,
	nil],
   //Key1
   [NSString stringWithFormat:@"%d", kAudUDNumPGMapLvReqIconNone],	
					   
					   //Object2 for view20-22
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapLvIconOk] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapLvReqIconOk],	
					   
					   //Object3 for view20-22
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapLvIconNo] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapLvReqIconNo],	
					   
					   
					   
					   
	nil];
	
	
	
	self.dictionary = d;
	[d release];
	
	return YES;
	
}
//9
-(BOOL)setGraphic2DForPGEvent{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
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
					   
					   //Object1 for view1
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiSummer] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGEventSummer],
					   
						   //Object2 for view1
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelG2DKindUiSpring] ,kGlossaryKind,
							nil],
						   //Key1 (Role from User default)
						   [NSString stringWithFormat:@"%d", kAudUDNumPGEventSpring],
						   
						   //Object3 for view1
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelG2DKindUiAutumn] ,kGlossaryKind,
							nil],
						   //Key1 (Role from User default)
						   [NSString stringWithFormat:@"%d", kAudUDNumPGEventAutumn],
						   
						   //Object4 for view1
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelG2DKindUiWinter] ,kGlossaryKind,
							nil],
						   //Key1 (Role from User default)
						   [NSString stringWithFormat:@"%d", kAudUDNumPGEventWinter],
					   
					   
					   //Object1 for view3
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiDay] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGEventDay],
					   
						   //Object2 for view3
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelG2DKindUiNight] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGEventNight],
					   
					   //Object1 for view4
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMoodGood] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGEventMoodGood],
					   
					   //Object1 for view5
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoCharacter] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindCosSchoolGirl2] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGEventCosSchoolGirl2],
					   
					   //Object1 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoOccasion] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindOccHome] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGEventOccHome],					   
					   
   //Object1 for view10
   [NSDictionary dictionaryWithObjectsAndKeys:	
	[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
	[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	[NSNumber numberWithUnsignedInt:kModelG2DKindUiBgdBlueTile] ,kGlossaryKind,
	nil],
   //Key1
   [NSString stringWithFormat:@"%d", kAudUDNumPGEventBgdBlueTile],
					   
					   //Object2 for view10
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiBgdPinkTile] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGEventBgdPinkTile],
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}
//10
-(BOOL)setGraphic2DForPGRomance{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
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
					   
					   //Object1 for view1
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiSummer] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGRomanceSummer],
					   
					   
					   //Object1 for view3
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiDay] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGRomanceDay],
					   
					   //Object1 for view4
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMoodGood] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGRomanceMoodGood],
					   
					   //Object1 for view5
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoCharacter] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindCosSchoolGirl1] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGRomanceKiss],
					   
					   //Object2 for view5
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoCharacter] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindCosSchoolGirl2] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGRomanceHug],
					   
					   //Object3 for view5
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoCharacter] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindCosSchoolGirl3] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGRomanceHold],
					   
					   //Object1 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoOccasion] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindOccHome] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGRomanceOccHome],					   
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
	
}
//11
-(BOOL)setGraphic2DForPGDetail{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   /*
						//PGDetail
						kAudUDNumPGDetailAuto = 1,		//View0, Auto
						
						kAudUDNumPGDetailBack = 11,			//View1, Back to Previous
						kAudUDNumPGDetailAtPointLabel = 12,	//View2, At Point Label
						kAudUDNumPGDetailThumb = xx,		//View3, Thumb

						kAudUDNumPGDetailHint	= 31,		//View4, Hint Label
						*/
					   
					   //Object1 for view1
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActBack] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailBack],
					   
					   //Object1 for view3
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActBack] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumb],
					   					   
					   //Object2 for view3
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapRegionThumbA] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbA],	
					   
					   //Object3 for view3
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapRegionThumbB] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbB],	
					   
					   //Object4 for view3
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapRegionThumbC] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbC],	
					   
					   //Object5 for view3
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapRegionThumbD] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbD],	
					   
					   //Object6 for view3
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapRegionThumbE] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbE],	
					   
					   //Object7 for view3
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapRegionThumbF] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbF],	
					   
					   //Object8 for view3
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapRegionThumbG] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbG],	
					   
					   //Object9 for view3
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapRegionThumbH] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbH],	
					   
					   //Object10 for view3
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMapRegionThumbI] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailThumbI],	
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
	
}
//12
-(BOOL)setGraphic2DForPGArrange{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   /*
						//PGArrange
						[NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeBack], // view 1
						
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
						
						
						*/
					   
					   //Object1 for view1
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActBack] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeBack],
					   
					   
					   //Object2 for view4 (10-11)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActOccupied] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied10To11],
					   
					   
					   
					   //Object1 for view4 (10-11)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable10To11],					   
					   
					   //Object1 for view5 (11-12)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable11To12],
					   
					   //Object1 for view6 (12-13)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable12To13],
					   
					   //Object1 for view7 (13-14)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable13To14],
					   
					   //Object1 for view8 (14-15)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable14To15],
					   
					   //Object1 for view9 (15-16)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable15To16],
					   
					   //Object1 for view10 (16-17)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable16To17],
					   
					   //Object1 for view11 (17-18)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable17To18],
					   
					   //Object1 for view12 (18-19)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable18To19],
					   
					   //Object1 for view13 (19-20)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable19To20],
					   
					   //Object1 for view14 (20-21)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable20To21],
					   
					   //Object1 for view15 (21-22)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable21To22],
					   
					   //Object1 for view16 (22-23)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable22To23],
					   
					   //Object1 for view17 (23-24)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAvailable23To24],
					   
					   //Occupied
					   
					   //Object2 for view4 (10-11)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActOccupied] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied10To11],					   
					   
					   //Object2 for view5 (11-12)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActOccupied] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied11To12],
					   
					   //Object2 for view6 (12-13)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActOccupied] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied12To13],
					   
					   //Object2 for view7 (13-14)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActOccupied] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied13To14],
					   
					   //Object2 for view8 (14-15)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActOccupied] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied14To15],
					   
					   //Object2 for view9 (15-16)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActOccupied] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied15To16],
					   
					   //Object2 for view10 (16-17)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActOccupied] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied16To17],
					   
					   //Object2 for view11 (17-18)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActOccupied] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied17To18],
					   
					   //Object2 for view12 (18-19)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActOccupied] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied18To19],
					   
					   //Object2 for view13 (19-20)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActOccupied] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied19To20],
					   
					   //Object2 for view14 (20-21)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActOccupied] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied20To21],
					   
					   //Object2 for view15 (21-22)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActOccupied] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied21To22],
					   
					   //Object2 for view16 (22-23)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActOccupied] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied22To23],
					   
					   //Object2 for view17 (23-24)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActOccupied] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeOccupied23To24],
					   
					   
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
	
}
//13
-(BOOL)setGraphic2DForPGPlace{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   /*
						//PGPlace
						kAudUDNumPGPlaceAuto = 1,		//View0, Auto
						
						kAudUDNumPGPlaceBack = 11,			//View1, Back to Previous
						kAudUDNumPGPlaceAtPointLabel = 12,	//View2, At Point Label
						kAudUDNumPGPlaceLocationTable = 21,		//View3, Location List
						kAudUDNumPGPlaceHint	= 31,		//View4, Hint Label
						*/
					   
					   //Object1 for view1
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActBack] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGPlaceBack],
					   
					   
					   //Object1 for view4
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionA] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGPlaceRegionA],
					   
					   //Object1 for view5
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionB] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGPlaceRegionB],
					   
					   //Object1 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionC] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGPlaceRegionC],
					   
					   //Object1 for view7
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionD] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGPlaceRegionD],
					   
					   //Object1 for view8
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionE] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGPlaceRegionE],
					   
					   //Object1 for view9
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionF] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGPlaceRegionF],
					   
					   //Object1 for view10
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionG] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGPlaceRegionG],
					   
					   //Object1 for view11
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionH] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGPlaceRegionH],
					   
					   //Object1 for view12
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionI] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGPlaceRegionI],
					   nil];
	self.dictionary = d;
	//NSLog(@"%@", d);

	[d release];
	
	return YES;
	
}
//14
-(BOOL)setGraphic2DForPGSchedule{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   /*
						//PGSchedule
						[NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleBack], // view 1
						
						[NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable10To11], // view 4
						[NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable11To12], // view 5 temp
						
						[NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable12To13], // view 6
						[NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable13To14], // view 7
						[NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable14To15], // view 8
						[NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable15To16], // view 9
						[NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable16To17], // view 10
						
						[NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable17To18], // view 11
						[NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable18To19], // view 12
						
						[NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable19To20], // view 13
						[NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable20To21], // view 14
						[NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable21To22], // view 15
						[NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable22To23], // view 16
						[NSString stringWithFormat:@"%d", kGraphic2D],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAvailable23To24], // view 17
						
						
						*/
					   
					   //Object1 for view1
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActBack] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleBack],
					   
					   //Object1 for view4-17
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventNone],				
					   
					   /*
					   //Object1 for view4 (10-11)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventNone],					   					   
					   
					   //Object1 for view5 (11-12)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventNone],
					   
					   //Object1 for view6 (12-13)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventNone],
					   
					   //Object1 for view7 (13-14)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventNone],
					   
					   //Object1 for view8 (14-15)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventNone],
					   
					   //Object1 for view9 (15-16)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventNone],
					   
					   //Object1 for view10 (16-17)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventNone],
					   
					   //Object1 for view11 (17-18)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventNone],
					   
					   //Object1 for view12 (18-19)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventNone],
					   
					   //Object1 for view13 (19-20)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventNone],
					   
					   //Object1 for view14 (20-21)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventNone],
					   
					   //Object1 for view15 (21-22)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventNone],
					   
					   //Object1 for view16 (22-23)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventNone],
					   
					   //Object1 for view17 (23-24)
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventNone],
					   */
					   //Regions A-I
					   
					   //Object2 for view4-17
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionA] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventRegionA],
					   
					   //Object3 for view4-17
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionB] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventRegionB],

					   //Object4 for view4-17
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionC] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventRegionC],

					   //Object5 for view4-17
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionD] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventRegionD],

					   //Object6 for view4-17
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionE] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventRegionE],

					   //Object7 for view4-17
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionF] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventRegionF],

					   //Object8 for view4-17
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionG] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventRegionG],

					   //Object9 for view4-17
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionH] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventRegionH],
					   
					   //Object10 for view4-17
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiScheRegionI] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleEventRegionI],
					   
					   
					   
					   
					   nil];
	self.dictionary = d;
	//NSLog(@"%@", d);
	[d release];
	
	return YES;
	
}
//15
-(BOOL)setGraphic2DForPGTalk{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
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
					   
					   //Object1 for view1
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiSummer] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGTalkSummer],
					   
					   
					   //Object1 for view3
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiDay] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGTalkDay],
					   
					   //Object1 for view4
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiMoodGood] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGTalkMoodGood],
					   
					   //Object1 for view5
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoCharacter] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindCosSchoolGirl2] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGTalkCosSchoolGirl2],
					   
					   
					   //Object1 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoOccasion] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindOccHome] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGTalkOccHome],
					   
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;

}
//16
-(BOOL)setGraphic2DForPGSMS{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   /*
						//PGSMS
						kAudUDNumPGSMSAuto = 1,		//View0, Auto
						
						kAudUDNumPGSMSBack = 11,			//View1, Back to Previous
						kAudUDNumPGSMSAtPointLabel = 12,	//View2, At Point Label
						kAudUDNumPGSMSTextView = 21,		//View3, TextView
						
						kAudUDNumPGSMSHint	= 31,		//View4, Hint Label						*/
					   
					   //Object1 for view1
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActBack] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGSMSBack],
					   
					   //Object1 for view5
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActSms] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGSMSSend],
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}

//31
-(BOOL)setGraphic2DForPGMConfirm{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   /*
						kAudUDNumPGConfirmNil = 0,
						
						//PGConfirm
						kAudUDNumPGConfirmAuto = 1,		//View0, Auto
						
						kAudUDNumPGConfirmAtPointLabel = 11,	//View1, At Point Label
						kAudUDNumPGConfirmTextView = 12,			//View2, Text View
						
						kAudUDNumPGConfirmLeftButton = 21,		//View3, Left Button
						kAudUDNumPGConfirmRightButton = 22,		//View4, Right Button
						
						
						kAudUDNumPGConfirmHint	= 31,		//View5, Hint Label
						*/
					   
					   //Object1 for view3
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActOccupied] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmLeftButton],
					   
					   //Object1 for view4
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmRightButton],
					   
   //Object1 for view7
   [NSDictionary dictionaryWithObjectsAndKeys:	
	[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
	[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	[NSNumber numberWithUnsignedInt:kModelG2DKindUiBgdBlueTile] ,kGlossaryKind,
	nil],
   //Key1
   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmBgdBlueTile],
					   
					   //Object2 for view7
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiBgdPinkTile] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmBgdPinkTile],
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}

//32
-(BOOL)setGraphic2DForPGMAlert{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   /*
						kAudUDNumPGAlertNil = 0,
						
						//PGAlert
						kAudUDNumPGAlertAuto = 1,		//View0, Auto
						
						kAudUDNumPGAlertAtPointLabel = 11,	//View1, At Point Label
						kAudUDNumPGAlertTextView = 12,			//View2, Text View
						
						kAudUDNumPGAlertMidButton = 21,		//View3, Left Button
						
						
						kAudUDNumPGAlertHint	= 31,		//View4, Hint Label
						*/
					   
					   //Object1 for view3
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActAvailable] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMAlertMidButton],
					   
   //Object1 for view7
   [NSDictionary dictionaryWithObjectsAndKeys:	
	[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
	[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
	[NSNumber numberWithUnsignedInt:kModelG2DKindUiBgdBlueTile] ,kGlossaryKind,
	nil],
   //Key1
   [NSString stringWithFormat:@"%d", kAudUDNumPGMAlertBgdBlueTile],
					   
					   //Object2 for view7
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiBgdPinkTile] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMAlertBgdPinkTile],
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}

//33
-(BOOL)setGraphic2DForPGMSelection{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   /*
						kAudUDNumPGSelectionNil = 0,
						
						//PGSelection
						kAudUDNumPGSelectionAuto = 1,		//View0, Auto
						
						kAudUDNumPGSelectionAtPointLabel = 11,	//View1, At Point Label
						kAudUDNumPGSelectionTextView = 12,			//View2, Text View
						
						kAudUDNumPGSelectionChoice1Button = 21,		//View3, Choice 1 Button
						kAudUDNumPGSelectionChoice2Button = 22,		//View4, Choice 2 Button
						kAudUDNumPGSelectionChoice3Button = 23,		//View5, Choice 3 Button
						
						
						kAudUDNumPGSelectionHint	= 31,		//View6, Hint Label
						*/
					   
					   //Object1 for view3
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActBack] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionChoice1Button],
					   
					   //Object1 for view4
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActBack] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionChoice2Button],
					   
					   //Object1 for view5
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelG2DInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelG2DKindUiActBack] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionChoice3Button],
					   
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}



@end
