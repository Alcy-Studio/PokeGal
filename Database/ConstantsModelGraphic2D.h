//
//  ConstantsModelGraphic2D.h
//  PocketDraftCoreDataOSX
//
//  Created by westbugs on 10-09-07.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsModelGraphic2D : NSObject {

}


//Info
typedef enum{
	kModelG2DInfoNil = 0,
	kModelG2DInfoCharacter = 1,
	kModelG2DInfoNpc = 2,
	kModelG2DInfoOccasion = 3,
	kModelG2DInfoUi = 4,
	kModelG2DInfoTransition = 5,
	kModelG2DInfoEffect = 6,
	kModelG2DInfoGift = 7,

	
}KModelG2DInfo;

//size
//typedef enum{}KModelG2DSize;

//Kind
typedef enum{
	kModelG2DKindNil = 0,
	
#pragma mark Character
	
	//Facial Expression
		//Standard
	kModelG2DKindFacFine = 11,
	kModelG2DKindFacCool = 12,
	kModelG2DKindFacThinking = 13,
	kModelG2DKindFacSleepy = 14,
	kModelG2DKindFacSleeping = 15,
	kModelG2DKindFacAwake = 16,
	
	
		//Negative
	kModelG2DKindFacSad = 31,
	kModelG2DKindFacSob = 32,
	kModelG2DKindFacCry = 33,
	
		//Positive
	kModelG2DKindFacHappy = 51,
	kModelG2DKindFacSmile = 52,
	kModelG2DKindFacLaugh = 53,
	kModelG2DKindFacTearSmile = 54,
		
	kModelG2DKindFacLike = 55,
	kModelG2DKindFacLove = 56,

	//Costume and Posture, 1 = normal, 2 = happy, 3 = sad
		//Uniform
			//School
	kModelG2DKindCosSchoolGirl1 = 71,
	kModelG2DKindCosSchoolGirl2 = 72,
	kModelG2DKindCosSchoolGirl3 = 73,
			//Part Time
	kModelG2DKindCosPartTime1 = 91,
	kModelG2DKindCosPartTime2 = 92,
	kModelG2DKindCosPartTime3 = 93,
			//Swimming suit
	kModelG2DKindCosSwimming1 = 111,
	kModelG2DKindCosSwimming2 = 112,
	kModelG2DKindCosSwimming3 = 113,
	
		//Spring
	kModelG2DKindCosSpring1 = 131,
	kModelG2DKindCosSpring2 = 132,
	kModelG2DKindCosSpring3 = 133,
		//Summer
	kModelG2DKindCosSummer1 = 151,
	kModelG2DKindCosSummer2 = 152,
	kModelG2DKindCosSummer3 = 153,
		//Autumn
	kModelG2DKindCosAutumn1 = 171,
	kModelG2DKindCosAutumn2 = 172,
	kModelG2DKindCosAutumn3 = 173,
		//Winter
	kModelG2DKindCosWinter1 = 191,
	kModelG2DKindCosWinter2 = 192,
	kModelG2DKindCosWinter3 = 193,
	
	//Expression
		//Graphic, Basically...lines
	kModelG2DKindExpGraAngry = 211,
	kModelG2DKindExpGraScary = 212,
	kModelG2DKindExpGraSad = 213,
	kModelG2DKindExpGraHappy = 214,
	kModelG2DKindExpGraFaint = 215,
	kModelG2DKindExpGraShock = 216,
		//Word or Symbol
	
#pragma mark Npc
	
	//Employer
	kModelG2DKindNpcEmployerPositive1 = 231,
	kModelG2DKindNpcEmployerNormal1 = 232,
	kModelG2DKindNpcEmployerNegative1 = 233,
	//Teacher
	kModelG2DKindNpcTeacherPositive1 = 251,
	kModelG2DKindNpcTeacherNormal1 = 252,
	kModelG2DKindNpcTeacherNegative1 = 253,
	//Classmate
	//Boy
	kModelG2DKindNpcBoyPositive1 = 271,
	kModelG2DKindNpcBoyNormal1 = 272,
	kModelG2DKindNpcBoyNegative1 = 273,
	//Girl
	kModelG2DKindNpcGirlPositive1 = 291,
	kModelG2DKindNpcGirlNormal1 = 292,
	kModelG2DKindNpcGirlNegative1 = 293,
	
	//Cinema Reception
	kModelG2DKindNpcCinemaRecQ1 = 301,
	kModelG2DKindNpcCinemaRecR1 = 302,
	
	//Gym Reception
	kModelG2DKindNpcGymRecQ1 = 311,
	kModelG2DKindNpcGymRecR1 = 312,
	
	//Concert Hall Reception
	kModelG2DKindNpcConcertHallRecQ1 = 331,
	kModelG2DKindNpcConcertHallRecR1 = 332,
	
	
#pragma mark Occasion
	//Occasion
		//Theme
	kModelG2DKindOccHome = 351,
	kModelG2DKindOccPark = 352,
	kModelG2DKindOccZoo = 353,
	kModelG2DKindOccCinema = 354,
	kModelG2DKindOccTheatre = 355,
	kModelG2DKindOccLibrary = 356,
	kModelG2DKindOccSchool = 357,
	kModelG2DKindOccBeach = 358,
	kModelG2DKindOccShoppingMall = 359,
	kModelG2DKindOccGym = 360,
	kModelG2DKindOccConcertHall = 361,

	kModelG2DKindOccKaraoke = 362,
	kModelG2DKindOccAquarium = 363,
	kModelG2DKindOccBowling = 364,
	
	kModelG2DKindOccRestaurant = 365,
	
		//Mini
	kModelG2DKindMinMovie = 391,
	kModelG2DKindMinKarate = 392,
	kModelG2DKindMinMusic = 393,
	
#pragma mark Ui
	//Ui
		//Universal
	kModelG2DKindUiArrowLeft = 411,
	kModelG2DKindUiArrowRight = 412,
	kModelG2DKindUiActBack = 413,

	kModelG2DKindUiBgdBlueTile = 421,
	kModelG2DKindUiBgdPinkTile = 422,
	
		//Avatar
	kModelG2DKindUiAvaHappy = 431,
	kModelG2DKindUiAvaNormal = 432,
	kModelG2DKindUiAvaSad = 433,
	
		//PGMain,
		//1
	kModelG2DKindUiSpring = 451,
	kModelG2DKindUiSummer = 452,
	kModelG2DKindUiAutumn = 453,
	kModelG2DKindUiWinter = 454,
		//3
	kModelG2DKindUiDay = 471,
	kModelG2DKindUiNight = 472,
		//4
	kModelG2DKindUiMoodGood = 491, 
	kModelG2DKindUiMoodOk = 492,
	kModelG2DKindUiMoodBad = 493,
	
	//7,8,9,10,11
	kModelG2DKindUiActSport = 511,
	kModelG2DKindUiActMovie = 512,
	kModelG2DKindUiActMusic = 513,
	
	kModelG2DKindUiActCall = 514,
	kModelG2DKindUiActSms = 515,
	kModelG2DKindUiActMove = 516,
	
	
		//PGAchi
		//3, 5
		//6,7,8,  9,10,11,  12,13,14
	kModelG2DKindUiIcoGiftBase = 531,
	kModelG2DKindUiIcoGiftNone = 532,
	


		//15,17
		//PGAttr
		//1
		//4,6,13,15
		//5
	kModelG2DKindUiIcoDetail = 551,
	kModelG2DKindUiIcoSchedule = 552,
		//8,10,12
		
		//PGTitle
	//1,2,3
	kModelG2DKindUiIcoNew = 571,
	kModelG2DKindUiIcoContinue = 572,
	kModelG2DKindUiIcoWebsite = 573,
	kModelG2DKindUiIcoTutorial = 575,
	
	//4
	kModelG2DKindUiHeart = 574,

	//PGDate (7)
	//Same as PGMain, PGDate
	/*
	//1
	kModelG2DKindUiSpring = 451,
	kModelG2DKindUiSummer = 452,
	kModelG2DKindUiAutumn = 453,
	kModelG2DKindUiWinter = 454,
	//3
	kModelG2DKindUiDay = 471,
	kModelG2DKindUiNight = 472,
	//4
	kModelG2DKindUiMoodGood = 491, 
	kModelG2DKindUiMoodOk = 492,
	kModelG2DKindUiMoodBad = 493,
	//5
	 //Costume and Posture, 1 = normal, 2 = happy, 3 = sad
	 //Uniform
	 //School
	 kModelG2DKindCosSchoolGirl1 = 71,
	 kModelG2DKindCosSchoolGirl2 = 72,
	 kModelG2DKindCosSchoolGirl3 = 73,
	 //Part Time
	 kModelG2DKindCosPartTime1 = 91,
	 kModelG2DKindCosPartTime2 = 92,
	 kModelG2DKindCosPartTime3 = 93,
	 //Swimming suit
	 kModelG2DKindCosSwimming1 = 111,
	 kModelG2DKindCosSwimming2 = 112,
	 kModelG2DKindCosSwimming3 = 113,
	 
	 //Spring
	 kModelG2DKindCosSpring1 = 131,
	 kModelG2DKindCosSpring2 = 132,
	 kModelG2DKindCosSpring3 = 133,
	 //Summer
	 kModelG2DKindCosSummer1 = 151,
	 kModelG2DKindCosSummer2 = 152,
	 kModelG2DKindCosSummer3 = 153,
	 //Autumn
	 kModelG2DKindCosAutumn1 = 171,
	 kModelG2DKindCosAutumn2 = 172,
	 kModelG2DKindCosAutumn3 = 173,
	 //Winter
	 kModelG2DKindCosWinter1 = 191,
	 kModelG2DKindCosWinter2 = 192,
	 kModelG2DKindCosWinter3 = 193,
	 
	 
	//6
	 //Theme
	 kModelG2DKindOccHome = 351,
	 kModelG2DKindOccPark = 352,
	 kModelG2DKindOccZoo = 353,
	 kModelG2DKindOccCinema = 354,
	 kModelG2DKindOccTheatre = 355,
	 kModelG2DKindOccLibrary = 356,
	 kModelG2DKindOccSchool = 357,
	 kModelG2DKindOccBeach = 358,
	 kModelG2DKindOccShoppingMall = 359,
	 kModelG2DKindOccGym = 360,
	 kModelG2DKindOccConcertHall = 361,
	 
	//7,11,8,9,10,
	kModelG2DKindUiArrowLeft = 411,
	kModelG2DKindUiArrowRight = 412,
	 */
	kModelG2DKindUiActTalk = 591,
	kModelG2DKindUiActRomance = 592,
	kModelG2DKindUiActLeave = 593,
	kModelG2DKindUiActAction = 594,
	 
	kModelG2DKindUiActPlay = 595,

	
	//PGMap (8)
	//Same as PGMain, PGDate
	/*
	 //1
	 kModelG2DKindUiSpring = 451,
	 kModelG2DKindUiSummer = 452,
	 kModelG2DKindUiAutumn = 453,
	 kModelG2DKindUiWinter = 454,
	 //3
	 kModelG2DKindUiDay = 471,
	 kModelG2DKindUiNight = 472,
	 //4
	 kModelG2DKindUiActBack = 413,
	 //5
	 */
	kModelG2DKindUiMap = 601,
	 /*
	 //9,10,11,12,13,14,15,16,17
	 kModelG2DKindUiArrowLeft = 411,
	 kModelG2DKindUiArrowRight = 412,
	 */

	kModelG2DKindUiMapGo = 602,


	kModelG2DKindUiRegion = 611,
	kModelG2DKindUiRegionA = 612,
	kModelG2DKindUiRegionB = 613,
	kModelG2DKindUiRegionC = 614,

	kModelG2DKindUiRegionD = 615,
	kModelG2DKindUiRegionE = 616,
	kModelG2DKindUiRegionF = 617,

	kModelG2DKindUiRegionG = 618,
	kModelG2DKindUiRegionH = 619,
	kModelG2DKindUiRegionI = 620,

	
	
	kModelG2DKindUiMapRegionThumbA = 621,
	kModelG2DKindUiMapRegionThumbB = 622,
	kModelG2DKindUiMapRegionThumbC = 623,
	kModelG2DKindUiMapRegionThumbD = 624,
	kModelG2DKindUiMapRegionThumbE = 625,
	kModelG2DKindUiMapRegionThumbF = 626,
	kModelG2DKindUiMapRegionThumbG = 627,
	kModelG2DKindUiMapRegionThumbH = 628,
	kModelG2DKindUiMapRegionThumbI = 629,

	kModelG2DKindUiMapHeartIcon = 630,
	
	kModelG2DKindUiMapLvIconOk = 631,
	kModelG2DKindUiMapLvIconNo = 632,

	
	kModelG2DKindUiMapRegionImageA = 831,
	kModelG2DKindUiMapRegionImageB = 832,
	kModelG2DKindUiMapRegionImageC = 833,
	
	kModelG2DKindUiMapRegionImageD = 834,
	kModelG2DKindUiMapRegionImageE = 835,
	kModelG2DKindUiMapRegionImageF = 836,
	
	kModelG2DKindUiMapRegionImageG = 837,
	kModelG2DKindUiMapRegionImageH = 838,
	kModelG2DKindUiMapRegionImageI = 839,

	
	//PGEvent (9)
	//Same as PGMain, PGDate
	/*
	 //1
	 kModelG2DKindUiSpring = 451,
	 kModelG2DKindUiSummer = 452,
	 kModelG2DKindUiAutumn = 453,
	 kModelG2DKindUiWinter = 454,
	 //3
	 kModelG2DKindUiDay = 471,
	 kModelG2DKindUiNight = 472,
	 //4
	 kModelG2DKindUiMoodGood = 491, 
	 kModelG2DKindUiMoodOk = 492,
	 kModelG2DKindUiMoodBad = 493,
	 //5
	 //Costume and Posture, 1 = normal, 2 = happy, 3 = sad
	 //Uniform
	 //School
	 kModelG2DKindCosSchoolGirl1 = 71,
	 kModelG2DKindCosSchoolGirl2 = 72,
	 kModelG2DKindCosSchoolGirl3 = 73,
	 //Part Time
	 kModelG2DKindCosPartTime1 = 91,
	 kModelG2DKindCosPartTime2 = 92,
	 kModelG2DKindCosPartTime3 = 93,
	 //Swimming suit
	 kModelG2DKindCosSwimming1 = 111,
	 kModelG2DKindCosSwimming2 = 112,
	 kModelG2DKindCosSwimming3 = 113,
	 
	 //Spring
	 kModelG2DKindCosSpring1 = 131,
	 kModelG2DKindCosSpring2 = 132,
	 kModelG2DKindCosSpring3 = 133,
	 //Summer
	 kModelG2DKindCosSummer1 = 151,
	 kModelG2DKindCosSummer2 = 152,
	 kModelG2DKindCosSummer3 = 153,
	 //Autumn
	 kModelG2DKindCosAutumn1 = 171,
	 kModelG2DKindCosAutumn2 = 172,
	 kModelG2DKindCosAutumn3 = 173,
	 //Winter
	 kModelG2DKindCosWinter1 = 191,
	 kModelG2DKindCosWinter2 = 192,
	 kModelG2DKindCosWinter3 = 193,
	 
	 
	 //6
	 //Theme
	 kModelG2DKindOccHome = 351,
	 kModelG2DKindOccPark = 352,
	 kModelG2DKindOccZoo = 353,
	 kModelG2DKindOccCinema = 354,
	 kModelG2DKindOccTheatre = 355,
	 kModelG2DKindOccLibrary = 356,
	 kModelG2DKindOccSchool = 357,
	 kModelG2DKindOccBeach = 358,
	 kModelG2DKindOccShoppingMall = 359,
	 kModelG2DKindOccGym = 360,
	 kModelG2DKindOccConcertHall = 361,
	 
	 */
	
	//PGRomance (10)
	//Same as PGMain, PGDate
	/*
	 //1
	 kModelG2DKindUiSpring = 451,
	 kModelG2DKindUiSummer = 452,
	 kModelG2DKindUiAutumn = 453,
	 kModelG2DKindUiWinter = 454,
	 //3
	 kModelG2DKindUiDay = 471,
	 kModelG2DKindUiNight = 472,
	 //4
	 kModelG2DKindUiMoodGood = 491, 
	 kModelG2DKindUiMoodOk = 492,
	 kModelG2DKindUiMoodBad = 493,
	 */
	 //5
	 //Animaion
	 kModelG2DKindAniKiss1 = 641,
	 kModelG2DKindAniKiss2 = 642,
	 kModelG2DKindAniKiss3 = 643,
     kModelG2DKindAniKiss4 = 644,
	
	 kModelG2DKindAniHug1 = 661,
	 kModelG2DKindAniHug2 = 662,
	 kModelG2DKindAniHug3 = 663,
	 kModelG2DKindAniHug4 = 664,
	
	 kModelG2DKindAniHold1 = 681,
	 kModelG2DKindAniHold2 = 682,
	 kModelG2DKindAniHold3 = 683,
	 kModelG2DKindAniHold4 = 684,
	
	

	 
	 /*
	 //6
	 //Theme
	 kModelG2DKindOccHome = 351,
	 kModelG2DKindOccPark = 352,
	 kModelG2DKindOccZoo = 353,
	 kModelG2DKindOccCinema = 354,
	 kModelG2DKindOccTheatre = 355,
	 kModelG2DKindOccLibrary = 356,
	 kModelG2DKindOccSchool = 357,
	 kModelG2DKindOccBeach = 358,
	 kModelG2DKindOccShoppingMall = 359,
	 kModelG2DKindOccGym = 360,
	 kModelG2DKindOccConcertHall = 361,
	 
	 */
	
	//PGDetail (11)
	/*
	//1
	kModelG2DKindUiActBack = 413,
	*/
	
	//PGArrange (12)
	/*
	 //1
	 kModelG2DKindUiActBack = 413,
	 */
	kModelG2DKindUiActAvailable = 701,
	kModelG2DKindUiActOccupied = 702,

	//PGPlace (13)
	/*
	 //1
	 kModelG2DKindUiActBack = 413,
	 */
	//PGSchedule (14)
	
	 //1
	 //kModelG2DKindUiActBack = 413,
	
	kModelG2DKindUiScheRegionA = 801,
	kModelG2DKindUiScheRegionB = 802,
	kModelG2DKindUiScheRegionC = 803,
	kModelG2DKindUiScheRegionD = 804,
	kModelG2DKindUiScheRegionE = 805,
	kModelG2DKindUiScheRegionF = 806,
	kModelG2DKindUiScheRegionG = 807,
	kModelG2DKindUiScheRegionH = 808,
	kModelG2DKindUiScheRegionI = 809,

	 
	//PGTalk(15)
	//Same as PGMain, PGDate
	/*
	 //1
	 kModelG2DKindUiSpring = 451,
	 kModelG2DKindUiSummer = 452,
	 kModelG2DKindUiAutumn = 453,
	 kModelG2DKindUiWinter = 454,
	 //3
	 kModelG2DKindUiDay = 471,
	 kModelG2DKindUiNight = 472,
	 //4
	 kModelG2DKindUiMoodGood = 491, 
	 kModelG2DKindUiMoodOk = 492,
	 kModelG2DKindUiMoodBad = 493,
	 //5
	 //Costume and Posture, 1 = normal, 2 = happy, 3 = sad
	 //Uniform
	 //School
	 kModelG2DKindCosSchoolGirl1 = 71,
	 kModelG2DKindCosSchoolGirl2 = 72,
	 kModelG2DKindCosSchoolGirl3 = 73,
	 //Part Time
	 kModelG2DKindCosPartTime1 = 91,
	 kModelG2DKindCosPartTime2 = 92,
	 kModelG2DKindCosPartTime3 = 93,
	 //Swimming suit
	 kModelG2DKindCosSwimming1 = 111,
	 kModelG2DKindCosSwimming2 = 112,
	 kModelG2DKindCosSwimming3 = 113,
	 
	 //Spring
	 kModelG2DKindCosSpring1 = 131,
	 kModelG2DKindCosSpring2 = 132,
	 kModelG2DKindCosSpring3 = 133,
	 //Summer
	 kModelG2DKindCosSummer1 = 151,
	 kModelG2DKindCosSummer2 = 152,
	 kModelG2DKindCosSummer3 = 153,
	 //Autumn
	 kModelG2DKindCosAutumn1 = 171,
	 kModelG2DKindCosAutumn2 = 172,
	 kModelG2DKindCosAutumn3 = 173,
	 //Winter
	 kModelG2DKindCosWinter1 = 191,
	 kModelG2DKindCosWinter2 = 192,
	 kModelG2DKindCosWinter3 = 193,
	 
	 
	 //6
	 //Theme
	 kModelG2DKindOccHome = 351,
	 kModelG2DKindOccPark = 352,
	 kModelG2DKindOccZoo = 353,
	 kModelG2DKindOccCinema = 354,
	 kModelG2DKindOccTheatre = 355,
	 kModelG2DKindOccLibrary = 356,
	 kModelG2DKindOccSchool = 357,
	 kModelG2DKindOccBeach = 358,
	 kModelG2DKindOccShoppingMall = 359,
	 kModelG2DKindOccGym = 360,
	 kModelG2DKindOccConcertHall = 361,
	 
	 */
	
	//PGSMS (16)
	/*
	 //1
	 kModelG2DKindUiActBack = 413,
	 */

	//PGTutor (18)
	/*
	 //1
	 kModelG2DKindUiTutorMainPage1 = 901,
	 kModelG2DKindUiTutorMainPage2 = 902,
	 kModelG2DKindUiTutorMainPage3 = 903,
	 kModelG2DKindUiTutorMainPage4 = 904,
	 kModelG2DKindUiTutorMainPage5 = 905,
	 kModelG2DKindUiTutorMainPage6 = 906,
	 kModelG2DKindUiTutorMainPage7 = 907,
	 kModelG2DKindUiTutorMainPage8 = 908,
	 kModelG2DKindUiTutorMainPage9 = 909,
	 kModelG2DKindUiTutorMainPage10 = 910,

	 */
	
	
	kModelG2DKindUiTutorMainPage1 = 901,
	kModelG2DKindUiTutorMainPage2 = 902,
	kModelG2DKindUiTutorMainPage3 = 903,
	kModelG2DKindUiTutorMainPage4 = 904,
	kModelG2DKindUiTutorMainPage5 = 905,
	kModelG2DKindUiTutorMainPage6 = 906,
	kModelG2DKindUiTutorMainPage7 = 907,
	kModelG2DKindUiTutorMainPage8 = 908,
	kModelG2DKindUiTutorMainPage9 = 909,
	kModelG2DKindUiTutorMainPage10 = 910,
	kModelG2DKindUiTutorMainPage11 = 911,
	
	kModelG2DKindUiTutorAchiPage1 = 921,
	kModelG2DKindUiTutorAchiPage2 = 922,
	kModelG2DKindUiTutorAchiPage3 = 923,
	kModelG2DKindUiTutorAchiPage4 = 924,
	kModelG2DKindUiTutorAchiPage5 = 925,
	kModelG2DKindUiTutorAchiPage6 = 926,
	
	kModelG2DKindUiTutorAttrPage1 = 941,
	kModelG2DKindUiTutorAttrPage2 = 942,
	kModelG2DKindUiTutorAttrPage3 = 943,
	kModelG2DKindUiTutorAttrPage4 = 944,
	kModelG2DKindUiTutorAttrPage5 = 945,
	kModelG2DKindUiTutorAttrPage6 = 946,
	kModelG2DKindUiTutorAttrPage7 = 947,
	kModelG2DKindUiTutorAttrPage8 = 948,
	kModelG2DKindUiTutorAttrPage9 = 949,
	
	kModelG2DKindUiTutorDatePage1 = 961,
	kModelG2DKindUiTutorDatePage2 = 962,
	kModelG2DKindUiTutorDatePage3 = 963,
	kModelG2DKindUiTutorDatePage4 = 964,
	kModelG2DKindUiTutorDatePage5 = 965,
	kModelG2DKindUiTutorDatePage6 = 966,
	kModelG2DKindUiTutorDatePage7 = 967,
	kModelG2DKindUiTutorDatePage8 = 968,
	kModelG2DKindUiTutorDatePage9 = 969,
	kModelG2DKindUiTutorDatePage10 = 970,
	kModelG2DKindUiTutorDatePage11 = 971,

	kModelG2DKindUiTutorWalkPage1 = 981,
	kModelG2DKindUiTutorWalkPage2 = 982,
	kModelG2DKindUiTutorWalkPage3 = 983,
	kModelG2DKindUiTutorWalkPage4 = 984,
	kModelG2DKindUiTutorWalkPage5 = 985,
	kModelG2DKindUiTutorWalkPage6 = 986,
	kModelG2DKindUiTutorWalkPage7 = 987,
	kModelG2DKindUiTutorWalkPage8 = 988,
	kModelG2DKindUiTutorWalkPage9 = 989,
	kModelG2DKindUiTutorWalkPage10 = 990,
	
	kModelG2DKindUiTutorEventPage1 = 1001,
	kModelG2DKindUiTutorEventPage2 = 1002,
	kModelG2DKindUiTutorEventPage3 = 1003,
	kModelG2DKindUiTutorEventPage4 = 1004,
	kModelG2DKindUiTutorEventPage5 = 1005,
	kModelG2DKindUiTutorEventPage6 = 1006,
	kModelG2DKindUiTutorEventPage7 = 1007,
	kModelG2DKindUiTutorEventPage8 = 1008,
	kModelG2DKindUiTutorEventPage9 = 1009,
	kModelG2DKindUiTutorEventPage10 = 1010,
	
	kModelG2DKindUiTutorMapPage1 = 1021,
	kModelG2DKindUiTutorMapPage2 = 1022,
	kModelG2DKindUiTutorMapPage3 = 1023,
	kModelG2DKindUiTutorMapPage4 = 1024,
	kModelG2DKindUiTutorMapPage5 = 1025,
	kModelG2DKindUiTutorMapPage6 = 1026,
	kModelG2DKindUiTutorMapPage7 = 1027,
	kModelG2DKindUiTutorMapPage8 = 1028,
	
	kModelG2DKindUiTutorArrangePage1 = 1041,
	kModelG2DKindUiTutorArrangePage2 = 1042,
	kModelG2DKindUiTutorArrangePage3 = 1043,
	kModelG2DKindUiTutorArrangePage4 = 1044,
	
	kModelG2DKindUiTutorPlacePage1 = 1061,
	kModelG2DKindUiTutorPlacePage2 = 1062,
	kModelG2DKindUiTutorPlacePage3 = 1063,
	kModelG2DKindUiTutorPlacePage4 = 1064,
	
	kModelG2DKindUiTutorSchedulePage1 = 1081,
	kModelG2DKindUiTutorSchedulePage2 = 1082,
	
	kModelG2DKindUiTutorDetailPage1 = 1101,
	kModelG2DKindUiTutorDetailPage2 = 1102,
	kModelG2DKindUiTutorDetailPage3 = 1103,
	
	kModelG2DKindUiTutorSmsPage1 = 1121,
	kModelG2DKindUiTutorSmsPage2 = 1122,
	kModelG2DKindUiTutorSmsPage3 = 1123,
	kModelG2DKindUiTutorSmsPage4 = 1124,
	kModelG2DKindUiTutorSmsPage5 = 1125,

	kModelG2DKindUiTutorDetailPageBase = 1201,
	kModelG2DKindUiTutorSchedulePageBase = 1202,
	kModelG2DKindUiTutorPlacePageBase = 1203,
	kModelG2DKindUiTutorArrangePageBase = 1204,
	kModelG2DKindUiTutorMapPageBase = 1205,
	kModelG2DKindUiTutorEventPageBase = 1206,
	kModelG2DKindUiTutorWalkPageBase = 1207,
	kModelG2DKindUiTutorDatePageBase = 1208,
	kModelG2DKindUiTutorAttrPageBase = 1209,
	kModelG2DKindUiTutorAchiPageBase = 1210,
	kModelG2DKindUiTutorMainPageBase = 1211,
	kModelG2DKindUiTutorSmsPageBase = 1212,


	
	
	

	
}KModelG2DKind;


@end
