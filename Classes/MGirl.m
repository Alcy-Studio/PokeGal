//
//  MGirl.m
//  frdfrd
//
//  Created by westbugs on 11-01-25.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "MGirl.h"

#import "Girl.h"
#import "MLoad.h"
#import "MSave.h"
#import "MUi.h"
#import "MGame.h"

#import "ConstantsGirlStatus.h"
#import "ConstantsGlossaryDatabase.h"
#import "ConstantsActionDeduction.h"
#import "ConstantsSettingInGame.h"
#import "ConstantsAuditorUserDefaults.h"
#import "ConstantsTmpScript.h"


static const int lvUp = 1;
static const unsigned int kRandMod = 3;
static const unsigned int kRandModRomance = 2;

@implementation MGirl

+(void)reportScoreToGK{
	Girl* girl = [self getGirl];
	
	NSUInteger love = (([girl.loveLv intValue] - 1) * 10) + [girl.loveExp intValue];
	//amplifier
	love *= 2;
	
	NSUInteger health = (([girl.sportLv intValue] - 1) * 10) + [girl.sportExp intValue];
	NSUInteger social = (([girl.movieLv intValue] - 1) * 10) + [girl.movieExp intValue];
	NSUInteger talent = (([girl.musicLv intValue] - 1) * 10) + [girl.musicExp intValue];

	NSUInteger heartRate = love + health + social + talent;
	
	NSLog(@"Love: %i; Health: %i; Social: %i; Talent: %i");
	
	[MGame reportScore:love forCategory:@"PGL001"];
	[MGame reportScore:health forCategory:@"PGL002"];
	[MGame reportScore:social forCategory:@"PGL003"];
	[MGame reportScore:talent forCategory:@"PGL004"];


	[MGame reportScore:heartRate forCategory:@"PGL005"];

	
	
}

+(void)sumAtMax:(NSUInteger)i{
	Girl* girl = [self getGirl];

	girl.atMax += i;
	//NSLog(@"Girl ATMax: %@", girl.atMax);
}

+(BOOL)getOpening{
	Girl* g = [MGirl getGirl];
	//NSLog(@"Opening: %@;", g.opening);
	
	//(g.opening) check nil
	//([g.opening boolValue]) check BOOL
	return [g.opening boolValue];
}
+(NSUInteger)getMood{
	//kGirlHappy
//	kGirlFine
//	kGirlSad
		
	NSUInteger ui = (arc4random() % kRandMod) + 1;

	return ui;

}

+(NSUInteger)getTalk{
	NSUInteger ui = (arc4random() % kRandMod) + 1;
	return ui;
}
+(NSUInteger)getLook{
	NSUInteger ui = (arc4random() % kRandMod) + 1;
	
	return ui;
}
+(NSUInteger)getChat{
	NSUInteger ui = (arc4random() % kRandMod) + 1;
	return ui;
}
+(NSUInteger)getRomance:(NSUInteger)r{
	
	NSUInteger ui;
	
	switch (r) {
		case kAudUDNumPGDateMoodGood:
			ui = (arc4random() % kRandModRomance) + 2;

			break;
		case kAudUDNumPGDateMoodOk:
			ui = (arc4random() % kRandMod) + 1;
			break;
		case kAudUDNumPGDateMoodBad:
			ui = (arc4random() % kRandModRomance) + 1;

			break;
		default:
			NSLog(@"Mood problem");
			break;
	}
	NSLog(@"Romance: %i", ui);
	return ui;
}

+(NSUInteger)currentAt{
	NSArray* array = [MLoad getRecordsWithAttrName:kGlossaryName attrValue:kGirlStatusName1 Entity:kGlossaryGirl];
	if ([array count] != 1) {
		NSLog(@"[MGirl deductAtCall] - Failed");
		return -1;
	}
	
	Girl* girl = [array objectAtIndex:0];
	//NSLog(@"Girl AT: %@", girl.atTotal);

	return [girl.atTotal intValue];
}

+(NSInteger)maxAt{
	NSArray* array = [MLoad getRecordsWithAttrName:kGlossaryName attrValue:kGirlStatusName1 Entity:kGlossaryGirl];
	if ([array count] != 1) {
		NSLog(@"[MGirl deductAtCall] - Failed");
		return -1;
	}
	
	Girl* girl = [array objectAtIndex:0];
	//NSLog(@"Girl AT: %@", girl.atTotal);
	
	return [girl.atMax intValue];
}

+(BOOL)regenAt:(NSInteger)i{
	NSArray* array = [MLoad getRecordsWithAttrName:kGlossaryName attrValue:kGirlStatusName1 Entity:kGlossaryGirl];
	if ([array count] != 1) {
		NSLog(@"[MGirl deductAtCall] - Failed");
		return NO;
	}
	
	Girl* girl = [array objectAtIndex:0];
	
	//NSLog(@"Girl AT: %@", girl.atTotal);
	
	if([MGirl currentAt] >= [MGirl maxAt] )
		return NO;

	//NSLog(@"Girl Current: %@; Max: %@", girl.atTotal, girl.atMax);
	girl.atTotal += i;
	
	[MSave saveMoc];

	return YES;
}

+(void)deductAtCall{

	Girl* girl = [self getGirl];
	if ([girl.atTotal intValue] < kAtDeductCall) {
		NSLog(@"[MGirl deductAtCall] - Failed");
		return;
	}
	girl.atTotal -= kAtDeductCall;
	//NSLog(@"Girl AT: %@", girl.atTotal);
}

+(void)deductAtSms{
	
	Girl* girl = [self getGirl];
	if ([girl.atTotal intValue] < kAtDeductSms) {
		NSLog(@"[MGirl deductAtSms] - Failed");
		return;
	}
	girl.atTotal -= kAtDeductSms;
	//NSLog(@"Girl AT: %@", girl.atTotal);
}

