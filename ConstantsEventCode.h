//
//  ConstantsEventCode.h
//  PocketDraft
//
//  Created by westbugs on 10-09-16.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsEventCode : NSObject

typedef enum {
	//Manual
	kEventCodeNil = 0,
	kEventCodeTouchDown = 1,
	kEventCodeTouchDownRepeat = 2,
	kEventCodeTouchDragInside = 3,
	kEventCodeTouchDragOutside = 4,
	kEventCodeTouchDragEnter = 5,
	kEventCodeTouchDragExit = 6,
	kEventCodeTouchUpInside = 7,
	kEventCodeTouchUpOutside = 8,
	kEventCodeTouchCancel = 9,
	
	kEventCodeValueChanged = 10,
	
	kEventCodeEditingDidBegin = 11,
	kEventCodeEditingChanged = 12,
	kEventCodeEditingDidEnd = 13,
	kEventCodeEditingDidEndOnExit = 14,
	
	kEventCodeAllTouchEvents = 15,
	kEventCodeAllEditingEvents = 16,
	kEventCodeAllApplicationReserved = 17,
	kEventCodeAllSystemReserved = 18,
	kEventCodeAllEvents = 19,
	
	//Auto
	//Time = input to model, ViewLoad = retrieve from model
	//Time won't display , and View should separate
	kEventCodeAutoSetup = 31,
	kEventCodeAutoRefresh = 32,
	kEventCodeAutoDate = 33,
	kEventCodeAutoCalendar = 34,
	kEventCodeAutoAppointment = 35,
	kEventCodeAutoMood = 36,
	kEventCodeAutoRandom = 37,
	kEventCodeAutoViews = 38,
	
	//TableView
	kEventCodeTableSelect = 51,


}kEventCode;

@end
