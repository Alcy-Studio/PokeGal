//
//  ConstantsPGPlace.h
//  frdfrd
//
//  Created by westbugs on 10-12-17.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsPGPlace : NSObject {
	
}

extern NSString* const kPlaceTitleText;
extern NSString* const kPlaceTopLeftLabelText;

extern NSString* const kTmpPlace;

#pragma mark TAG
typedef enum{
	kPlaceViewTotal = 13,
	
	kPlaceView = 0,
	kPlaceBackButton = 1,
	kPlaceAtPointLabel = 2,
	kPlaceHintLabel = 3,
	
	kPlaceRegionA = 4,
	kPlaceRegionB = 5,
	kPlaceRegionC = 6,
	kPlaceRegionD = 7,
	kPlaceRegionE = 8,
	kPlaceRegionF = 9,
	kPlaceRegionG = 10,
	kPlaceRegionH = 11,
	kPlaceRegionI = 12,

	kPlaceViewHelp = 13,

	kPlaceViewTitleButton = 300,

	kPlaceViewTitle = 500,
	kPlaceTopLeftLabel = 501,


}kPGPlace;


@end
