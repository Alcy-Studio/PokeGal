//
//  MCostume.m
//  frdfrd
//
//  Created by westbugs on 11-02-09.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "MCostume.h"

#import "Costume.h"

//Method
#import "MLoad.h"

//Constants
#import "ConstantsGlossaryDatabase.h"

@implementation MCostume

+(Costume*)getCostume:(NSUInteger)role{
	NSArray* array = [MLoad getRecordsWithAttrName:kGlossaryRole 
										 attrValue:[NSString stringWithFormat:@"%d",role] 
											Entity:kGlossaryEntityCostume];
	
	return (Costume*)[array objectAtIndex:0];
}

@end
