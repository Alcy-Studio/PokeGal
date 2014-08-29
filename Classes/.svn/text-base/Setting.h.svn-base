//
//  Setting.h
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Setting : NSObject {
	//In-Game
	NSUInteger actionPoint;
	NSUInteger sportVal, movieVal, musicVal;
	NSUInteger girlCostume;
	NSUInteger relationshipVal;
	NSMutableArray *achievements;
	
	//System - User Defaults
	float seVolume, voiceVolume, bgmVolume; 
	//System - Availability (Expansion)
	//Internet, Camera, Mic, resolution, Game Center, Notification

	
	//Application
	NSString* girlName;
	NSDate *birthDate;
	NSString *birthday;
	NSUInteger horoscope, totalAchi, totalAchiPages, season;
	NSDate *currentDate;
	BOOL dayNight;
	NSUInteger currentMinute, currentHour, currentDay, currentWeek, girlStatus, girlMood;
	
	
}
//In-Game
@property (nonatomic)NSUInteger actionPoint;
@property (nonatomic)NSUInteger sportVal;
@property (nonatomic)NSUInteger movieVal;
@property (nonatomic)NSUInteger musicVal;
@property (nonatomic)NSUInteger girlCostume;
@property (nonatomic)NSUInteger relationshipVal;
@property (nonatomic, retain)NSMutableArray *achievements;

//System - User Defaults
@property (nonatomic)float seVolume;
@property (nonatomic)float voiceVolume;
@property (nonatomic)float bgmVolume;


//System - Availability (Expansion)
//Internet, Camera, Mic, resolution, Game Center, Notification

//Application
@property (nonatomic, copy) NSString* girlName; //get from constant, static
@property (nonatomic, copy) NSDate* birthDate; // get from constant, static
@property (nonatomic, copy) NSString* birthday; // get from constant, static
@property (nonatomic) NSUInteger horoscope; //get from constant, static
@property (nonatomic) NSUInteger totalAchi; //get from constant, static
@property (nonatomic) NSUInteger totalAchiPages; //get from constant, static
@property (nonatomic, readonly) NSUInteger season; //based on currentDate dynamic
@property (nonatomic, readonly) NSDate *currentDate; //realTime, dynamic
@property (nonatomic, readonly) BOOL dayNight; //based on currentDate, dynamic
@property (nonatomic, readonly) NSUInteger currentMinute; //based on currentDate, dynamic
@property (nonatomic, readonly) NSUInteger currentHour; //based on currentDate, dynamic
@property (nonatomic, readonly) NSUInteger currentDay; //based on currentDate, dynamic
@property (nonatomic, readonly) NSUInteger currentWeek; //based on currentDate, dynamic
@property (nonatomic, readonly) NSUInteger girlMood; //based on currentDate, dynamic

@end

/*
Alcy string (generate) girlname
birthday (generate)
horoscope: 0 - 11 (generate)
max total achievement val
total page (generate)
current date (generate)
daynight status(generate)
season status(generate)
current time (generate)
week status (generate)
girl status (generate, switch in game)
girl mood (generate, switch in game)

items effect, icon, pic [81](load)
*/