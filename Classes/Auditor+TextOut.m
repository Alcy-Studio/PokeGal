//
//  Auditor+TextOut.m
//  frdfrd
//
//  Created by westbugs on 10-10-28.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "Auditor+TextOut.h"

//Constants
#import "ConstantsGlossaryDatabase.h"
#import "ConstantsAuditorUserDefaults.h"

#import "ConstantsSceneCode.h"
#import "ConstantsModelGeneral.h"
#import "ConstantsModelGenSize.h"

//TextOut
#import "ConstantsModelTextOut.h"
#import "ConstantsModelTextOutKindGift.h"
#import "ConstantsModelTextOutKindMini.h"
#import "ConstantsModelTextOutKindTheme.h"


@implementation Auditor(TextOut)

-(BOOL)setTextOutWithScene:(unsigned int)s{
	switch (s) {
		case kSceneCodePGMain:
			[self setTextOutForPGMain];
			break;
		case kSceneCodePGAchi:
			[self setTextOutForPGAchi];
			break;
		case kSceneCodePGAttr:
			[self setTextOutForPGAttr];
			break;
			
		case kSceneCodePGTitle:
			[self setTextOutForPGTitle];
			break;
		case kSceneCodePGDate:
			[self setTextOutForPGDate];
			break;
		case kSceneCodePGWalk:
			[self setTextOutForPGWalk];
			break;
		case kSceneCodePGMap:
			[self setTextOutForPGMap];
			break;
		case kSceneCodePGEvent:
			[self setTextOutForPGEvent];
			break;
		case kSceneCodePGRomance:
			[self setTextOutForPGRomance];
			break;
		case kSceneCodePGDetail:
			[self setTextOutForPGDetail];
			break;
		case kSceneCodePGArrange:
			[self setTextOutForPGArrange];
			break;
		case kSceneCodePGPlace:
			[self setTextOutForPGPlace];
			break;
		case kSceneCodePGSchedule:
			[self setTextOutForPGSchedule];
			break;
		case kSceneCodePGTalk:
			[self setTextOutForPGTalk];
			break;
		case kSceneCodePGSMS:
			[self setTextOutForPGSMS];
			break;
		case kSceneCodePGMConfirm:
			[self setTextOutForPGMConfirm];
			break;
		case kSceneCodePGMAlert:
			[self setTextOutForPGMAlert];
			break;
		case kSceneCodePGMSelection:
			[self setTextOutForPGMSelection];
			break;
		default:
			break;
	}
	if (!self.dictionary) {
		return NO;
	}
	return YES;}

-(BOOL)setTextOutForPGMain{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   /*
						PGMain
						
						//View0, Auto
						
						//View1, Summer (Realtime Dynamic)
						kAudUDNumPGMainActionPoint = 21,	//View2, Action Point (Text)
						kAudUDNumPGMainDay		= 31,		//View3, Day (Realtime Dynamic)
						//View4, Mood: Good, Ok, Bad
						//View5, Girl Posture
						
						//View6, Background
						//View7, Left Arrow
						
						//View8, LAction
						//View9, MAction
						//View10, RAction
						
						//View11, Right Arrow
						kAudUDNumPGMainHint = 171,			//View12, Hint (Text)						
						*/
					   
					   /*
					   //Object1 for view2
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindActPointTitle] ,kGlossaryKind,
						nil],
					   //Key1 (Role from User default)
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMainActionPoint],
					   */
					   
					   //Object1 for view12
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMainHint],
					   
					   /*
						//PGAchi
						
						//View1, Avatar
						
						kAudUDNumPGAchiGiftAmount = 31,		//View2, Gift Amount (Text)
						//View3, Top Left Arrow
						kAudUDNumPGAchiAlias1 = 51,			//View4, Alias (Text)
						//View5, Top Right Arrow
						
						//View6, ULIcon
						//View7, UMIcon
						//View8, URIcon
						//View9, MLIcon
						//View10, MMIcon
						
						//View11, MRIcon
						//View12, BLIcon
						//View13, BMIcon
						//View14, BRIcon
						//View15, BLArrow

						kAudUDNumPGAchiPage = 211,			//View16, Page number (Text)
						//View17, BRArrow
						kAudUDNumPGAchiMessage = 231,		//View18, Message (Text)
						kAudUDNumPGAchiHint = 241,			//View19, Hint (Text)
						*/
					   
					   					   nil];
	self.dictionary = d;
	[d release];
	return YES;
}

