//
//  ConstantsPGMConfirm.h
//  frdfrd
//
//  Created by westbugs on 10-12-27.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsPGMConfirm : NSObject {
	
}

extern NSString* const kConfirmTitleText;
extern NSString* const kConfirmTopLeftLabelText;

#pragma mark TAG
typedef enum{
	kConfirmViewTotal = 7,
	
	kConfirmView = 0,
	kConfirmAtPointLabel = 1,
	kConfirmTextView = 2,
	kConfirmLeftButton = 3,
	kConfirmRightButton = 4,
	kConfirmHintLabel = 5,
	kConfirmTitleLabel = 6,

	kConfirmSceneBackground = 7,	

	kConfirmViewTitle = 500,
	kConfirmTopLeftLabel = 501,

	
}kPGMConfirm;


@end
