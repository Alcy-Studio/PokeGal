//
//  ConstantsTmpAction.h
//  frdfrd
//
//  Created by westbugs on 11-01-27.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsTmpAction : NSObject 
	
extern NSString* const kTmpAction;

enum {
	kAtRegionA = 1,
	kAtRegionB = 2,
	kAtRegionC = 3,
	kAtRegionD = 4,
	kAtRegionE = 5,
	kAtRegionF = 6,
	kAtRegionG = 7,
	kAtRegionH = 8,
	kAtRegionI = 9,


	kAtRegionDateA = 1,
	kAtRegionDateB = 2,
	kAtRegionDateC = 3,
	kAtRegionDateD = 4,
	kAtRegionDateE = 5,
	kAtRegionDateF = 6,
	kAtRegionDateG = 7,
	kAtRegionDateH = 8,
	kAtRegionDateI = 9,

	
};

//TmpAction Value
enum {
	kTmpActionNil = 100,

	kTmpActionPGTitleNew = 41,
		
	kTmpActionReset = 0,
	kTmpActionPGMainLButton = 1,
	kTmpActionPGMainMButton = 2,
	kTmpActionPGMainRButton = 3,
	
	kTmpActionPGMainTitleButton = 300,

	
	//Map
	kTmpActionPGMapGoButton = 11,
	kTmpActionPGMapDateButton = 12,

	//Leave
	kTmpActionLeaveButton = 13,
	kTmpActionDateLeaveButton = 14,


	//Walk
	kTmpActionPGWalkLButton = 21,
	kTmpActionPGWalkMButton = 22,
	
	//Date
	kTmpActionPGDateLButton = 31,
	kTmpActionPGDateMButton = 32,
	
};
@end
