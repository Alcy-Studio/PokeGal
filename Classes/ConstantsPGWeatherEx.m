//
//  ConstantsPGWeatherEx.m
//  frdfrd
//
//  Created by westbugs on 11-06-07.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "ConstantsPGWeatherEx.h"


@implementation ConstantsPGWeatherEx

/*
0	tornado
1	tropical storm
2	hurricane
3	severe thunderstorms
4	thunderstorms
5	mixed rain and snow
6	mixed rain and sleet
7	mixed snow and sleet
8	freezing drizzle
9	drizzle
10	freezing rain
11	showers
12	showers
13	snow flurries
14	light snow showers
15	blowing snow
 
16	snow
17	hail
18	sleet
19	dust
20	foggy
21	haze
22	smoky
23	blustery
24	windy
25	cold
26	cloudy
27	mostly cloudy (night)
28	mostly cloudy (day)
29	partly cloudy (night)
30	partly cloudy (day)
31	clear (night)
32	sunny
33	fair (night)
34	fair (day)
35	mixed rain and hail
36	hot
37	isolated thunderstorms
38	scattered thunderstorms
39	scattered thunderstorms
40	scattered showers
41	heavy snow
42	scattered snow showers
43	heavy snow
44	partly cloudy
45	thundershowers
46	snow showers
47	isolated thundershowers
*/

NSString* const kWeatherTornado = @"Desc Tornado";
NSString* const kWeatherTropicalStorm = @"Desc Tropical Storm";
NSString* const kWeatherHurricane = @"Desc Hurricane";
NSString* const kWeatherSevereThunderstorms = @"Desc Severe Thunderstorms";
NSString* const kWeatherThunderstorms = @"Desc Thunderstorms";
NSString* const kWeatherMixedRainAndSnow = @"Desc Mixed Rain and Snow";
NSString* const kWeatherMixedRainAndSleet = @"Desc Mixed Rain and Sleet";
NSString* const kWeatherMixedSnowAndSleet = @"Desc Mixed Snow and Sleet";
NSString* const kWeatherFreezingDrizzle = @"Desc Freezing Drizzle";
NSString* const kWeatherDrizzle = @"Desc Drizzle";
NSString* const kWeatherFreezingRain = @"Desc Freezing Rain";
NSString* const kWeatherShowers = @"Desc Showers";

NSString* const kWeatherSnowFlurries = @"Desc Snow Flurries";
NSString* const kWeatherLightSnowShowers = @"Desc Light Snow Showers";
NSString* const kWeatherBlowingSnow = @"Desc Blowing Snow"; //*

NSString* const kWeatherSnow = @"Desc Snow";
NSString* const kWeatherHail = @"Desc Hail";
NSString* const kWeatherSleet = @"Desc Sleet";
NSString* const kWeatherDust = @"Desc Dust";
NSString* const kWeatherFoggy = @"Desc Foggy";
NSString* const kWeatherHaze = @"Desc Haze";
NSString* const kWeatherSmoky = @"Desc Smoky";
NSString* const kWeatherBlustery = @"Desc Blustery";
NSString* const kWeatherWindy = @"Desc Windy";
NSString* const kWeatherCold = @"Desc Cold";
NSString* const kWeatherCloudy = @"Desc Cloudy";
NSString* const kWeatherMostlyCloudyNight = @"Desc Mostly Cloudy Night";
NSString* const kWeatherMostlyCloudyDay = @"Desc Mostly Cloudy Day";
NSString* const kWeatherPartlyCloudyNight = @"Desc Partly Cloudy Night";
NSString* const kWeatherPartlyCloudyDay = @"Desc Partly Cloudy Day";
NSString* const kWeatherClearNight = @"Desc Clear Night";
NSString* const kWeatherSunny = @"Desc Sunny";
NSString* const kWeatherFairNight = @"Desc Fair Night";
NSString* const kWeatherFairDay = @"Desc Fair Day";
NSString* const kWeatherMixedRainAndHail = @"Desc Mixed Rain and Hail";
NSString* const kWeatherHot = @"Desc Hot";

NSString* const kWeatherIsolatedThunderstorms = @"Desc Isolated Thunderstorms";
NSString* const kWeatherScatteredThunderstorms = @"Desc Scattered Thunderstorms"; //*
NSString* const kWeatherScatteredShowers = @"Desc Scattered Showers";

NSString* const kWeatherHeavySnow = @"Desc Heavy Snow";
NSString* const kWeatherScatteredSnowShowers = @"Desc Scattered Snow Showers";

NSString* const kWeatherPartlyCloudy = @"Desc Partly Cloudy";

NSString* const kWeatherThundershowers = @"Desc Thundershowers";
NSString* const kWeatherSnowShowers = @"Desc Snow Showers";

NSString* const kWeatherIsolatedThundershowers = @"Desc Isolated Thundershowers";




//
//NSString* const kWeatherClear = @"Clear";
//NSString* const kWeatherCloudy = @"Cloudy";
//NSString* const kWeatherFog = @"Fog";
//NSString* const kWeatherHaze = @"Haze";
//NSString* const kWeatherLightRain = @"Light Rain";
//NSString* const kWeatherMostlyCloudy = @"Mostly Cloudy";
//NSString* const kWeatherOvercast = @"Overcast";
//NSString* const kWeatherPartlyCloudy = @"Partly Cloudy";
//NSString* const kWeatherRain = @"Rain";
//NSString* const kWeatherRainShowers = @"Rain Showers";
//NSString* const kWeatherShowers = @"Showers";
//NSString* const kWeatherThunderstorm = @"Thunderstorm";
//NSString* const kWeatherChanceOfShowers = @"Chance of Showers";
//NSString* const kWeatherChanceOfSnow = @"Chance of Snow";
//NSString* const kWeatherMostlySunny = @"Mostly Sunny";
//NSString* const kWeatherPartlySunny = @"Partly Sunny";
//NSString* const kWeatherScatteredShowers = @"Scattered Showers";
//NSString* const kWeatherSunny = @"Sunny";
//
//NSString* const kWeatherTextViewClear = @"TextView Clear";
//NSString* const kWeatherTextViewCloudy = @"TextView Cloudy";
//NSString* const kWeatherTextViewFog = @"TextView Fog";
//NSString* const kWeatherTextViewHaze = @"TextView Haze";
//NSString* const kWeatherTextViewLightRain = @"TextView Light Rain";
//NSString* const kWeatherTextViewMostlyCloudy = @"TextView Mostly Cloudy";
//NSString* const kWeatherTextViewOvercast = @"TextView Overcast";
//NSString* const kWeatherTextViewPartlyCloudy = @"TextView Partly Cloudy";
//NSString* const kWeatherTextViewRain = @"TextView Rain";
//NSString* const kWeatherTextViewRainShowers = @"TextView Rain Showers";
//NSString* const kWeatherTextViewShowers = @"TextView Showers";
//NSString* const kWeatherTextViewThunderstorm = @"TextView Thunderstorm";
//NSString* const kWeatherTextViewChanceOfShowers = @"TextView Chance of Showers";
//NSString* const kWeatherTextViewChanceOfSnow = @"TextView Chance of Snow";
//NSString* const kWeatherTextViewMostlySunny = @"TextView Mostly Sunny";
//NSString* const kWeatherTextViewPartlySunny = @"TextView Partly Sunny";
//NSString* const kWeatherTextViewScatteredShowers = @"TextView Scattered Showers";
//NSString* const kWeatherTextViewSunny = @"TextView Sunny";


@end
