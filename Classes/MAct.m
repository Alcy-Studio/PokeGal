//
//  MAct.m
//  frdfrd
//
//  Created by westbugs on 11-02-09.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "MAct.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

//Action
#import "ActPGMainAutoRefresh.h"
#import "ActPGDateAutoRefresh.h"
#import "ActPGEventAutoRefresh.h"
#import "ActPGMapAutoRefresh.h"
#import "ActPGArrangeAutoRefresh.h"
#import "ActPGPlaceAutoRefresh.h"
#import "ActPGScheduleAutoRefresh.h"
#import "ActPGRomanceAutoRefresh.h"
#import "ActPGDetailAutoRefresh.h"
#import "ActPGTalkAutoRefresh.h"
#import "ActPGSMSAutoRefresh.h"
#import "ActPGMConfirmAutoRefresh.h"
#import "ActPGMAlertAutoRefresh.h"
#import "ActPGMSelectionAutoRefresh.h"

//Class
#import "PGMainViewController.h"
#import "PGDateViewController.h"
#import "PGEventViewController.h"
#import "PGMapViewController.h"
#import "PGArrangeViewController.h"
#import "PGPlaceViewController.h"
#import "PGScheduleViewController.h"
#import "PGRomanceViewController.h"
#import "PGDetailViewController.h"
#import "PGTalkViewController.h"
#import "PGSMSViewController.h"
#import "PGMConfirmViewController.h"
#import "PGMAlertViewController.h"
#import "PGMSelectionViewController.h"

//Protocal
#import "ActionProtocol.h"

@interface MAct()

-(id)getAction;
-(NSUInteger)getRole;


@end

@implementation MAct


-(void)setActionAtRefresh{
	//NSLog(@"MAct - setActionPGMainRefresh");
	id action = [self getAction];
	
	[action setCombo];
	[action setResource:self.resource];
	if ([[action combo] isKindOfClass:[NSDictionary class]]) { //Target-Action
		NSString* key;
		for (key in [[action combo] allKeys]) {
			[[[action combo] objectForKey:key] performSelector:NSSelectorFromString(key)];
		}
	}
	//[action release];
	 
}

-(id)getAction{
	id action;
	if ([self.resource isKindOfClass:[PGMainViewController class]]) {
		action = [[ActPGMainAutoRefresh alloc]initWithRole:kAudUDNumPGMainAuto];
		
	} else if ([self.resource isKindOfClass:[PGDateViewController class]]) {
		action = [[ActPGDateAutoRefresh alloc]initWithRole:kAudUDNumPGDateAuto];
		
	} else if ([self.resource isKindOfClass:[PGEventViewController class]]) {
		action = [[ActPGEventAutoRefresh alloc]initWithRole:kAudUDNumPGEventAuto];
		
	} else if ([self.resource isKindOfClass:[PGMapViewController class]]) {
		action = [[ActPGMapAutoRefresh alloc]initWithRole:kAudUDNumPGMapAuto];
		
	} else if ([self.resource isKindOfClass:[PGArrangeViewController class]]) {
		action = [[ActPGArrangeAutoRefresh alloc]initWithRole:kAudUDNumPGArrangeAuto];
		
	} else if ([self.resource isKindOfClass:[PGPlaceViewController class]]) {
		action = [[ActPGPlaceAutoRefresh alloc]initWithRole:kAudUDNumPGPlaceAuto];
		
	} else if ([self.resource isKindOfClass:[PGScheduleViewController class]]) {
		action = [[ActPGScheduleAutoRefresh alloc]initWithRole:kAudUDNumPGScheduleAuto];
		
	} else if ([self.resource isKindOfClass:[PGRomanceViewController class]]) {
		action = [[ActPGRomanceAutoRefresh alloc]initWithRole:kAudUDNumPGRomanceAuto];
		
	} else if ([self.resource isKindOfClass:[PGDetailViewController class]]) {
		action = [[ActPGDetailAutoRefresh alloc]initWithRole:kAudUDNumPGDetailAuto];
		
	} else if ([self.resource isKindOfClass:[PGTalkViewController class]]) {
		action = [[ActPGTalkAutoRefresh alloc]initWithRole:kAudUDNumPGTalkAuto];
		
	} else if ([self.resource isKindOfClass:[PGSMSViewController class]]) {
		action = [[ActPGSMSAutoRefresh alloc]initWithRole:kAudUDNumPGSMSAuto];
		
	} else if ([self.resource isKindOfClass:[PGMConfirmViewController class]]) {
		action = [[ActPGMConfirmAutoRefresh alloc]initWithRole:kAudUDNumPGMConfirmAuto];
		
	} else if ([self.resource isKindOfClass:[PGMAlertViewController class]]) {
		action = [[ActPGMAlertAutoRefresh alloc]initWithRole:kAudUDNumPGMAlertAuto];
		
	} else if ([self.resource isKindOfClass:[PGMSelectionViewController class]]) {
		action = [[ActPGMSelectionAutoRefresh alloc]initWithRole:kAudUDNumPGMSelectionAuto];
	} else {
		return nil;
	}
	
	return [action autorelease];
	
}
-(NSUInteger)getRole{return 0;}

@end
