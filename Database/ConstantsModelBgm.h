//
//  ConstantsModelBgm.h
//  PocketDraftCoreDataOSX
//
//  Created by westbugs on 10-09-07.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsModelBgm : NSObject

/*
//Template
typedef enum{
	kExampleNil = 0,
}KExample;
*/

//Info
typedef enum{
	kModelBgmInfoNil = 0,
	kModelBgmInfoAll = 1,
	kModelBgmInfoCharacter = 2,
	kModelBgmInfoOccasion = 3,
	kModelBgmInfoTransition = 4,
	
}KModelBgmInfo;

//Kind
typedef enum{
	kModelBgmKindNil = 0,

	//Unique
	kModelBgmKindThemeSong1 = 1,
	
	//Character
	kModelBgmKindFine = 11,
	kModelBgmKindHappy = 12,
	kModelBgmKindSad = 13,
	kModelBgmKindLike = 14,
	kModelBgmKindCool = 15,
	kModelBgmKindLove = 16,
	
	//Occasion
		//Mood
	kModelBgmKindRomantic = 31,
	kModelBgmKindMystic = 32,
	kModelBgmKindEnergetic = 33,
	kModelBgmKindBitter = 34,	
	
	//Mini 
		//Music
	kModelBgmKindMusicBegin = 51,
	kModelBgmKindMusicEnd = 52,
	kModelBgmKindMusicTheme1 = 53,
	kModelBgmKindMusicTheme2 = 54,
	kModelBgmKindMusicTheme3 = 55,
	
		//Karate
	kModelBgmKindKarateBegin = 71,
	kModelBgmKindKarateEnd = 72,
	kModelBgmKindKarateTheme1 = 73,
	kModelBgmKindKarateTheme2 = 74,
	kModelBgmKindKarateTheme3 = 75,

	
		//Movie
	kModelBgmKindMovieBegin = 91,
	kModelBgmKindMovieEnd = 92,
	kModelBgmKindMovieTheme1 = 93,
	kModelBgmKindMovieTheme2 = 94,
	kModelBgmKindMovieTheme3 = 95,
}KModelBgmKind;

@end
