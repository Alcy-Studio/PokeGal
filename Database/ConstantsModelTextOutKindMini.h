//
//  ConstantsModelTextOutKindMini.h
//  PocketDraftCoreDataOSX
//
//  Created by westbugs on 10-09-08.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsModelTextOutKindMini : NSObject 

typedef enum{
	kModelTextOutKindMiniNil = 0,
	//Mini
		//Alcy Conversation
			//Movie
	kModelTextOutKindMovAlcy1 = 11,
	kModelTextOutKindMovAlcy2 = 12,
	kModelTextOutKindMovAlcy3 = 13,
	
			//Karate
	kModelTextOutKindKarAlcy1 = 31,
	kModelTextOutKindKarAlcy2 = 32,
	kModelTextOutKindKarAlcy3 = 33,
	
		//Music
	kModelTextOutKindMusAlcy1 = 34,
	kModelTextOutKindMusAlcy2 = 35,
	kModelTextOutKindMusAlcy3 = 36,
	
		//Npc Conversation
			//Movie
	kModelTextOutKindMovNpc1 = 51,
	kModelTextOutKindMovNpc2 = 52,
	kModelTextOutKindMovNpc3 = 53,
			//Karate
	kModelTextOutKindKarNpc1 = 71,
	kModelTextOutKindKarNpc2 = 72,
	kModelTextOutKindKarNpc3 = 73,
	
			//Music
	kModelTextOutKindMusNpc1 = 91,
	kModelTextOutKindMusNpc2 = 92,
	kModelTextOutKindMusNpc3 = 93,
	
		//Occasion
	
	kModelTextOutKindMinMovie = 111,
	kModelTextOutKindMinKarate = 112,
	kModelTextOutKindMinMusic = 113,
	
		//Transition
	kModelTextOutKindTraMovie = 131,
	kModelTextOutKindTraKarate = 132,
	kModelTextOutKindTraMusic = 133,
	
		//Effect
			//Hit
	kModelTextOutKindHitMovie = 151,
	kModelTextOutKindHitKarate = 152,
	kModelTextOutKindHitMusic = 153,
			//Miss
	kModelTextOutKindMissMovie = 171,
	kModelTextOutKindMissKarate = 172,
	kModelTextOutKindMissMusic = 173,
			//Hurt
	kModelTextOutKindHurtMovie = 191,
	kModelTextOutKindHurtKarate = 192,
	kModelTextOutKindHurtMusic = 193,
			//Evade
	kModelTextOutKindEvadeMovie = 211,
	kModelTextOutKindEvadeKarate = 212,
	kModelTextOutKindEvadeMusic = 213,
	
		//Hint
			//Control
	kModelTextOutKindHintMovie = 231,
	kModelTextOutKindHintKarate = 232,
	kModelTextOutKindHintMusic = 233,
	
			//Note
	kModelTextOutKindNoteMovie = 251,
	kModelTextOutKindNoteKarate = 252,
	kModelTextOutKindNoteMusic = 253,
	
	
}KModelTextOutKindMini;	

@end

