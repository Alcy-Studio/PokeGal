//
//  ConstantsPGMAlert.h
//  frdfrd
//
//  Created by westbugs on 10-12-27.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsPGMAlert : NSObject {
	
}

extern NSString* const kAlertTitleText;
extern NSString* const kAlertTopLeftLabelText;

#pragma mark TAG
typedef enum{
	kAlertViewTotal = 6,
	
	kAlertView = 0,
	kAlertAtPointLabel = 1,
	kAlertTextView = 2,
	kAlertMidButton = 3,
	kAlertHintLabel = 4,
	kAlertTitleLabel = 5,

	kAlertSceneBackground = 6,

	kAlertViewTitle = 500,

	kAlertTopLeftLabel = 501,
	
}kPGMAlert;


@end
