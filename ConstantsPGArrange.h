//
//  ConstantsPGArrange.h
//  frdfrd
//
//  Created by westbugs on 10-12-26.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsPGArrange : NSObject {

}

extern NSString* const kArrangeTitleText;

extern NSString* const kTmpArrange;

#pragma mark TAG
typedef enum{
	kArrangeViewTotal = 19,
	
	kArrangeView = 0,
	kArrangeBackButton = 1,
	kArrangeAtPointLabel = 2,
	kArrangeHintLabel = 3,
	
	kArrangeTime10To11Button = 4,
	kArrangeTime11To12Button = 5,
	kArrangeTime12To13Button = 6,
	kArrangeTime13To14Button = 7,
	kArrangeTime14To15Button = 8,
	
	kArrangeTime15To16Button = 9,
	kArrangeTime16To17Button = 10,
	kArrangeTime17To18Button = 11,
	kArrangeTime18To19Button = 12,
	kArrangeTime19To20Button = 13,
	
	kArrangeTime20To21Button = 14,
	kArrangeTime21To22Button = 15,
	kArrangeTime22To23Button = 16,
	kArrangeTime23To24Button = 17,
	
	kArrangeWeekLabel = 18,
	
	kArrangeViewHelp = 19,

	kArrangeViewTitleButton = 300,

	kArrangeViewTitle = 500,

	
}kPGArrange;


@end