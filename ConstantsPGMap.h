//
//  ConstantsPGMap.h
//  frdfrd
//
//  Created by westbugs on 10-12-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsPGMap : NSObject {

}

extern NSString* const kMapTitleText;
extern NSString* const kMapTopLeftLabelText;

#pragma mark TAG
typedef enum{
	kMapViewTotal = 26,
	
	kMapView = 0,
	kMapWeatherImage = 1,
	kMapAtPointLabel = 2,
	kMapDayNightImage = 3,
	kMapBackButton = 4,
	kMapMapMainImage = 5,
	kMapRegionDetail = 6,
	kMapGoButton = 7,
	kMapHintLabel = 8,
	kMapRegionAButton = 9,
	kMapRegionBButton = 10,
	kMapRegionCButton = 11,
	kMapRegionDButton = 12,
	kMapRegionEButton = 13,
	kMapRegionFButton = 14,
	kMapRegionGButton = 15,
	kMapRegionHButton = 16,
	kMapRegionIButton = 17,
	
	kMapRegionPic = 18,
	kMapDatingIcon = 19,
	kMapTopLvReqIcon = 20,
	kMapMidLvReqIcon = 21,
	kMapLowLvReqIcon = 22,
	kMapTopLvReqLabel = 23,
	kMapMidLvReqLabel = 24,
	kMapLowLvReqLabel = 25,

	kMapViewHelp = 26,
	
	kMapViewTitleButton = 300,

	kMapViewTitle = 500,
	kMapTopLeftLabel = 501,


	
}kPGMap;

@end
