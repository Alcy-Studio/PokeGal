//
//  MHairstyle.m
//  frdfrd
//
//  Created by westbugs on 11-02-09.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "MHairstyle.h"

#import "Hairstyle.h"

//Method
#import "MLoad.h"

//Constants
#import "ConstantsGlossaryDatabase.h" 

@implementation MHairstyle

+(Hairstyle*)getHairstyle:(NSUInteger)role{
	NSArray* array = [MLoad getRecordsWithAttrName:kGlossaryRole 
										 attrValue:[NSString stringWithFormat:@"%d",role] 
											Entity:kGlossaryEntityHairstyle];
	
	return (Hairstyle*)[array objectAtIndex:0];
}
@end
