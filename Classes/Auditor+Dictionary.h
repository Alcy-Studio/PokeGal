//
//  Auditor+Dictionary.h
//  PocketDraft
//
//  Created by westbugs on 10-09-17.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "Auditor.h"


@interface Auditor(Dictionary)

-(BOOL)setDictionaryWithKey:(unsigned int)k;
-(BOOL)setDictionaryWithKey:(unsigned int)k target:(unsigned int)t;

@end