-(BOOL)setTextOutForPGAchi{
	
	/*
	 //PGAchi
	 
	 //View1, Avatar
	 
	 kAudUDNumPGAchiGiftAmount = 31,		//View2, Gift Amount (Text)
	 //View3, Top Left Arrow
	 kAudUDNumPGAchiAlias1 = 51,			//View4, Alias (Text)
	 //View5, Top Right Arrow
	 
	 //View6, ULIcon
	 //View7, UMIcon
	 //View8, URIcon
	 //View9, MLIcon
	 //View10, MMIcon
	 
	 //View11, MRIcon
	 //View12, BLIcon
	 //View13, BMIcon
	 //View14, BRIcon
	 //View15, BLArrow
	 
	 kAudUDNumPGAchiPage = 211,			//View16, Page number (Text)
	 //View17, BRArrow
	 kAudUDNumPGAchiMessage = 231,		//View18, Message (Text)
	 kAudUDNumPGAchiHint = 241,			//View19, Hint (Text)
	 
	 */
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   

					   //Object1 for view14
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoCharacter] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindAlias1] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias1],
					   
						   //Object2 for view14
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoCharacter] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindAlias2] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias2],
						   
						   //Object3 for view14
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoCharacter] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindAlias3] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias3],
						   
						   //Object4 for view14
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoCharacter] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindAlias4] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias4],
						   
						   //Object5 for view14
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoCharacter] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindAlias5] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias5],
						   
						   //Object6 for view14
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoCharacter] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindAlias6] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias6],
						   
						   //Object7 for view14
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoCharacter] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindAlias7] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias7],
						   
						   //Object8 for view14
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoCharacter] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindAlias8] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias8],
						   
						   //Object9 for view14
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoCharacter] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindAlias9] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGAchiAlias9],
					   
					   //Object1 for view18
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoGift] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindGiftDesc] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAchiMessage],
					   
					   //Object1 for view19
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAchi] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoGift] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindGiftReq] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAchiHint],
					   
					   
					   
					   					   nil];
	self.dictionary = d;
	[d release];
	return YES;
}

-(BOOL)setTextOutForPGAttr{
	
	/*PGAttr
	 
	 //View1, Avatar
	 kAudUDNumPGAttrWeekday = 31,		//View2, Weekday Sun (Text)
	 kAudUDNumPGAttrTime = 41,			//View3, Time (Text)
	 //View4, Top Left Arrow
	 //View5, Detail Button
	 
	 //View6, Top Right Arrow
	 
	 kAudUDNumPGAttrSportAttrValue = 81,	//View7, UAttr Value (Text)
	 //View8, UAttr Progress Bar
	 kAudUDNumPGAttrMovieAttrValue = 101,	//View9, MAttr Value (Text)
	 //View10, MAttr Progress Bar
	 
	 kAudUDNumPGAttrMusicAttrValue = 121,//View11, BAttr Value (Text)
	 //View12, BAttr Progress Bar
	 //View13, Bottom Left Arrow
	 kAudUDNumPGAttrPage	= 151,			//View14, Page Number (Text)
	 //View15, Bottom Right Arrow
	 kAudUDNumPGAttrMessage = 171,		//View16, Message (Text)
	 kAudUDNumPGAttrHint	= 181,			//View17, Hint (Text)
	 
	 kAudUDNumPGAttrSportAttrTitle = 191,	//View18, UAttr Title
	 kAudUDNumPGAttrMovieAttrTitle	= 201,	//View19, MAttr Title
	 kAudUDNumPGAttrMusicAttrTitle = 211,//View20, BAttr Title
	 */
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   
					   
					   //Object1 for view12
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAttr] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindAttrNote] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAttrHint],
					   
					   //Object1 for view16
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAttr] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindAttrDesc] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAttrMessage],
					   
					   //Object1 for view18
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAttr] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoCharacter] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindAttrTitle1] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAttrSportAttrTitle],

					   //Object1 for view19
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAttr] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoCharacter] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindAttrTitle2] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAttrMovieAttrTitle],

					   //Object1 for view20
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAttr] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoCharacter] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindAttrTitle3] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAttrMusicAttrTitle],
					   
					
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	return YES;
}
//4
-(BOOL)setTextOutForPGTitle{return YES;}
//7
-(BOOL)setTextOutForPGDate{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   /*
						PGDate
						
						//View0, Auto
						
						//View1, Summer (Realtime Dynamic)
						kAudUDNumPGDateActionPoint = 21,	//View2, Action Point (Text)
						kAudUDNumPGDateDay		= 31,		//View3, Day (Realtime Dynamic)
						//View4, Mood: Good, Ok, Bad
						//View5, Girl Posture
						
						//View6, Background
						//View7, Left Arrow
						
						//View8, LAction
						//View9, MAction
						//View10, RAction
						
						//View11, Right Arrow
						kAudUDNumPGDateHint = 171,			//View12, Hint (Text)						
						*/
					   
					   /*
						//Object1 for view2
						[NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGDate] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindActPointTitle] ,kGlossaryKind,
						nil],
						//Key1 (Role from User default)
						[NSString stringWithFormat:@"%d", kAudUDNumPGDateActionPoint],
						*/
					   
					   //Object0 for view12
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDateHint],
					   
						   //Object1 for view12
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionA],
						   
						   //Object2 for view12
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionB],
						   
						   //Object3 for view12
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionC],
						   
						   //Object4 for view12
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionD],
						   
						   //Object5 for view12
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionE],
						   
						   //Object6 for view12
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionF],
						   
						   //Object7 for view12
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionG],
						   
						   //Object8 for view12
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionH],
						   
						   //Object9 for view12
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionI],
					   
					  
					   
					   nil];
	self.dictionary = d;
	[d release];
	return YES;
}

