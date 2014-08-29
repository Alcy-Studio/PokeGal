//
//  ConstantsSeason.h
//  PocketDraft
//
//  Created by westbugs on 10-09-05.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsSeason : NSObject

//Season
enum {
	kSpringMonth = 2,
	kSpringBegin = 5,
	kSummerMonth = 5,
	kSummerBegin = 7,
	kAutumnMonth = 8,
	kAutumnBegin = 9,
	kWinterMonth = 11,
	kWinterBegin = 8,
	
	kNullSeason = 0,
	kSpring = 1,
	kSummer = 2,
	kAutumn = 3,
	kWinter = 4,
};
	
enum {
	
	kJanuary = 1,
	kFebruary = 2,
	kMarch = 3,
	kApril = 4,
	kMay = 5,
	kJune = 6,
	kJuly = 7,
	kAugust = 8,
	kSeptember = 9,
	kOctober = 10,
	kNovember = 11,
	kDecember = 12,
};


@end
