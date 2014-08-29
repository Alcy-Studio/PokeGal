//
//  ConstantsSceneCode.h
//  PocketDraft
//
//  Created by westbugs on 10-09-16.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsSceneCode : NSObject 

typedef enum {
	kSceneCodeNil = 0,
	kSceneCodePGMain = 1,
	kSceneCodePGAchi = 2,

	kSceneCodePGAttr = 3,
	kSceneCodePGTitle = 4,
	kSceneCodePGScene = 5,
	kSceneCodePGMini = 6,
	
	kSceneCodePGDate = 7,
	kSceneCodePGMap = 8,
	kSceneCodePGEvent = 9, // Modal View / Standard View
	
	
	kSceneCodePGRomance = 10,
	kSceneCodePGDetail = 11,
	
	kSceneCodePGArrange = 12,
	kSceneCodePGPlace = 13,
	kSceneCodePGSchedule = 14,
	
	kSceneCodePGTalk = 15,
	kSceneCodePGSMS = 16,
	
	kSceneCodePGWalk = 17,
	
	kSceneCodePGTutorPage = 18,
	kSceneCodePGTutorSV = 19,
	kSceneCodePGTutorMenu = 20,
	
	//Modal View Controller
	kSceneCodePGMConfirm = 31,
	kSceneCodePGMAlert = 32,
	kSceneCodePGMSelection = 33,



	
}kSceneCode;

@end

