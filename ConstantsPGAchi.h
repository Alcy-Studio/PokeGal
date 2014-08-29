//
//  ConstantsPGAchi.h
//  PocketDraft
//
//  Created by westbugs on 10-08-28.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsPGAchi : NSObject {

}

extern NSString* const kAchiTitleText;
extern NSString* const kAchiTopLeftLabelText;

#pragma mark TAG

typedef enum{
	kAchiViewTotal = 21,
	
	kAchiView = 0,
	kAchiIconImage = 1,
	kAchiGiftPointLabel = 2,
	kAchiUpLeftArrowButton = 3,
	kAchiNicknameLabel = 4,
	kAchiUpRightArrowButton = 5,
	
	kAchiGiftUpLeftButton = 6,
	kAchiGiftUpMidButton = 7,
	kAchiGiftUpRightButton = 8,
	kAchiGiftMidLeftButton = 9,
	kAchiGiftMidMidButton = 10,
	kAchiGiftMidRightButton = 11,
	kAchiGiftBottomLeftButton = 12,
	
	kAchiGiftBottomMidButton = 13,
	kAchiGiftBottomRightButton = 14,
	kAchiBottomLeftArrowButton = 15,
	kAchiPageLabel = 16,
	kAchiBottomRightArrowButton = 17,
	kAchiMessageLabel = 18,
	kAchiHintLabel = 19,
	kAchiSceneBackground = 20,
	kAchiViewHelp = 21,

	kAchiViewTitleButton = 300,
	
	kAchiGKButton = 400,
	
	kAchiViewTitle = 500,
	kAchiTopLeftLabel = 501,
	
}kPGAchi;
/*
extern int const kAchiViewTotal;

extern int const kAchiView;
extern int const kAchiIconImage;
extern int const kAchiGiftPointLabel;
extern int const kAchiUpLeftArrowButton;
extern int const kAchiNicknameLabel;
extern int const kAchiUpRightArrowButton;

extern int const kAchiGiftUpLeftButton;
extern int const kAchiGiftUpMidButton;
extern int const kAchiGiftUpRightButton;
extern int const kAchiGiftMidLeftButton;
extern int const kAchiGiftMidMidButton;
extern int const kAchiGiftMidRightButton;
extern int const kAchiGiftBottomLeftButton;

extern int const kAchiGiftBottomMidButton;
extern int const kAchiGiftBottomRightButton;
extern int const kAchiBottomLeftArrowButton;
extern int const kAchiPageLabel;
extern int const kAchiBottomRightArrowButton;
extern int const kAchiMessageLabel;
extern int const kAchiHintLabel;
*/
@end
