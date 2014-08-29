//
//  MCostume.h
//  frdfrd
//
//  Created by westbugs on 11-02-09.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "Method.h"

@class Costume;
@interface MCostume : Method

+(Costume*)getCostume:(NSUInteger)role;
@end
