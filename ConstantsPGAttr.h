//
//  ConstantsPGAttr.h
//  PocketDraft
//
//  Created by westbugs on 10-08-28.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsPGAttr : NSObject {

}

extern NSString* const kAttrTitleText;

extern NSString* const kAttrTitle4;

extern NSString* const kAttrLvText;


#pragma mark TAG
typedef enum{
kAttrViewTotal = 22, //was 20

kAttrView = 0,
kAttrIconImage = 1,
kAttrWeekLabel = 2,
kAttrTimeLabel = 3,
kAttrUpLeftArrowButton = 4,
kAttrStatusButton = 5,

kAttrUpRightArrowButton = 6,
kAttrUpLvLabel = 7,
kAttrUpLvBar = 8,
kAttrMidLvLabel = 9,
kAttrMidLvBar = 10,
kAttrBottomLvLabel = 11,
kAttrBottomLvBar = 12,

kAttrBottmLeftArrowButton = 13,
kAttrGenreLabel = 14,
kAttrBottomRightArrowButton = 15,
kAttrMessageLabel = 16,
kAttrHintLabel = 17,
	
kAttrTopTitleLabel = 18,
kAttrMidTitleLabel = 19,
kAttrLowTitleLabel = 20,

kAttrSceneBackground = 21,	
kAttrViewHelp = 22,	

//Time
	kDefaultWDTag = 2,
	kDefaultTimeTag = 3,
	
	kAttrViewTitleButton = 300,

	kAttrGKButton = 400,
	
	kAttrViewTitle = 500,

	kAttrLoveTitleLabel = 511,
	kAttrLoveLvLabel = 512,
	kAttrLoveLvBar = 513,

}kPGAttr;
/*
extern int const kAttrViewTotal;

extern int const kAttrView;
extern int const kAttrIconImage;
extern int const kAttrWeekLabel;
extern int const kAttrTimeLabel;
extern int const kAttrUpLeftArrowButton;
extern int const kAttrStatusButton;

extern int const kAttrUpRightArrowButton;
extern int const kAttrUpLvLabel;
extern int const kAttrUpLvBar;
extern int const kAttrMidLvLabel;
extern int const kAttrMidLvBar;
extern int const kAttrBottomLvLabel;
extern int const kAttrBottomLvBar;

extern int const kAttrBottmLeftArrowButton;
extern int const kAttrGenreLabel;
extern int const kAttrBottomRightArrowButton;
extern int const kAttrMessageLabel;
extern int const kAttrHintLabel;
*/
@end
