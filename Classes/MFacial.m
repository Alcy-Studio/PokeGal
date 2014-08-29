//
//  MFacial.m
//  frdfrd
//
//  Created by westbugs on 11-06-04.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "MFacial.h"

#import "Facial.h"

//Method
#import "MLoad.h"

//Constants
#import "ConstantsGlossaryDatabase.h"

@implementation MFacial

+(Facial*)getFacial:(NSUInteger)role{
	NSArray* array = [MLoad getRecordsWithAttrName:kGlossaryRole 
										 attrValue:[NSString stringWithFormat:@"%d",role] 
											Entity:kGlossaryEntityFacial];
	
	return (Facial*)[array objectAtIndex:0];
}
@end
