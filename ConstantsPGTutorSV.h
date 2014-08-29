//
//  ConstantsPGTutorSV.h
//  frdfrd
//
//  Created by westbugs on 11-04-22.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsPGTutorSV : NSObject {

}
extern NSString* const kTutorHelpTitleText;

typedef enum{
	kTutorSVViewTotal = 2,
	
	kTutorSVView = 0,
	kTutorSVBack = 1,
	kTutorSVHint = 2,
	kTutorSVTitle = 3,
	
	kTutorSVTitleButton = 300,

}kPGTutorSV;

@end
