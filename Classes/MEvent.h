//
//  MEvent.h
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

//#import <Foundation/Foundation.h>

//Parent Class
#import "Method.h"

//Class
#import "Event.h"

//Method
#import "MEvent.h"


@interface MEvent : Method
+(void)decrementBadge;

+(void)resetEvent;
+(void)deleteEvent:(NSString*)s;

+(BOOL)checkEventExist:(NSString*)s;
+(BOOL)checkEventExist:(NSString*)s Region:(NSString*)r;
+(BOOL)checkPresetEventExistRegion:(NSString*)r;

+(Event*)getPresetEventWithRegion:(NSString*)r timeCell:(NSString*)t weekday:(NSString*)w;

+(NSString*)setupStartDate:(NSUInteger)td;

+(NSString*)setupEndDate:(NSUInteger)td;

@end
