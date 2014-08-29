//
//  ConstantsPGWeather.h
//  frdfrd
//
//  Created by westbugs on 11-06-07.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsPGWeather : NSObject {

}

extern NSString* const kWeatherTitleText;
extern NSString* const kWeatherBackButton;
extern NSString* const kWeatherFileType;

extern NSString* const kWeatherHintText;

extern NSString* const kWeatherTopLabelText;
extern NSString* const kWeatherMidLabelText;
extern NSString* const kWeatherLowLabelText;


typedef enum{
	kWeatherViewTotal = 8,
	
	kWeatherView = 0,
	kWeatherViewBackButton = 1,
	
	kWeatherViewCity = 5,

	kWeatherViewConditionImage = 3,
	kWeatherViewConditionLabel = 4,
	
	kWeatherViewHighTemp = 6,
	kWeatherViewCurrentTempLabel = 7,
	kWeatherViewLowTemp = 8,

	kWeatherViewTextView = 9,

	kWeatherHintLabel = 10,

	kWeatherViewTitle = 500,

	kWeatherViewTopLabel = 511,
	kWeatherViewMidLabel = 512,
	kWeatherViewLowLabel = 513,
	
	kWeatherViewTitleButton = 300,

	

}kPGWeather;

@end
