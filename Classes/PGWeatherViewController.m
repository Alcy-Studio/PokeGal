//
//  PGWeatherViewController.m
//  WeatherDemo
//
//  Created by shinren.pan@gmail.com on 2010/12/14.
//  Copyright 2010 http://coding-in.blogspot.com . All rights reserved.
//

#import "PGWeatherViewController.h"

#import "PGWeatherViewController+Auto.h"

#import "ConstantsPGWeatherEx.h"
#import "ConstantsPGWeather.h"

//#define kArrangeViewSvHeight 815

static const int kWeatherScrollViewHeight = 480;

@implementation PGWeatherViewController
@synthesize theWeather;
@synthesize geoCode;

- (IBAction)refreshWeather:(id)sender
{
	[theWeather updateWeather];
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];

	[sv setContentSize:CGSizeMake(sv.frame.size.width,kWeatherScrollViewHeight)];

	
	[self autoSetup];

	WeatherObject *_theWeather = [[WeatherObject alloc]init];
	[_theWeather setDelegate:self];
	self.theWeather = _theWeather;
	[_theWeather release];
	[actView startAnimating];
	[theWeather updateWeather];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
	if ((interfaceOrientation == UIInterfaceOrientationPortrait) || (interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown))
		return YES;
	return NO;
}

