//
//  weatherObject.h
//  weatherForecast
//
//  Created by shinren.pan@gmail.com on 2010/6/4.
//  Copyright 2010 http://coding-in.blogspot.com . All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <CoreLocation/CLLocationManagerDelegate.h>
@protocol WeatherDelegate;


@interface WeatherObject : NSObject <CLLocationManagerDelegate, NSXMLParserDelegate>{
	CLLocationManager *locationManager;
	NSDictionary *current_Weatherdata;//目前天氣資料
	NSDictionary *today_Weatherdata;//今天天氣資料
	NSDictionary *tomorrow_Weatherdata;//明天天氣資料
	NSDictionary *sunriseAndsunset;//日出日落時間
	NSDictionary *location_Data;//所在定位資料
	NSString *woeid;//經緯度轉換woeid
	id<WeatherDelegate> delegate;
	
	BOOL today;
	BOOL isStart;
	BOOL TemperatureF;
}
@property(nonatomic, retain)CLLocationManager *locationManager;
@property(nonatomic, retain)NSDictionary *current_Weatherdata;
@property(nonatomic, retain)NSDictionary *today_Weatherdata;
@property(nonatomic, retain)NSDictionary *tomorrow_Weatherdata;
@property(nonatomic, retain)NSDictionary *sunriseAndsunset;
@property(nonatomic, retain)NSDictionary *location_Data;
@property(nonatomic, retain)NSString *woeid;
@property(assign) id<WeatherDelegate> delegate;
@property(assign) BOOL TemperatureF;
- (void)updateWeather;
@end

//delegate
@protocol WeatherDelegate <NSObject>
@optional
-(void)getWeatherFinish;
-(void)getWeatherError;

@end

