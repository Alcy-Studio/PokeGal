//
//  Interpreter.h
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Interpreter : NSObject {
/*
	id viewController;
	unsigned int tag;
	UIControl *control;
	UIControlEvents event;
*/	
	//NSString* validInCode;
	unsigned int sceneCode;
	unsigned int tagCode;
	unsigned int roleCode;
	unsigned int eventCode;
}

@property (nonatomic)unsigned int sceneCode;
@property (nonatomic)unsigned int tagCode;
@property (nonatomic)unsigned int roleCode;
@property (nonatomic)unsigned int eventCode;
/*
@property (nonatomic, retain) id viewController;
@property (nonatomic, retain) UIControl* control;
@property (nonatomic) unsigned int tag;
@property (nonatomic) UIControlEvents event;
*/

//- (id) initWithController:(id)vc sender:(id)s controlEvent:(UIControlEvents)c;

-(id)initWithScene:(unsigned int)s tag:(unsigned int)t role:(unsigned int)r event:(unsigned int)e;
//-(id)initWithScene:(unsigned int)s tag:(unsigned int)t event:(unsigned int)e resource:(id)r;


@end