-(void)getWeatherFinish
{
	
	NSLog(@"目前天氣資料:%@",[theWeather current_Weatherdata]);//目前天氣資料
	NSLog(@"今天天氣資料:%@",[theWeather today_Weatherdata]);//今天天氣資料
	NSLog(@"明天天氣資料:%@",[theWeather tomorrow_Weatherdata]);//明天天氣資料
	NSLog(@"日出日落時間:%@",[theWeather sunriseAndsunset]);//日出日落時間
	NSLog(@"所在位置資訊:%@",[theWeather location_Data]);//所在位置資訊
	
	
	[actView stopAnimating];
	//nav.title = [theWeather.location_Data objectForKey:@"name"];

	
	NSDateFormatter *format = [[NSDateFormatter alloc]init];
	NSLocale *locale = [[NSLocale alloc]initWithLocaleIdentifier:@"en_US_POSIX"];
	[format setLocale:locale];
	[locale release];
	[format setDateFormat:@"hh:mm a"];
	
	//取得日出日落時間
	NSDate *sunRise  = [format dateFromString:[theWeather.sunriseAndsunset objectForKey:@"sunrise"]];
	NSDate *sunSet	 = [format dateFromString:[theWeather.sunriseAndsunset objectForKey:@"sunset"]];
	
	//取日出日落小時, 不取到分鐘
	[format setDateFormat:@"HH"];
	int sunrise = [[format stringFromDate:sunRise]intValue];
	int sunset = [[format stringFromDate:sunSet]intValue];
	int nowtime = [[format stringFromDate:[NSDate date]]intValue];
	[format release];
	
	//code for weather picture
	int code = [[theWeather.current_Weatherdata objectForKey:@"code"]intValue];
	//int code2 = [[theWeather.today_Weatherdata objectForKey:@"code"]intValue];
//	int code3 = [[theWeather.tomorrow_Weatherdata objectForKey:@"code"]intValue];
//	
	//日出 - 目前時間 - 日落 = 取白天的pic
	//只處理當前的日出or日落的圖片, 今天整天跟明天都用白天的圖片
	if(nowtime >= sunrise && nowtime <= sunset)
	{
		UIImage *image = [[UIImage alloc] initWithData:[NSData dataWithContentsOfURL:
														[NSURL URLWithString:[NSString stringWithFormat:@"http://l.yimg.com/a/i/us/nws/weather/gr/%dd.png",code]]]];
		[current_Image setImage:image];
		[image release];
	}
	else//取日落後的pic
	{
		UIImage *image = [[UIImage alloc] initWithData:[NSData dataWithContentsOfURL:
														[NSURL URLWithString:[NSString stringWithFormat:@"http://l.yimg.com/a/i/us/nws/weather/gr/%dn.png",code]]]];
		[current_Image setImage:image];
		[image release];
	}

	current_Date.text = [NSString stringWithFormat:@"%@°",[theWeather.today_Weatherdata objectForKey:@"high"]];
	current_Temp.text = [NSString stringWithFormat:@"%@°",[theWeather.current_Weatherdata objectForKey:@"temp"]];
	current_Text.text = [NSString stringWithFormat:@"%@°",[theWeather.today_Weatherdata objectForKey:@"low"]];
	
	[(UILabel*)[self.view viewWithTag:kWeatherViewCity] setText:[theWeather.location_Data objectForKey:@"name"]];
	//NSLog(@"Desc: %@", theWeather.current_Weatherdata);
	[(UILabel*)[self.view viewWithTag:kWeatherViewConditionLabel] 
	 setText:NSLocalizedString([theWeather.current_Weatherdata objectForKey:@"text"], @"Localized")];

	
	self.geoCode = [[theWeather.current_Weatherdata objectForKey:@"code"] integerValue];
	
	//[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherTornado, @"Localized")];

	[self showTextView:self.geoCode];
	
	//Enable desc label
	[(UILabel*)[[(PGWeatherViewController*)self view] viewWithTag:kWeatherViewTopLabel] 
	 setHidden:NO];
	
	[(UILabel*)[[(PGWeatherViewController*)self view] viewWithTag:kWeatherViewMidLabel] 
	 setHidden:NO];
	
	[(UILabel*)[[(PGWeatherViewController*)self view] viewWithTag:kWeatherViewLowLabel] 
	 setHidden:NO];
	
	
	//NSLog(@"Code: %i", i);
	//UIImage *image2 = [[UIImage alloc] initWithData:[NSData dataWithContentsOfURL:
//													 [NSURL URLWithString:[NSString stringWithFormat:@"http://l.yimg.com/a/i/us/nws/weather/gr/%dd.png",code2]]]];
//	[today_Image setImage:image2];
//	today_Date.text = [NSString stringWithFormat:@"%@",[theWeather.today_Weatherdata objectForKey:@"date"]];
//	today_Temp.text = [NSString stringWithFormat:@"H: %@°  L: %@°",[theWeather.today_Weatherdata objectForKey:@"high"],[theWeather.today_Weatherdata objectForKey:@"low"]];
//	today_Text.text = [NSString stringWithFormat:@"%@",[theWeather.today_Weatherdata objectForKey:@"text"]];
//	[image2 release];
//	
//	UIImage *image3 = [[UIImage alloc] initWithData:[NSData dataWithContentsOfURL:
//													 [NSURL URLWithString:[NSString stringWithFormat:@"http://l.yimg.com/a/i/us/nws/weather/gr/%dd.png",code3]]]];
//	[tomorrow_Image setImage:image3];
//	tomorrow_Date.text = [NSString stringWithFormat:@"%@",[theWeather.tomorrow_Weatherdata objectForKey:@"date"]];
//	tomorrow_Temp.text = [NSString stringWithFormat:@"H: %@°  L: %@°",[theWeather.tomorrow_Weatherdata objectForKey:@"high"],[theWeather.tomorrow_Weatherdata objectForKey:@"low"]];
//	tomorrow_Text.text = [NSString stringWithFormat:@"%@",[theWeather.tomorrow_Weatherdata objectForKey:@"text"]];
//	[image3 release];
}
-(void)getWeatherError
{
	NSLog(@"錯誤發生");
}
- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[theWeather release];
    [super dealloc];
}

