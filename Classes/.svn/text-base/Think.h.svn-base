//
//  Think.h
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Think : NSObject{
	unsigned int sceneCode;
	unsigned int tagCode;
	unsigned int eventCode;
	unsigned int roleCode;
	id resource;
	
	//Procedure
	BOOL validInCode;
	NSString* interpreterCode;
	BOOL evaluationCode;
	NSString* decisionCode;
	unsigned int constraintCode;
	id feedbackCode;
	//NSArray validOutCode
	BOOL triggerCode;


	
	
}

@property(nonatomic)unsigned int sceneCode;
@property(nonatomic)unsigned int tagCode;
@property(nonatomic)unsigned int eventCode;
@property(nonatomic)unsigned int roleCode;

@property(nonatomic, retain)id resource;

//Procedure
@property(nonatomic)BOOL validInCode;
@property(nonatomic, copy)NSString* interpreterCode;
@property(nonatomic)BOOL evaluationCode;
@property(nonatomic, copy)NSString* decisionCode;
@property(nonatomic)unsigned int constraintCode;
@property(nonatomic, copy)id feedbackCode;
//@property(nonatomic, copy)NSArray *validOutCode;
@property(nonatomic)BOOL triggerCode;



-(id)initWithScene:(unsigned int)s tag:(unsigned int)t event:(unsigned int)e;
-(id)initWithScene:(unsigned int)s tag:(unsigned int)t event:(unsigned int)e resource:(id)r;

@end
