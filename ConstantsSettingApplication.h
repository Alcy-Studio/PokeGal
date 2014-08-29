//
//  ConstantsSettingApplication.h
//  PocketDraft
//
//  Created by westbugs on 10-09-05.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ConstantsSettingApplication : NSObject 

extern NSString* const kGirlName;
extern NSString* const kBirthDate;

enum {
	kDefaultHoroscope = 10,
	kTotalAchi = 81,
	kTotalAchiPages = 9,
	kIconsPerPage = 9,
	kDawn = 6,
	kEvening = 6,
	
	//AT
	
	//AT Deduction
//	kAtDeductionCall = 3,
//	kAtDeductionSms = 1,
//	kAtDeductionMove = 2,
//		
//	kAtDeductionTalk = 2,
//	kAtDeductionRomance = 3,
//	kAtDeductionLeave = 1,
};

@end