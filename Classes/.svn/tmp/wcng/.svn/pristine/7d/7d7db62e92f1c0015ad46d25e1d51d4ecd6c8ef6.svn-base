//
//  Setting+Application.m
//  PocketDraft
//
//  Created by westbugs on 10-08-26.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Setting+Application.h"
#import "ConstantsSettingApplication.h"
#import "ConstantsSeason.h"
#include <stdlib.h>

#import "ConstantsHoroscope.h"

@interface Setting ()
-(void)extensionSetBirthDate;
-(void)extensionSetBirthday;

@end

@implementation Setting(Application)

#pragma mark loadAppSetting
- (void)loadAppSetting{
	//NSLog(@"Setting+Application loadAppSetting");
	self.girlName = kGirlName;
	[self extensionSetBirthDate];
	[self extensionSetBirthday];
	
	self.horoscope = kDefaultHoroscope;
	self.totalAchi = kTotalAchi;
	self.totalAchiPages = kTotalAchi / kIconsPerPage;
	
}
#pragma mark Extensions 
- (void)extensionSetBirthDate{
	NSDate *d = [[NSDate alloc] initWithString:kBirthDate];
	self.birthDate = d;
	[d release];
}

-(void)extensionSetBirthday{
	NSDateFormatter *df = [[NSDateFormatter alloc]init];
	self.birthday = [df stringFromDate:self.birthDate];
	[df release];
}
#pragma mark Retrieve Dynamic Variable
-(NSUInteger)season{
	//NSLog(@"Get current Season");
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	NSCalendar *calendar= [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	NSCalendarUnit unitFlags = NSMonthCalendarUnit | NSDayCalendarUnit;
	NSDate *date = [NSDate date];
	NSDateComponents *dateComponents = [calendar components:unitFlags fromDate:date];
	[calendar release];
	// Turn the date into Integers
	NSInteger month = [dateComponents month];
	NSInteger day = [dateComponents day];
	[pool release];
	

	switch (month) {
		case kJanuary:
			return kWinter;
			break;
		case kFebruary:
			if (day < kSpringBegin) {
				return kWinter;
			}
			return kSpring;
			break;
		case kMarch:
			return kSpring;
			break;
		case kApril:
			return kSpring;
			break;
		case kMay:
			if (day < kSummerBegin) {
				return kSpring;
			}
			return kSummer;
			break;
		case kJune:
			return kSummer;
			break;
		case kJuly:
			return kSummer;
			break;
		case kAugust:
			if (day < kAutumnBegin) {
				return kSummer;
			}
			return kSummer;
			break;
		case kSeptember:
			return kAutumn;
			break;
		case kOctober:
			return kAutumn;
			break;
		case kNovember:
			if (day < kWinterBegin) {
				return kAutumn;
			}
			return kWinter;
			break;
		case kDecember:
			return kWinter;
			break;
		default:
			NSLog(@"Failed to determine season");
			return kNullSeason;
			break;
	}
	
}


+(BOOL)dayNight{
	//NSLog(@"Get current dayNight");
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	NSCalendar *calendar= [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	NSCalendarUnit unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
	NSDate *date = [NSDate date];
	NSDateComponents *dateComponents = [calendar components:unitFlags fromDate:date];
	
	// Turn the date into Integers
	NSInteger hour = [dateComponents hour];
	[calendar release];
	[pool release];
	
	if (hour < kDawn || hour >= kEvening) {
		return NO; //Night
	}
		return YES; //Day

}

-(NSDate*)currentDate{
	return [NSDate date];
}
-(NSString*)currentDateWithFormat{
	//NSLog(@"Get current dateWithFormat");
	NSDateFormatter *df = [[NSDateFormatter alloc]init];
	NSString* s = [df stringFromDate:[NSDate date]];
	[df release];
	return s;
}
+(NSUInteger)currentSecond{
	//NSLog(@"Get current Second");
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	NSCalendar *calendar= [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	NSCalendarUnit unitFlags = NSSecondCalendarUnit;
	NSDate *date = [NSDate date];
	NSDateComponents *dateComponents = [calendar components:unitFlags fromDate:date];
	
	NSUInteger second = [dateComponents second];
	[calendar release];
	[pool release];
	return second;
}
+(NSUInteger)currentMinute{
	//NSLog(@"Get current Minute");
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	NSCalendar *calendar= [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	NSCalendarUnit unitFlags = NSMinuteCalendarUnit;
	NSDate *date = [NSDate date];
	NSDateComponents *dateComponents = [calendar components:unitFlags fromDate:date];
	
	NSInteger minute = [dateComponents minute];
	[calendar release];
	[pool release];
	return minute;
}
+(NSUInteger)currentHour{
	//NSLog(@"Get current Hour");
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	NSCalendar *calendar= [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	NSCalendarUnit unitFlags = NSHourCalendarUnit;
	NSDate *date = [NSDate date];
	NSDateComponents *dateComponents = [calendar components:unitFlags fromDate:date];
	
	NSUInteger hour = [dateComponents hour];
	[calendar release];
	[pool release];
	return hour;
}
-(NSUInteger)currentDay{
	//NSLog(@"Get current Day");
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	NSCalendar *calendar= [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	NSCalendarUnit unitFlags = NSDayCalendarUnit;
	NSDate *date = [NSDate date];
	NSDateComponents *dateComponents = [calendar components:unitFlags fromDate:date];
	
	NSInteger day = [dateComponents day];
	[calendar release];
	[pool release];
	return day;
}
+(NSUInteger)currentWeekDay{
	//NSLog(@"Get current Week day");
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	NSCalendar *calendar= [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	NSCalendarUnit unitFlags = NSWeekdayCalendarUnit;
	NSDate *date = [NSDate date];
	NSDateComponents *dateComponents = [calendar components:unitFlags fromDate:date];
	
	NSUInteger weekday = [dateComponents weekday];
	[calendar release];
	[pool release];
	return weekday;
}
-(NSUInteger)currentWeek{
	//NSLog(@"Get current Week");

	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	NSCalendar *calendar= [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	NSCalendarUnit unitFlags = NSWeekCalendarUnit;
	NSDate *date = [NSDate date];
	NSDateComponents *dateComponents = [calendar components:unitFlags fromDate:date];
	
	NSInteger week = [dateComponents week];
	[calendar release];
	[pool release];
	return week;
}
-(NSUInteger)currentMonth{
	//NSLog(@"Get current Month");
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	NSCalendar *calendar= [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	NSCalendarUnit unitFlags = NSMonthCalendarUnit;
	NSDate *date = [NSDate date];
	NSDateComponents *dateComponents = [calendar components:unitFlags fromDate:date];
	
	NSInteger month = [dateComponents month];
	[calendar release];
	[pool release];
	return month;
}
-(NSUInteger)currentYear{
	//NSLog(@"Get Current Year");
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	NSCalendar *calendar= [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	NSCalendarUnit unitFlags = NSYearCalendarUnit;
	NSDate *date = [NSDate date];
	NSDateComponents *dateComponents = [calendar components:unitFlags fromDate:date];
	
	NSInteger year = [dateComponents year];
	[calendar release];
	[pool release];
	return year;
}

+(NSString*)formatCurrentTime{

	//NSLog(@"Get current Format Time");
	
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	[formatter setDateFormat:@"HH:mm"];
	
	NSDate *now = [NSDate date];
	NSString* s = [formatter stringFromDate:now];
	[formatter release];
	return s;
	
}
+(NSString*)formatCurrentWeekDay{
	//NSLog(@"Get current Format Weekday");
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	NSCalendar *calendar= [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	NSCalendarUnit unitFlags = NSWeekdayCalendarUnit;
	NSDate *date = [NSDate date];
	NSDateComponents *dateComponents = [calendar components:unitFlags fromDate:date];
	
	NSUInteger weekday = [dateComponents weekday];
	[calendar release];
	[pool release];
	
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	[formatter setWeekdaySymbols:[NSArray arrayWithObjects:@"Nil", @"Sun", @"Mon",
								  @"Tue", @"Wed", @"Thu", @"Fri", @"Sat", nil]];
	
	NSString* s = [[formatter weekdaySymbols] objectAtIndex:weekday];
	[formatter release];
	return s;
}


-(NSUInteger)girlMood{
	NSLog(@"Get girl Mood");
	return 1 + arc4random() % 3;
}

@end
