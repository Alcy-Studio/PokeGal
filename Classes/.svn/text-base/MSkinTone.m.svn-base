//
//  MSkinTone.m
//  frdfrd
//
//  Created by westbugs on 11-02-09.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "MSkinTone.h"

#import "SkinTone.h"

//Method
#import "MLoad.h"

//Constants
#import "ConstantsGlossaryDatabase.h"

@implementation MSkinTone

+(SkinTone*)getSkinTone:(NSUInteger)role{
	NSArray* array = [MLoad getRecordsWithAttrName:kGlossaryRole 
										 attrValue:[NSString stringWithFormat:@"%d",role] 
											Entity:kGlossaryEntitySkinTone];
	
	return (SkinTone*)[array objectAtIndex:0];
}
@end
