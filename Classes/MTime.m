//
//  MTime.m
//  frdfrd
//
//  Created by westbugs on 11-02-09.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "MTime.h"

#import "Setting+Application.h"

#import "ConstantsPGAttr.h"

//View Controller
#import "PGNavController.h"

#import "PGMainSVController.h"
#import "PGMainViewController.h"
#import "PGAttrViewController.h"

#import "PGArrangeViewController.h"

//#import "ConstantsSeason.h"
#import "ConstantsDayNight.h"
#import "ConstantsStringFormat.h"

static const int kPageSV0 = 0;
static const int kPageSV1 = 1;
static const int kPageSV2 = 2;


@implementation MTime

+(NSString*)getCurrentTime{
	NSDateFormatter* df = [[NSDateFormatter alloc] init];
	
	[df setDateFormat:kDateFormat11]; //"HH:mm"
	
	NSString* s = [df stringFromDate:[NSDate date]] ;
	[df release];
	
	return s;
}
+(NSString*)getCurrentWeekday{
	
	return [Setting formatCurrentWeekDay];
}

+(NSUInteger)getSeason{
	NSDateFormatter* df = [[NSDateFormatter alloc] init];
	
	[df setDateFormat:kDateFormat8]; //Quarter "Q"
	
	NSUInteger i = [[df stringFromDate:[NSDate date]] intValue];
	
	[df release];
	
	
//  kSpring
//	kSummer
//	kAutumn
//	kWinter
	return i;
}
+(NSUInteger)getDayNight{
	
	NSDateFormatter* df = [[NSDateFormatter alloc] init];
	
	[df setDateFormat:kDateFormat9]; //Time: "H"
	
	NSUInteger i = [[df stringFromDate:[NSDate date]] intValue];
	
	[df release];
	
	if (i >= kMorning && i < kEvening) {
		return kDay;
	}
	return kNight;
}

-(BOOL)showTimeWithTag:(NSUInteger)t{
	
	
	NSString* s = [[NSString alloc]initWithFormat:@"%@", [Setting formatCurrentTime]];
	[(UILabel*)[[self.resource view] viewWithTag:t] setText:s];
	[s release];
	
	if ([Setting currentHour] == 0) {
		if ([Setting currentMinute] == 0) {
			if ([Setting currentSecond] == 0) {
				return YES;
			}
		}
	} 
	return NO;
	
}

-(void)showWeekdayWithTag:(NSUInteger)t{
	[(UILabel*)[[self.resource view] viewWithTag:t] 
	 setText:NSLocalizedString([Setting formatCurrentWeekDay],  @"Localized")];
	
}

-(void)PGAttrShowTimeDate{
	
	if ([self showTimeWithTag:kAttrTimeLabel]) 
		[self showWeekdayWithTag:kAttrWeekLabel];
}

-(void)invalidateTimer{
	PGNavController *nc = (PGNavController*)[[[UIApplication sharedApplication] keyWindow] rootViewController];
	
	if ([[nc topViewController] isKindOfClass:[PGMainSVController class]]) {
		
		
		PGMainViewController* main1 = 
		(PGMainViewController*)[[(PGMainSVController*)[nc topViewController] viewControllers] 
								objectAtIndex:kPageSV1];
		[main1.timer invalidate];
		PGAttrViewController* main2 = 
		(PGAttrViewController*)[[(PGMainSVController*)[nc topViewController] viewControllers] 
															  objectAtIndex:kPageSV2];
		[main2.timer invalidate];

	}
}
@end
