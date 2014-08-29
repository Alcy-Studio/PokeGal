//
//  ConstantsModelTextOutKindTheme.h
//  PocketDraftCoreDataOSX
//
//  Created by westbugs on 10-09-08.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsModelTextOutKindTheme : NSObject

typedef enum{
	kModelTextOutKindThemeNil = 0,
	//Theme
	//Ui
	
	kModelTextOutKindWeekday1 = 1,
	kModelTextOutKindWeekday2 = 2,
	kModelTextOutKindWeekday3 = 3,
	kModelTextOutKindWeekday4 = 4,
	kModelTextOutKindWeekday5 = 5,
	kModelTextOutKindWeekday6 = 6,
	kModelTextOutKindWeekday7 = 7,
	
	
	kModelTextOutKindTopTitle = 8,
	
	kModelTextOutKindActPointTitle = 9,
	
	kModelTextOutKindPlus0 = 10,

	kModelTextOutKindPlus1 = 11,
	kModelTextOutKindPlus2 = 12,
	kModelTextOutKindPlus3 = 13,

	//Conversation
	//Alcy
	kModelTextOutKindAlcyPositive1 = 31,
	kModelTextOutKindAlcyNormal1 = 32,
	kModelTextOutKindAlcyNegative1 = 33,
	
	kModelTextOutKindAlcyQ1 = 51,
	kModelTextOutKindAlcyR1 = 52,
	//Employer
	kModelTextOutKindEmployerPositive1 = 71,
	kModelTextOutKindEmployerNormal1 = 72,
	kModelTextOutKindEmployerNegative1 = 73,
	//Teacher
	kModelTextOutKindTeacherPositive1 = 91,
	kModelTextOutKindTeacherNormal1 = 92,
	kModelTextOutKindTeacherNegative1 = 93,
	//Classmate
	//Boy
	kModelTextOutKindBoyPositive1 = 111,
	kModelTextOutKindBoyNormal1 = 112,
	kModelTextOutKindBoyNegative1 = 113,
	//Girl
	kModelTextOutKindGirlPositive1 = 131,
	kModelTextOutKindGirlNormal1 = 132,
	kModelTextOutKindGirlNegative1 = 133,
	
	//Cinema Reception
	kModelTextOutKindCinemaRecQ1 = 151,
	kModelTextOutKindCinemaRecR1 = 152,
	
	//Gym Reception
	kModelTextOutKindGymRecQ1 = 171,
	kModelTextOutKindGymRecR1 = 172,
	
	//Concert Hall Reception
	kModelTextOutKindConcertHallRecQ1 = 191,
	kModelTextOutKindConcertHallRecR1 = 192,
	
	//Character
		//Alias
	kModelTextOutKindAlias1 = 211,
	kModelTextOutKindAlias2 = 212,
	kModelTextOutKindAlias3 = 213,
	kModelTextOutKindAlias4 = 214,
	kModelTextOutKindAlias5 = 215,
	kModelTextOutKindAlias6 = 216,
	kModelTextOutKindAlias7 = 217,
	kModelTextOutKindAlias8 = 218,
	kModelTextOutKindAlias9 = 219,
		//Attr Title
	kModelTextOutKindAttrTitle1 = 231,
	kModelTextOutKindAttrTitle2 = 232,
	kModelTextOutKindAttrTitle3 = 233,
	
	
	
		//Personality
	kModelTextOutKindPersonalityAlcy = 234,
	
	//Npc
		//Personality
	kModelTextOutKindPersonalityNpc1 = 251,
	kModelTextOutKindPersonalityNpc2 = 252,
	kModelTextOutKindPersonalityNpc3 = 253,
	kModelTextOutKindPersonalityNpc4 = 254,
	kModelTextOutKindPersonalityNpc5 = 255,
	kModelTextOutKindPersonalityNpc6 = 256,
	
	
	//Occasion
	kModelTextOutKindOccHome = 271,
	kModelTextOutKindOccPark = 272,
	kModelTextOutKindOccZoo = 273,
	kModelTextOutKindOccCinema = 274,
	kModelTextOutKindOccTheatre = 275,
	kModelTextOutKindOccLibrary = 276,
	kModelTextOutKindOccSchool = 277,
	kModelTextOutKindOccSwimmingPool = 278,
	kModelTextOutKindOccShoppingMall = 279,
	kModelTextOutKindOccGym = 280,
	kModelTextOutKindOccConcertHall = 281,
	
	//Transition
	kModelTextOutKindToMiniMovie = 291,
	kModelTextOutKindToMiniKarate = 292,
	kModelTextOutKindToMiniMusic = 293,
	
	//Effect
	//Main Character Status
	kModelTextOutKindAngry = 311,
	kModelTextOutKindSad = 312,
	kModelTextOutKindShock = 313,
	//Hint
	//Attribute Hint
	kModelTextOutKindSport = 331,
	kModelTextOutKindMovie = 332,
	kModelTextOutKindMusic = 333,
	
	kModelTextOutKindAttrNote = 351,
	kModelTextOutKindAttrDesc = 352,
	
	kModelTextOutKindSmsHint = 361,
	
	kModelTextOutKindScheduleHint = 362,
	kModelTextOutKindArrangeHint = 363,
	kModelTextOutKindPlaceHint = 364,
	kModelTextOutKindMapHint = 365,
	kModelTextOutKindDetailHint = 366,

	kModelTextOutKindTutorHint = 367,
	kModelTextOutKindTutorHintMenu = 368,
	
	kModelTextOutKindTutorHintMain = 621,
	kModelTextOutKindTutorHintAchi = 622,
	kModelTextOutKindTutorHintAttr = 623,
	kModelTextOutKindTutorHintDate = 624,
	kModelTextOutKindTutorHintWalk = 625,
	kModelTextOutKindTutorHintEvent = 626,
	kModelTextOutKindTutorHintMap = 627,
	kModelTextOutKindTutorHintArrange = 628,
	kModelTextOutKindTutorHintPlace = 629,
	kModelTextOutKindTutorHintSchedule = 630,
	kModelTextOutKindTutorHintDetail = 631,
	kModelTextOutKindTutorHintSms = 632,
	
	kModelTextOutKindConfirmModalTitle1 = 371, 
	kModelTextOutKindConfirmModalMsg1 = 372,
	
	kModelTextOutKindConfirmModalTitle2 = 373, 
	kModelTextOutKindConfirmModalMsg2 = 374,
	
	kModelTextOutKindConfirmModalTitle3 = 375, 
	kModelTextOutKindConfirmModalMsg3 = 376,
	
	kModelTextOutKindConfirmModalTitle4 = 601, 
	kModelTextOutKindConfirmModalMsg4 = 602,
	
	kModelTextOutKindConfirmModalTitle5 = 603, 
	kModelTextOutKindConfirmModalMsg5 = 604,
	
	kModelTextOutKindConfirmModalTitle6 = 605, 
	kModelTextOutKindConfirmModalMsg6 = 606,
	
	kModelTextOutKindConfirmModalTitle7 = 607, 
	kModelTextOutKindConfirmModalMsg7 = 608,
	
	kModelTextOutKindConfirmModalTitle8 = 609, 
	kModelTextOutKindConfirmModalMsg8 = 610,
	
	kModelTextOutKindConfirmModalTitle9 = 611, 
	kModelTextOutKindConfirmModalMsg9 = 612,
	
	kModelTextOutKindConfirmModalTitle10 = 613, 
	kModelTextOutKindConfirmModalMsg10 = 614,
	
	kModelTextOutKindConfirmModalTitle11 = 615, 
	kModelTextOutKindConfirmModalMsg11 = 616,
	
	kModelTextOutKindConfirmModalTitle12 = 617, 
	kModelTextOutKindConfirmModalMsg12 = 618,
	
	kModelTextOutKindConfirmModalTitle13 = 619, 
	kModelTextOutKindConfirmModalMsg13 = 620,

	
	
	kModelTextOutKindAlertModalTitle1 = 381, 
	kModelTextOutKindAlertModalMsg1 = 382,

	kModelTextOutKindAlertModalTitle2 = 383, 
	kModelTextOutKindAlertModalMsg2 = 384,
	kModelTextOutKindAlertModalTitle3 = 385, 
	kModelTextOutKindAlertModalMsg3 = 386,
	kModelTextOutKindAlertModalTitle4 = 387, 
	kModelTextOutKindAlertModalMsg4 = 388,
	
	kModelTextOutKindSelectionModalTitle1 = 391, 
	kModelTextOutKindSelectionModalMsg1 = 392,
	kModelTextOutKindSelectionModalChoice1 = 393,
	kModelTextOutKindSelectionModalChoice2 = 394,
	kModelTextOutKindSelectionModalChoice3 = 395,

	kModelTextOutKindConfirmHint = 401,
	kModelTextOutKindAlertHint = 402,
	kModelTextOutKindSelectionHint = 403,

	kModelTextOutKindRegionA = 501,
	kModelTextOutKindRegionB = 502,
	kModelTextOutKindRegionC = 503,
	kModelTextOutKindRegionD = 504,
	kModelTextOutKindRegionE = 505,
	kModelTextOutKindRegionF = 506,
	kModelTextOutKindRegionG = 507,
	kModelTextOutKindRegionH = 508,
	kModelTextOutKindRegionI = 509,

	kModelTextOutKindRegionDescA = 510,
	kModelTextOutKindRegionDescB = 511,
	kModelTextOutKindRegionDescC = 512,
	kModelTextOutKindRegionDescD = 513,
	kModelTextOutKindRegionDescE = 514,
	kModelTextOutKindRegionDescF = 515,
	kModelTextOutKindRegionDescG = 516,
	kModelTextOutKindRegionDescH = 517,
	kModelTextOutKindRegionDescI = 518,

	}KModelTextOutKindTheme;

@end
