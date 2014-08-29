//
//  Interpreter+Code.h
//  PocketDraft
//
//  Created by westbugs on 10-09-17.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "Interpreter.h"


@interface Interpreter(Code)

+(unsigned int)getRoleWithScene:(unsigned int)s tag:(unsigned int)t;
-(NSString*)getCode;

@end
