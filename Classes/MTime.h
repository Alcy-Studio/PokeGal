//
//  MTime.h
//  frdfrd
//
//  Created by westbugs on 11-02-09.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import "Method.h"

@interface MTime : Method

+(NSString*)getCurrentTime;
+(NSString*)getCurrentWeekday;

+(NSUInteger)getSeason;
+(NSUInteger)getDayNight;

-(BOOL)showTimeWithTag:(NSUInteger)t;
-(void)showWeekdayWithTag:(NSUInteger)t;

-(void)PGAttrShowTimeDate;


-(void)invalidateTimer;

@end