//17
-(BOOL)setTextOutForPGWalk{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   /*
						PGWalk
						
						//View0, Auto
						
						//View1, Summer (Realtime Dynamic)
						kAudUDNumPGWalkActionPoint = 21,	//View2, Action Point (Text)
						kAudUDNumPGWalkDay		= 31,		//View3, Day (Realtime Dynamic)
						//View4, Mood: Good, Ok, Bad
						//View5, Girl Posture
						
						//View6, Background
						//View7, Left Arrow
						
						//View8, LAction
						//View9, MAction
						//View10, RAction
						
						//View11, Right Arrow
						kAudUDNumPGWalkHint = 171,			//View12, Hint (Text)						
						*/
					   
					   /*
						//Object1 for view2
						[NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGWalk] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindActPointTitle] ,kGlossaryKind,
						nil],
						//Key1 (Role from User default)
						[NSString stringWithFormat:@"%d", kAudUDNumPGWalkActionPoint],
						*/
					   
					   //Object0 for view12
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkHint],
					   
						   //Object1 for view12
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionA],
						   
						   //Object2 for view12
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionB],
						   
						   //Object3 for view12
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionC],
						   
						   //Object4 for view12
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionD],
						   
						   //Object5 for view12
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionE],
						   
						   //Object6 for view12
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionF],
						   
						   //Object7 for view12
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionG],
						   
						   //Object8 for view12
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionH],
						   
						   //Object9 for view12
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionI],
					   
					   

					   
					   
					   
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	return YES;
}