-(void)showTextView:(NSInteger)i{
	
	if (i == kWeatherCondition0) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherTornado, @"Localized")];
	} else if (i == kWeatherCondition1) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherTropicalStorm, @"Localized")];
	} else if (i == kWeatherCondition2) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherHurricane, @"Localized")];
	} else if (i == kWeatherCondition3) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherSevereThunderstorms, @"Localized")];
	} else if (i == kWeatherCondition4) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherThunderstorms, @"Localized")];
	}
	
	else if (i == kWeatherCondition5) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherMixedRainAndSnow, @"Localized")];
	} else if (i == kWeatherCondition6) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherMixedRainAndSleet, @"Localized")];
	} else if (i == kWeatherCondition7) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherMixedSnowAndSleet, @"Localized")];
	} else if (i == kWeatherCondition8) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherFreezingDrizzle, @"Localized")];
	} else if (i == kWeatherCondition9) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherDrizzle, @"Localized")];
	}
	
	else if (i == kWeatherCondition10) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherFreezingRain, @"Localized")];
	} else if (i == kWeatherCondition11) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherShowers, @"Localized")];
	} else if (i == kWeatherCondition12) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherShowers, @"Localized")];
	} else if (i == kWeatherCondition13) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherSnowFlurries, @"Localized")];
	} else if (i == kWeatherCondition14) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherLightSnowShowers, @"Localized")];
	} else if (i == kWeatherCondition15) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherBlowingSnow, @"Localized")];
	}
	
	else if (i == kWeatherCondition16) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherSnow, @"Localized")];
	} else if (i == kWeatherCondition17) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherHail, @"Localized")];
	} else if (i == kWeatherCondition18) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherSleet, @"Localized")];
	} else if (i == kWeatherCondition19) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherDust, @"Localized")];
	} else if (i == kWeatherCondition20) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherFoggy, @"Localized")];
	}
	
	else if (i == kWeatherCondition21) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherHaze, @"Localized")];
	} else if (i == kWeatherCondition22) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherSmoky, @"Localized")];
	} else if (i == kWeatherCondition23) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherBlustery, @"Localized")];
	} else if (i == kWeatherCondition24) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherWindy, @"Localized")];
	} else if (i == kWeatherCondition25) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherCold, @"Localized")];
	}
	
	else if (i == kWeatherCondition26) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherCloudy, @"Localized")];
	} else if (i == kWeatherCondition27) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherMostlyCloudyNight, @"Localized")];
	} else if (i == kWeatherCondition28) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherMostlyCloudyDay, @"Localized")];
	} else if (i == kWeatherCondition29) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherPartlyCloudyNight, @"Localized")];
	} else if (i == kWeatherCondition30) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherPartlyCloudyDay, @"Localized")];
	}
	
	else if (i == kWeatherCondition31) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherClearNight, @"Localized")];
	} else if (i == kWeatherCondition32) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherSunny, @"Localized")];
	} else if (i == kWeatherCondition33) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherFairNight, @"Localized")];
	} else if (i == kWeatherCondition34) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherFairDay, @"Localized")];
	} else if (i == kWeatherCondition35) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherMixedRainAndHail, @"Localized")];
	}
	
	else if (i == kWeatherCondition36) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherHot, @"Localized")];
	} else if (i == kWeatherCondition37) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherIsolatedThunderstorms, @"Localized")];
	} else if (i == kWeatherCondition38) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherScatteredThunderstorms, @"Localized")];
	} else if (i == kWeatherCondition39) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherScatteredThunderstorms, @"Localized")];
	} else if (i == kWeatherCondition40) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherScatteredShowers, @"Localized")];
	} else if (i == kWeatherCondition41) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherHeavySnow, @"Localized")];
	}
	
	else if (i == kWeatherCondition42) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherScatteredSnowShowers, @"Localized")];
	} else if (i == kWeatherCondition43) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherHeavySnow, @"Localized")];
	} else if (i == kWeatherCondition44) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherPartlyCloudy, @"Localized")];
	} else if (i == kWeatherCondition45) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherThundershowers, @"Localized")];
	} else if (i == kWeatherCondition46) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherSnowShowers, @"Localized")];
	} else if (i == kWeatherCondition47) {
		[(UILabel*)[self.view viewWithTag:kWeatherViewTextView] setText:NSLocalizedString(kWeatherIsolatedThundershowers, @"Localized")];
	}
}


@end
