//
//  ConstantsModelTextOut.h
//  PocketDraftCoreDataOSX
//
//  Created by westbugs on 10-09-07.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsModelTextOut : NSObject 

/*
 //Template
 typedef enum{
 kExampleNil = 0,
 }KExample;
*/


//Info
typedef enum{
	kModelTextOutInfoNil = 0,
	kModelTextOutInfoUi = 1,
	kModelTextOutInfoConversation = 2,
	kModelTextOutInfoCharacter = 3,
	kModelTextOutInfoNpc = 4,
	kModelTextOutInfoOccasion = 5,
	kModelTextOutInfoTransition = 6,
	kModelTextOutInfoEffect = 7,
	kModelTextOutInfoHint = 8,
	kModelTextOutInfoGift = 9,

}KModelTextOutInfo;

//Kind
typedef enum{
	kModelTextOutKindNil = 0,
	
}KModelTextOutKind;

@end
