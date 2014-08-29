//
//  ConstantsRequirement.h
//  PocketDraft
//
//  Created by westbugs on 10-09-18.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsRequirement : NSObject 

typedef enum{
	kAudReqNil = 0,
	
	kAudReqInternet = 1,
	kAudReqNetwork = 2,
	
	kAudReqMic = 3,
	kAudReqSpeaker = 4,
	kAudReqCamera = 5,
	kAudReqNotification = 6,
	kAudReqGameCenter = 7,
	kAudReqMapLocation = 8,

	
	kAudReqAddressBook = 9,
	kAudReqCalendar = 10,
	kAudReqPhotoLib = 11,
	kAudReqMailSms = 12,
	kAudReqCellInfo = 13,
	
}kAudRequirement;


@end
