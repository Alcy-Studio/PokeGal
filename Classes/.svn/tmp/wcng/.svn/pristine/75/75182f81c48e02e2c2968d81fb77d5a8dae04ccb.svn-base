//
//  MItem.m
//  frdfrd
//
//  Created by westbugs on 11-02-09.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "MItem.h"

#import "Item.h"

//Method
#import "MLoad.h"

//Constants
#import "ConstantsGlossaryDatabase.h"

@implementation MItem

+(Item*)getItem:(NSUInteger)role{
	NSArray* array = [MLoad getRecordsWithAttrName:kGlossaryRole 
										 attrValue:[NSString stringWithFormat:@"%d",role] 
											Entity:kGlossaryEntityItem];
	
	return (Item*)[array objectAtIndex:0];
}
@end
