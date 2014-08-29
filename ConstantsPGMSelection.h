//
//  ConstantsPGMSelection.h
//  frdfrd
//
//  Created by westbugs on 10-12-27.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsPGMSelection : NSObject {
	
}

extern NSString* const kSelectionTitleText;

#pragma mark TAG
typedef enum{
	kSelectionViewTotal = 10,
	
	kSelectionView = 0,
	kSelectionAtPointLabel = 1,
	kSelectionTextView = 2,
	kSelectionChoice1Button = 3,
	kSelectionChoice2Button = 4,
	kSelectionChoice3Button = 3,

	kSelectionHintLabel = 6,
	kSelectionTitleLabel = 7,
	
	kSelectionChoice1Label = 8,
	kSelectionChoice2Label = 9,
	kSelectionChoice3Label = 10,

	kSelectionViewTitle = 500,

	
}kPGMSelection;


@end
