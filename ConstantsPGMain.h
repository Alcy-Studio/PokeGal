//
//  ConstantsPGMain.h
//  PocketDraft
//
//  Created by westbugs on 10-08-28.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsPGMain : NSObject {

}


extern NSString* const kMainTitleText;
extern NSString* const kMainTopLeftLabelText;

#pragma mark TAG
typedef enum{
	kMainViewTotal = 13,
	
	kMainView = 0,
	kMainWeatherImage = 1,
	kMainAtPointLabel = 2,
	kMainDayNightImage = 3,
	kMainBubbleImage = 4,
	kMainCharacterImage = 5,
	kMainBackgroundImage = 6,
	kMainLeftArrowButton = 7,
	kMainLeftActionButton = 8,
	kMainMidActionButton = 9,
	kMainRightActionButton = 10,
	kMainRightArrowButton = 11,
	kMainHintLabel = 12,
	kMainViewHelp = 13,

	kMainViewTitleButton = 300,

	kMainRatingButton = 301,

	kMainViewTitle = 500,
    kMainTopLeftLabel = 501,
	
	kMainViewDayNightButton = 700,

	
}kPGMain;
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
