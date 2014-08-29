//
//  ConstantsActionDeduction.h
//  frdfrd
//
//  Created by westbugs on 11-01-25.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsActionDeduction : NSObject

//Action Deduction
enum {
	kAtDeductCall = 2,
	kAtDeductSms = 1,
	kAtDeductMove = 3,
	
	kAtDeductTalk = 1,
	kAtDeductLook = 2,

	kAtDeductChat = 1,
	kAtDeductRomance = 2,


	
};
@end
