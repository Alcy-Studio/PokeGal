//
//  ConstantsPGSchedule.h
//  frdfrd
//
//  Created by westbugs on 10-12-26.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsPGSchedule : NSObject {

}

extern NSString* const kScheduleTitleText;

#pragma mark TAG
typedef enum{
	kScheduleViewTotal = 18,
	
	kScheduleView = 0,
	kScheduleBackButton = 1,
	kScheduleAtPointLabel = 2,
	kScheduleHintLabel = 3,
	
	kScheduleTime10To11Button = 4,
	kScheduleTime11To12Button = 5,
	kScheduleTime12To13Button = 6,
	kScheduleTime13To14Button = 7,
	kScheduleTime14To15Button = 8,
	
	kScheduleTime15To16Button = 9,
	kScheduleTime16To17Button = 10,
	kScheduleTime17To18Button = 11,
	kScheduleTime18To19Button = 12,
	kScheduleTime19To20Button = 13,
	
	kScheduleTime20To21Button = 14,
	kScheduleTime21To22Button = 15,
	kScheduleTime22To23Button = 16,
	kScheduleTime23To24Button = 17,
	
	kScheduleViewHelp = 18,

	kScheduleViewTitleButton = 300,

	kScheduleViewTitle = 500,

	
}kPGSchedule;

@end
