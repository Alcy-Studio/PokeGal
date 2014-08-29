//
//  ConstantsPGEvent.h
//  frdfrd
//
//  Created by westbugs on 10-12-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsPGEvent : NSObject {

}

extern NSString* const kEventTitleText;
extern NSString* const kEventTopLeftLabelText;

#pragma mark TAG
typedef enum{
	kEventViewTotal = 11,
	
	kEventView = 0,
	kEventWeatherImage = 1,
	kEventAtPointLabel = 2,
	kEventDayNightImage = 3,
	kEventMoodImage = 4,
	kEventCharacterImage = 5,
	kEventBackgroundImage = 6,
	kEventMsgButton = 7,
	kEventMsgLabel = 8,
	kEventHintLabel = 9,
	kEventSceneBackground = 10,	
	
	kEventSkinToneImage = 101,
	kEventFacialImage = 102,
	kEventCostumeImage = 103,
	kEventHairstyleImage = 104,
	kEventItemImage = 105,

	kEventViewHelp = 11,

	kEventViewTitle = 500,
	kEventTopLeftLabel = 501,


	
}kPGEvent;

@end
