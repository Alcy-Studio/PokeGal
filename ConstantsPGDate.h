//
//  ConstantsPGDate.h
//  frdfrd
//
//  Created by westbugs on 10-12-17.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsPGDate : NSObject {

}

extern NSString* const kDateTitleText;
extern NSString* const kDateTopLeftLabelText;


#pragma mark TAG
typedef enum{
	kDateViewTotal = 13,
	
	kDateView = 0,
	kDateWeatherImage = 1,
	kDateAtPointLabel = 2,
	kDateDayNightImage = 3,
	kDateBubbleImage = 4,
	kDateDatingAnimation = 5,
	kDateBackgroundImage = 6,
	kDateLeftArrowButton = 7,
	kDateLeftActionButton = 8,
	kDateMidActionButton = 9,
	kDateRightActionButton = 10,
	kDateRightArrowButton = 11,
	kDateHintLabel = 12,
	
	kDateSkinToneImage = 101,
	kDateFacialImage = 102,
	kDateCostumeImage = 103,
	kDateHairstyleImage = 104,
	kDateItemImage = 105,
	
	kDateViewHelp = 13,

	kDateViewTitleButton = 300,
	
	kDateViewTitle = 500,
	kDateTopLeftLabel = 501,

	kDateViewDayNightButton = 700,

}kPGDate;


@end
