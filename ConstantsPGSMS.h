//
//  ConstantsPGSMS.h
//  frdfrd
//
//  Created by westbugs on 10-12-27.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsPGSMS : NSObject {

}

extern NSString* const kSMSTitleText;
extern NSString* const kSMSTopLeftLabelText;

#pragma mark TAG
typedef enum{
	kSMSViewTotal = 6,
	
	kSMSView = 0,
	kSMSBackButton = 1,
	kSMSAtPointLabel = 2,
	kSMSTextView = 3,
	kSMSTableView = 3,

	kSMSHintLabel = 4,
	
	kSMSSendButton = 5,
	
	kSMSViewHelp = 6,

	kSMSViewTitleButton = 300,

	kSMSViewTitle = 500,
	kSMSTopLeftLabel = 501,

	
}kPGSMS;


@end
