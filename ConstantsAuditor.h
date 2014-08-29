//
//  ConstantsAuditor.h
//  PocketDraft
//
//  Created by westbugs on 10-09-17.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsAuditor : NSObject 

extern NSString* const kAudInitViewRoleFileName;
extern NSString* const kAudInitViewRoleFileType;


extern NSString* const kAudViewRoleFileName;
extern NSString* const kAudViewRoleFileType;

extern NSString* const kAudInitSettingFileName;
extern NSString* const kAudInitSettingFileType;

typedef enum{
	kAuditorNil = 0,
	kValidIn = 1,
	kInterpreter = 2,
	kEvaluation = 3,
	kDecision = 4,
	kConstraint = 5,
	kFeedback = 6,
	kValidOut = 7,
	kTrigger = 8,
	
	//User Default
	kUserDefaults = 10,
	
	//Database
	kEntity = 11,
		//Base
	kSe = 12,
	kGraphic2D = 13,
	kUi = 14,
	kTextOut = 15,
	kBgm = 16,
	kVoice = 17,
	kGraphic3D = 18,
	kScriptOut = 19,
	
	kEntityGlossary = 20,
	kRecord = 21,
		//Addon
	kGirl = 22,
	kGift = 23,
	kEvent = 24,
	kRegion = 25,

	
}kAuditor;

@end
