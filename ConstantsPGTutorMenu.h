//
//  ConstantsPGTutorMenu.h
//  frdfrd
//
//  Created by westbugs on 11-04-24.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsPGTutorMenu : NSObject {

}

extern NSString* const kTutorMenuTitleText;

typedef enum{
	kTutorMenuViewTotal = 14,
	
	kTutorMenuView = 0,
	kTutorMenuBack = 1,
	kTutorMenuHint = 2,
	
	kTutorMenuScene1 = 3,
	kTutorMenuScene2 = 4,
	kTutorMenuScene3 = 5,
	kTutorMenuScene4 = 6,
	kTutorMenuScene5 = 7,
	kTutorMenuScene6 = 8,
	kTutorMenuScene7 = 9,
	kTutorMenuScene8 = 10,
	kTutorMenuScene9 = 11,
	kTutorMenuScene10 = 12,
	kTutorMenuScene11 = 13,
	kTutorMenuScene12 = 14,

	kTutorMenuViewTitle = 500,

	
}kPGTutorMenu;

@end
