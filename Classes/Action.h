//
//  Action.h
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ActionProtocol.h"

@interface Action : NSObject {
	
	//Role
	unsigned int role;
	id resource;
	//Combo
	id combo;	
	
}

@property (nonatomic)unsigned int role;
@property (nonatomic, readonly)id combo;
@property(nonatomic, readonly)id resource;


-(id)getCombo;
-(void)setResource:(id)r;

-(void)trigger;


@end