//8
-(BOOL)setTextOutForPGMap{
	//[NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapMsgLabel], // view 7
	//[NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMapHint], // view 8
	
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   /*
						//PGMap
						*/
					   
			
					   
					   //Object1 for view8
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMap] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindMapHint] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapHint],
					   
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	return YES;
}
//9
-(BOOL)setTextOutForPGEvent{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   /*
						//PGEvent
						[NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventMsgLabel], // view 8
						[NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGEventHint], // view 9

						*/
					   
										
					   //Object1 for view8
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGEventMsgLabel],
					   
					   //Object1 for view9
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGEventHint],
					   
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	return YES;
	
}
//10
-(BOOL)setTextOutForPGRomance{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   /*
						//PGRomance
						[NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceMsgLabel], // view 8
						[NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGRomanceHint], // view 9
						
						*/
					   
					   
					   //Object1 for view8
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGRomanceMsgLabel],
					   
					   //Object1 for view9
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGRomanceHint],
					   
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	return YES;
}
//11
-(BOOL)setTextOutForPGDetail{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   /*
						//PGDetail
						[NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailHint],
						
						[NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionATitle], // view 5
						[NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionAEffect1], // view 6
						[NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionAEffect2], // view 7
						[NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionAEffect3], // view 8
						[NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionADescription], // view 9
						
						*/
					   
					   
					   //Object1 for view4
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailHint],
					   
					   //Object1 for view5
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindRegionA] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionATitle],
					   
						   //Object2 for view5
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindRegionB] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionBTitle],

						   //Object3 for view5
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindRegionC] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionCTitle],

						   //Object4 for view5
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindRegionD] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionDTitle],

						   //Object5 for view5
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindRegionE] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionETitle],

						   //Object6 for view5
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindRegionF] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionFTitle],

						   //Object7 for view5
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindRegionG] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionGTitle],

						   //Object8 for view5
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindRegionH] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionHTitle],

						   //Object9 for view5
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindRegionI] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionITitle],
						   

					   //Object1 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus1] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionAEffect1],
					   
						   //Object2 for view6
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus1] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionBEffect1],

						   
						   //Object3 for view6
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus1] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionCEffect1],

						   
						   //Object4 for view6
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus0] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionDEffect1],

						   
						   //Object5 for view6
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus0] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionEEffect1],

						   
						   //Object6 for view6
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus0] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionFEffect1],

						   
						   //Object7 for view6
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus1] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionGEffect1],

						   //Object8 for view6
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus1] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionHEffect1],

						   //Object9 for view6
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus1] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionIEffect1],
					   

					   //Object1 for view7
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus1] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionAEffect2],
					   
						   //Object2 for view7
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus1] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionBEffect2],
						   
						   //Object3 for view7
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus0] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionCEffect2],
						   
						   //Object4 for view7
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus1] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionDEffect2],
						   
						   //Object5 for view7
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus1] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionEEffect2],
						   
						   //Object6 for view7
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus1] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionFEffect2],
						   
						   //Object7 for view7
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus0] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionGEffect2],
						   
						   //Object8 for view7
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus1] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionHEffect2],
						   
						   //Object9 for view7
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus1] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionIEffect2],

					   //Object1 for view8
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus0] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionAEffect3],
					   
						   //Object2 for view8
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus0] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionBEffect3],
						   
						   //Object3 for view8
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus1] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionCEffect3],
						   
						   //Object4 for view8
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus1] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionDEffect3],
						   
						   //Object5 for view8
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus1] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionEEffect3],
						   
						   //Object6 for view8
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus1] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionFEffect3],
						   
						   //Object7 for view8
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus1] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionGEffect3],
						   
						   //Object8 for view8
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus0] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionHEffect3],
						   
						   //Object9 for view8
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAll] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoUi] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindPlus0] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionIEffect3],

					   //Object1 for view9
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGDetail] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindRegionDescA] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionADescription],
					   
						   //Object2 for view9
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGDetail] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindRegionDescB] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionBDescription],
						   
						   //Object3 for view9
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGDetail] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindRegionDescC] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionCDescription],
						   
						   //Object4 for view9
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGDetail] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindRegionDescD] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionDDescription],
						   
						   //Object5 for view9
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGDetail] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindRegionDescE] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionEDescription],
						   
						   //Object6 for view9
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGDetail] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindRegionDescF] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionFDescription],
						   
						   //Object7 for view9
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGDetail] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindRegionDescG] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionGDescription],
						   
						   //Object8 for view9
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGDetail] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindRegionDescH] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionHDescription],
						   
						   //Object9 for view9
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGDetail] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindRegionDescI] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailRegionIDescription],
					   
					   

					   
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	return YES;
}
//12
-(BOOL)setTextOutForPGArrange{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   /*
						//PGArrange
						[NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGArrangeHint], // view 3
						
						*/
					   
					   
					   //Object1 for view4
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGArrange] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindArrangeHint] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeHint],
					   
					   
					   
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	return YES;
}
//13
-(BOOL)setTextOutForPGPlace{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   /*
						//PGPlace
						[NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGPlaceHint],
						
						*/
					   
					   
					   //Object1 for view4
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGPlace] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindPlaceHint] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGPlaceHint],
					   
					   
					   
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	return YES;
}
//14
-(BOOL)setTextOutForPGSchedule{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   /*
						//PGSchedule
						[NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGScheduleHint], // view 3
						
						*/
					   
					   
					   //Object1 for view4
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSchedule] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindScheduleHint] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleHint],
					   
					   
					   
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	return YES;
}

//15
-(BOOL)setTextOutForPGTalk{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   /*
						//PGTalk
						[NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGTalkMsgLabel], //view 8
						
						[NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGTalkHint], // view 9
						
						
						*/
					   
					   
					   //Object1 for view8
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGTalkMsgLabel],
					   
					   //Object1 for view9
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMain] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoOccasion] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindOccHome] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGTalkHint],
					   
					   
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	return YES;
}
//16
-(BOOL)setTextOutForPGSMS{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   /*
						//PGSMS
						[NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGSMSTextView],
						[NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGSMSHint],
						
						
						*/
					   
					   
					   //Object1 for view8
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGAttr] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoConversation] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindAlcyPositive1] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGSMSTextView],
					   
					   //Object1 for view9
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGSMS] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindSmsHint] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGSMSHint],
					   
					   
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	return YES;
}

