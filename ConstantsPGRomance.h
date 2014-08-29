//
//  ConstantsPGRomance.h
//  frdfrd
//
//  Created by westbugs on 10-12-17.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsPGRomance : NSObject {

}

extern NSString* const kRomanceTitleText;

#pragma mark TAG
typedef enum{
	kRomanceViewTotal = 9,
	
	kRomanceView = 0,
	kRomanceWeatherImage = 1,
	kRomanceAtPointLabel = 2,
	kRomanceDayNightImage = 3,
	kRomanceMoodImage = 4,
	kRomanceRomanceAnimation = 5,
	kRomanceBackgroundImage = 6,
	kRomanceMsgButton = 7,
	kRomanceMsgLabel = 8,
	kRomanceHintLabel = 9,
	
	kRomanceViewTitleButton = 300,

	kRomanceViewTitle = 500,


}kPGRomance;


@end