+(void)deductAtMove{
	
	Girl* girl = [self getGirl];
	if ([girl.atTotal intValue] < kAtDeductMove) {
		NSLog(@"[MGirl deductAtMove] - Failed");
		return;
	}
	girl.atTotal -= kAtDeductMove;
	//NSLog(@"Girl AT: %@", girl.atTotal);
}

+(void)deductAtTalk{
	Girl* girl = [self getGirl];
	if ([girl.atTotal intValue] < kAtDeductTalk) {
		NSLog(@"[MGirl deductAtTalk] - Failed");
		return;
	}
	girl.atTotal -= kAtDeductTalk;
	
}

+(void)deductAtLook{
	Girl* girl = [self getGirl];
	if ([girl.atTotal intValue] < kAtDeductLook) {
		NSLog(@"[MGirl deductAtLook] - Failed");
		return;
	}
	girl.atTotal -= kAtDeductLook;
}

+(void)deductAtChat{
	Girl* girl = [self getGirl];
	if ([girl.atTotal intValue] < kAtDeductChat) {
		NSLog(@"[MGirl deductAtChat] - Failed");
		return;
	}
	girl.atTotal -= kAtDeductChat;
}

+(void)deductAtRomance{
	Girl* girl = [self getGirl];
	if ([girl.atTotal intValue] < kAtDeductRomance) {
		NSLog(@"[MGirl deductAtRomance] - Failed");
		return;
	}
	girl.atTotal -= kAtDeductRomance;
}

+(void)addAttributeNameExp:(NSString*)n1 nameLv:(NSString*)n2 value:(NSInteger)i{
	Girl* girl = [self getGirl];
	
	//add exp
	NSInteger exp = [[girl valueForKey:n1] intValue];
	exp += i;

	if (exp < kExpMax) {//>= 10
		[girl setValue:[NSNumber numberWithInt:exp] forKey:n1];
	
		return;
	}
	
	//update level
	//print Level up == YES in kTmpScriptLvUp for diff nameLv
	if ([n1 isEqualToString:kGlossaryLoveExp]) {
		[MUi modifyUserDefaultWithKey:kTmpScriptLvUp value:kTmpScriptLvUpLove];
	} else if ([n1 isEqualToString:kGlossarySportExp]) {
		[MUi modifyUserDefaultWithKey:kTmpScriptLvUp value:kTmpScriptLvUpHealth];
	} else if ([n1 isEqualToString:kGlossaryMovieExp]) {
		[MUi modifyUserDefaultWithKey:kTmpScriptLvUp value:kTmpScriptLvUpSocial];
	} else if ([n1 isEqualToString:kGlossaryMusicExp]) {
		[MUi modifyUserDefaultWithKey:kTmpScriptLvUp value:kTmpScriptLvUpTalent];
	} else {
		NSLog(@"MGirl addAttributeNameExp n1 is: %@", n1);
	}

	
	exp -= kExpMax;
	[girl setValue:[NSNumber numberWithInt:exp] forKey:n1];
	
	NSInteger lv = [[girl valueForKey:n2] intValue];
	lv += lvUp;
	//NSLog(@"Lv = %i", lv);

	[girl setValue:[NSNumber numberWithInt:lv] forKey:n2];

	return;
}

+(void)subAttributeNameExp:(NSString*)n1 nameLv:(NSString*)n2 value:(NSInteger)i{
	Girl* girl = [self getGirl];
	
	//add exp
	NSInteger exp = [[girl valueForKey:n1] intValue];
	exp -= i;
	
	//if exp is positive
	if (exp >= 0) {//0
		[girl setValue:[NSNumber numberWithInt:exp] forKey:n1];
		
		return;
	}
	
	//update level
	//print Level up == YES in kTmpScriptLvUp for diff nameLv
	//if ([n1 isEqualToString:kGlossaryLoveExp]) {
//		[MUi modifyUserDefaultWithKey:kTmpScriptLvUp value:kTmpScriptLvUpLove];
//	} else if ([n1 isEqualToString:kGlossarySportExp]) {
//		[MUi modifyUserDefaultWithKey:kTmpScriptLvUp value:kTmpScriptLvUpHealth];
//	} else if ([n1 isEqualToString:kGlossaryMovieExp]) {
//		[MUi modifyUserDefaultWithKey:kTmpScriptLvUp value:kTmpScriptLvUpSocial];
//	} else if ([n1 isEqualToString:kGlossaryMusicExp]) {
//		[MUi modifyUserDefaultWithKey:kTmpScriptLvUp value:kTmpScriptLvUpTalent];
//	} else {
//		NSLog(@"MGirl addAttributeNameExp n1 is: %@", n1);
//	}
	
	//check level, if equal or lower than 1
	NSInteger lv = [[girl valueForKey:n2] intValue];
	lv -= lvUp;
	//NSLog(@"Lv = %i", lv);
	
	if (lv < 1) {
		[girl setValue:[NSNumber numberWithInt:0] forKey:n1];
		return;
	}
	//if greater than or equal to 1
	[girl setValue:[NSNumber numberWithInt:lv] forKey:n2];
	
	exp += kExpMax;
	[girl setValue:[NSNumber numberWithInt:exp] forKey:n1];
	
	
	
	return;
}


+(Girl*)getGirl{
	NSArray* array = [MLoad getRecordsWithAttrName:kGlossaryName attrValue:kGirlStatusName1 Entity:kGlossaryGirl];
	if ([array count] != 1) {
		NSLog(@"[MGirl deductAt] - Failed");
		return nil;
	}
	
	return (Girl*)[array objectAtIndex:0];
}
@end
