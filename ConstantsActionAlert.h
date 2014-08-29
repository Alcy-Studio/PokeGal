//
//  ConstantsActionAlert.h
//  frdfrd
//
//  Created by westbugs on 11-01-24.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsActionAlert : NSObject 


extern NSString* const kTmpActionAlert;


//TimeDiv
enum {
	kTmpActionAlertReset = 0,
	kAlertViewPGPlaceDisplayAtDeduction = 1,
	kAlertViewPGArrangeDisplayAtDeduction = 2,
	
};


@end
