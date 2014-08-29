//
//  ConstantsGirlStatus.h
//  PocketDraft
//
//  Created by westbugs on 10-09-06.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsGirlStatus : NSObject 

//Girl Name
extern NSString* const kGirlStatusName1;


//Girl Status
enum {
	kGirlHealthy = 3,
	kGirlNormal = 2,
	kGirlTired = 1,
	kGirlNullStatus = 0,
};

//Girl Mood
enum {
	kGirlHappy = 1,
	kGirlFine = 2,
	kGirlSad = 3,
	kGirlNullMood = 0,
};

//Girl Regen
enum {
	kGirlRegenAt = 1,

};

//Girl Talk
enum {
	kGirlTalk1 = 1,
	kGirlTalk2 = 2,
	kGirlTalk3 = 3,

};

//Girl Look
enum {
	kGirlLook1 = 1,
	kGirlLook2 = 2,
	kGirlLook3 = 3,
	
};

//Girl Chat
enum {
	kGirlChat1 = 1,
	kGirlChat2 = 2,
	kGirlChat3 = 3,
	
};

//Girl Romance
enum {
	kGirlRomance1 = 1,
	kGirlRomance2 = 2,
	kGirlRomance3 = 3,
	
};

@end