//31
-(BOOL)setTextOutForPGMConfirm{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   /*
						//PGMConfirm
						[NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView1],
						[NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmHint],
						
						
						*/
					   
					   
					   //Object1 for view2
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmModalMsg1] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView1],
					   
						   //Object2 for view2
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmModalMsg2] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView2],
						   
						   //Object3 for view2
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmModalMsg3] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView3],
					   
						   //Object4 for view2
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmModalMsg4] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView4],
					   
						   //Object5 for view2
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmModalMsg5] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView5],
					   
						   //Object6 for view2
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmModalMsg6] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView6],
						   
						   //Object7 for view2
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmModalMsg7] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView7],
						   
						   //Object8 for view2
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmModalMsg8] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView8],
						   
						   //Object9 for view2
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmModalMsg9] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView9],
						   
						   //Object10 for view2
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmModalMsg10] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView10],
					   
						   //Object11 for view2
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmModalMsg11] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView11],
						   
						   //Object12 for view2
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmModalMsg12] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView12],
					   
						   //Object13 for view
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmModalMsg13] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTextView13],
					   
					   
					   //Object1 for view5
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmHint] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmHint],
					   
					   //Object1 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmModalTitle1] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle1],
					   
						   //Object2 for view6
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmModalTitle2] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle2],

						   
						   //Object3 for view6
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmModalTitle3] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle3],
					   
					   //Object4 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmModalTitle4] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle4],
					   
					   //Object5 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmModalTitle5] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle5],
					   
					   //Object6 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmModalTitle6] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle6],
					   
					   //Object7 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmModalTitle7] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle7],
					   
					   //Object8 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmModalTitle8] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle8],
					   
					   //Object9 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmModalTitle9] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle9],
					   
					   //Object10 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmModalTitle10] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle10],
					   
					   //Object11 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmModalTitle11] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle11],
					   
					   //Object12 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmModalTitle12] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle12],
					   
					   //Object13 for view
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMConfirm] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindConfirmModalTitle13] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmTitle13],
					   
					   
					   
					   
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	return YES;
}


//32
-(BOOL)setTextOutForPGMAlert{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   /*
						//PGMAlert
						[NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTextView1],
						[NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMAlertHint],
						
						
						*/
					   
					   
					   //Object1 for view2
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMAlert] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindAlertModalMsg1] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTextView1],
					   
						   //Object2 for view2
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMAlert] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindAlertModalMsg2] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTextView2],
						   
						   //Object3 for view2
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMAlert] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindAlertModalMsg3] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTextView3],
						   
						   //Object4 for view2
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMAlert] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindAlertModalMsg4] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTextView4],
					   
					   //Object1 for view4
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMAlert] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindAlertHint] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMAlertHint],
					   
					   //Object1 for view5
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMAlert] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindAlertModalTitle1] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTitle1],
					   
						   //Object2 for view5
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMAlert] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindAlertModalTitle2] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTitle2],

						   //Object3 for view5
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMAlert] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindAlertModalTitle3] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTitle3],

						   //Object4 for view5
						   [NSDictionary dictionaryWithObjectsAndKeys:	
							[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMAlert] ,kGlossaryScene,
							[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
							[NSNumber numberWithUnsignedInt:kModelTextOutKindAlertModalTitle4] ,kGlossaryKind,
							nil],
						   //Key1
						   [NSString stringWithFormat:@"%d", kAudUDNumPGMAlertTitle4],
					   
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	return YES;
}


//33
-(BOOL)setTextOutForPGMSelection{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   /*
						//PGMSelection
						[NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionTextView1],
						[NSString stringWithFormat:@"%d", kTextOut],		[NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionHint],
						
						
						*/
					   
					   
					   //Object1 for view2
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMSelection] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindSelectionModalMsg1] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionTextView1],
					   
					   //Object1 for view6
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMSelection] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindSelectionHint] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionHint],
					   
					   //Object1 for view7
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMSelection] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindSelectionModalTitle1] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionTitle1],
					   
					   //Object1 for view8
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMSelection] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindSelectionModalChoice1] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionChoice1Label],
					   
					   //Object1 for view9
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMSelection] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindSelectionModalChoice2] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionChoice2Label],
					   
					   //Object1 for view10
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						[NSNumber numberWithUnsignedInt:kModelGeneralScenePGMSelection] ,kGlossaryScene,
						[NSNumber numberWithUnsignedInt:kModelTextOutInfoHint] ,kGlossaryInfo,
						[NSNumber numberWithUnsignedInt:kModelTextOutKindSelectionModalChoice3] ,kGlossaryKind,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionChoice3Label],
					   
					   
					   
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	return YES;
}



@end
