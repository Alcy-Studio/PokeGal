//
//  MRegion.m
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MRegion.h"

#import "MGirl.h"
#import "MLoad.h"
#import "MSave.h"

#import "Region.h"
#import "Girl.h"

#import "ConstantsTmpScript.h"
#import "ConstantsGlossaryDatabase.h"

@implementation MRegion

+(BOOL)unlocked:(NSString*)r{
	Girl* girl = [MGirl getGirl];
	Region* region;
	
	region = [self getRegion:r];
	
	//In case if region failed to unlocked
	if ((girl.sportLv >= region.lvReqA) && 
		(girl.movieLv >= region.lvReqB) && 
		(girl.musicLv >= region.lvReqC)) {
		if (!region.unlocked) {
			region.unlocked = [NSNumber numberWithBool:YES];
			[MSave saveMoc];
		}
		return YES;
	} else {
		if (region.unlocked) {
			region.unlocked = [NSNumber numberWithBool:NO];
			[MSave saveMoc];
		}
		return NO;
	}
	
}

+(Region*)getRegion:(NSString*)r{
	
	
	
	NSArray* array = [MLoad getRecordsWithAttrName:kGlossaryName attrValue:r Entity:kGlossaryRegion];
	if ([array count] != 1) {
		NSLog(@"[ActPGMapNavButton setupNav] - Failed");
		return nil;
	}
	Region* region = (Region*)[array objectAtIndex:0];
	
	return region;
	
	
}


@end