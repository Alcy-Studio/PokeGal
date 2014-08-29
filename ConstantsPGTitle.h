//
//  ConstantsPGTitle.h
//  frdfrd
//
//  Created by westbugs on 10-12-17.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsPGTitle : NSObject {
	
}

extern NSString* const kTitleBottomButtonFile;
extern NSString* const kTitleImageType;

extern NSString* const kTitleViewLinkToFull;
#pragma mark TAG
typedef enum{
	kTitleViewTotal = 4,
	
	kTitleView = 0,
	kTitleTopButton = 1,
	kTitleMidButton = 2,
	kTitleLowButton = 3,
	kTitleBottomImage = 4,
	
	kTitleBottomButton = 5,

	kTitleHeartButton = 6,

	
	
	
}kPGTitle;


@end
