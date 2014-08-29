//
//  MFacial.h
//  frdfrd
//
//  Created by westbugs on 11-06-04.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "Method.h"


@class Facial;
@interface MFacial : Method

+(Facial*)getFacial:(NSUInteger)role;
@end
