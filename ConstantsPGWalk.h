//
//  ConstantsPGWalk.h
//  frdfrd
//
//  Created by westbugs on 11-02-24.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsPGWalk : NSObject {

}

extern NSString* const kWalkTitleText;
extern NSString* const kWalkTopLeftLabelText;

#pragma mark TAG
typedef enum{
	kWalkViewTotal = 13,
	
	kWalkView = 0,
	kWalkWeatherImage = 1,
	kWalkAtPointLabel = 2,
	kWalkDayNightImage = 3,
	kWalkBubbleImage = 4,
	kWalkCharacterImage = 5,
	kWalkBackgroundImage = 6,
	kWalkLeftArrowButton = 7,
	kWalkLeftActionButton = 8,
	kWalkMidActionButton = 9,
	kWalkRightActionButton = 10,
	kWalkRightArrowButton = 11,
	kWalkHintLabel = 12,
	kWalkViewHelp = 13,

	kWalkViewTitleButton = 300,

	kWalkViewTitle = 500,
	kWalkTopLeftLabel = 501,

	kWalkViewDayNightButton = 700,

}kPGWalk;
/*
 extern int const kMainViewTotal;
 
 extern const int kMainView;
 extern int const kMainWeatherImage;
 extern int const kMainAtPointLabel;
 extern int const kMainDayNightImage;
 extern int const kMainBubbleImage;
 extern int const kMainCharacterImage;
 
 extern int const kMainBackgroundImage;
 extern int const kMainLeftArrowButton;
 extern int const kMainLeftActionButton;
 extern int const kMainMidActionButton;
 extern int const kMainRightActionButton;
 extern int const kMainRightArrowButton;
 extern int const kMainHintLabel;
 */


@end
