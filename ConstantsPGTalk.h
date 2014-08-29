//
//  ConstantsPGTalk.h
//  frdfrd
//
//  Created by westbugs on 10-12-27.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsPGTalk : NSObject {

}

extern NSString* const kTalkTitleText;
extern NSString* const kTalkTopLeftLabelText;

#pragma mark TAG
typedef enum{
	kTalkViewTotal = 9,
	
	kTalkView = 0,
	kTalkWeatherImage = 1,
	kTalkAtPointLabel = 2,
	kTalkDayNightImage = 3,
	kTalkMoodImage = 4,
	kTalkCharacterImage = 5,
	kTalkBackgroundImage = 6,
	kTalkMsgButton = 7,
	kTalkMsgLabel = 8,
	kTalkHintLabel = 9,
	
	kTalkViewTitleButton = 300,

	kTalkViewTitle = 500,
	kTalkTopLeftLabel = 501,

	
}kPGTalk;


@end
