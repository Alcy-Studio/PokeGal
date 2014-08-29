//
//  ActPGWalkAutoSetup+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGWalkAutoSetup+Selector.h"

//Additional
#import "PGWalkViewController.h"

//Method
#import "MGame.h"
#import "MLoad.h"
#import "MUi.h"
#import "MGirl.h"
#import "MGift.h"
#import "MSave.h"
#import "MEvent.h"
#import "MTime.h"
#import "MBgm.h"

//Class
#import "Gift.h"
#import "Girl.h"
#import "Event.h"

//Constants
#import "ConstantsPGWalk.h"
#import "ConstantsTmpRegion.h"
#import "ConstantsStringFormat.h"
#import "ConstantsTmpScript.h"
#import "ConstantsTmpLate.h"

#import "ConstantsSceneCode.h"
#import "ConstantsAuditorUserDefaults.h"

#import "ConstantsSeason.h"
#import "ConstantsDayNight.h"

#import "ConstantsPGWalkEx.h"

static const float kDelay = 0.1f;

@interface ActPGWalkAutoSetup()

-(void)gkAchiNeedAWatch;
-(void)setViewTopTitle;
-(void)setViewTopLeftLabel;

-(void)setRegion:(NSString*)s;

-(void)setStart:(NSString *)s;
-(void)setPreset1:(NSString*)s;
-(void)setPreset2:(NSString*)s;

-(void)setThemeSong;

@end

@implementation ActPGWalkAutoSetup(Selector)

-(void)gkAchiNeedAWatch{
	[MGame reportAchievementIdentifier:@"PokeGalAchi7" percentComplete:100.0f];
}


-(void)setThemeSong{
	//[[MBgm getBgm] doVolumeFade];
	[[MBgm getBgm] changeSong:kPGWalkThemeSong extension:kPGWalkSongType];
	[[MBgm getBgm] playOrPause];


}

-(void)setSeason{
	NSUInteger i = [MTime getSeason];
	
	switch (i) {
		case kSpring:
			[MUi modifyTag:kWalkWeatherImage role:kAudUDNumPGWalkSpring scene:kSceneCodePGWalk];
			break;
		case kSummer:
			[MUi modifyTag:kWalkWeatherImage role:kAudUDNumPGWalkSummer scene:kSceneCodePGWalk];
			break;
		case kAutumn:
			[MUi modifyTag:kWalkWeatherImage role:kAudUDNumPGWalkAutumn scene:kSceneCodePGWalk];
			break;
		case kWinter:
			[MUi modifyTag:kWalkWeatherImage role:kAudUDNumPGWalkWinter scene:kSceneCodePGWalk];
			break;
		default:
			NSLog(@"PGWalk - Failed to set Season");
			break;
	}
}
-(void)setDayNight{
	NSUInteger i = [MTime getDayNight];
	
	switch (i) {
		case kDay:
			[MUi modifyTag:kWalkDayNightImage role:kAudUDNumPGWalkDay scene:kSceneCodePGWalk];
			break;
		case kNight:
			[MUi modifyTag:kWalkDayNightImage role:kAudUDNumPGWalkNight scene:kSceneCodePGWalk];
			break;
		default:
			break;
	}
}

-(void)setGeography{
	[self setSeason];
	[self setDayNight];
}

-(void)setViewWithTag{
	[self setThemeSong];
	[self setViewTopTitle];
	[self setViewTopLeftLabel];

	for (NSUInteger i = 1; i <= kWalkViewTotal; i++) {
		if (i != kWalkViewHelp)
			[MLoad setViewWithTag:i controller:self.resource];
	}
}

-(void)setViewTopTitle{
	[(UILabel*)[[(PGWalkViewController*)self.resource view] viewWithTag:kWalkViewTitle] 
	 setText:NSLocalizedString(kWalkTitleText,  @"Localized")];
	
}

-(void)setViewTopLeftLabel{
	[(UILabel*)[[(PGWalkViewController*)self.resource view] viewWithTag:kWalkTopLeftLabel] 
	 setText:NSLocalizedString(kWalkTopLeftLabelText,  @"Localized")];
	
}

//-(void)setViewDisable{}

-(BOOL)setCurrentScript{
	NSUserDefaults* defaults =[NSUserDefaults standardUserDefaults];
	//Date Late
	BOOL b = [defaults boolForKey:kTmpLate];
	if (b) {
		[defaults setBool:NO forKey:kTmpLate]; //Reset
		
		[self gkAchiNeedAWatch];
		return YES;
	}


	NSString* s = [[NSUserDefaults standardUserDefaults] stringForKey:kTmpRegion];
	
	[self setRegion:s];
	if (![MEvent checkPresetEventExistRegion:s]) {
		//return event start
		[self setStart:s]; //s = Region
		return YES; 
	}
	
	//@"HH:00 a"
	NSDateFormatter* df1 = [[NSDateFormatter alloc] init];
	[df1 setDateFormat:kDateFormat2];
	NSString* s1 = [df1 stringFromDate:[NSDate date]];
	[df1 release];
	//@"E"
	NSDateFormatter* df2 = [[NSDateFormatter alloc] init];
	[df2 setDateFormat:kDateFormat5];
	NSString* s2 = [df2 stringFromDate:[NSDate date]];
	[df2 release];
	
	Event* e = [MEvent getPresetEventWithRegion:s timeCell:s1 weekday:s2];
	
	if (!e)
		return NO;
	
	Girl* g = [MGirl getGirl];
	
	//NSLog(@"Girl: %i Sport: %@ Movie: %@ Music: %@", [g.loveLv integerValue], g.sportLv, g.movieLv, g.musicLv);

	//Raise Preset Flag
	[MUi modifyUserDefaultWithKey:kTmpScriptPresetBool boolVal:YES];
	
	if ([g.loveLv integerValue] < [e.loveLv integerValue]) {
		[self setPreset1:s];
		return YES;
	}
	//------unlock Gift and save it
	Gift* gift = [MGift getGiftWithPreset:e.name];
	
	//if already unlocked, quite
	if (gift.unlocked) {
		[self setPreset2:s];
		return YES;
	}
	gift.unlocked = [NSNumber numberWithBool:YES];
	
	//------print gift notice screen == YES in kTmpScriptObtainGift
	[MUi modifyUserDefaultWithKey:kTmpScriptObtainGift boolVal:YES];

	// bah bah bah
	
	//giftTotal += 1 for MGirl
	g.giftTotal += 1;
	
	[MSave saveMoc];
	
	[self setPreset2:s];
	return YES;
	
}

-(void)setRegion:(NSString*)s{
	NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];

	if ([s isEqualToString:kTRRegionA]) {
		[defaults setInteger:kTSRegionA forKey:kTmpScriptRegion];
		return;
	}
	if ([s isEqualToString:kTRRegionB]) {
		[defaults setInteger:kTSRegionB forKey:kTmpScriptRegion];
		return;
	}
	if ([s isEqualToString:kTRRegionC]) {
		[defaults setInteger:kTSRegionC forKey:kTmpScriptRegion];
		return;
	}
	if ([s isEqualToString:kTRRegionD]) {
		[defaults setInteger:kTSRegionD forKey:kTmpScriptRegion];
		return;
	}
	if ([s isEqualToString:kTRRegionE]) {
		[defaults setInteger:kTSRegionE forKey:kTmpScriptRegion];
		return;
	}
	if ([s isEqualToString:kTRRegionF]) {
		[defaults setInteger:kTSRegionF forKey:kTmpScriptRegion];
		return;
	}
	if ([s isEqualToString:kTRRegionG]) {
		[defaults setInteger:kTSRegionG forKey:kTmpScriptRegion];
		return;
	}
	if ([s isEqualToString:kTRRegionH]) {
		[defaults setInteger:kTSRegionH forKey:kTmpScriptRegion];
		return;
	}
	if ([s isEqualToString:kTRRegionI]) {
		[defaults setInteger:kTSRegionI forKey:kTmpScriptRegion];
		return;
	}
	return;
}

-(void)setStart:(NSString*)s{
	NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
	if ([s isEqualToString:kTRRegionA]) {
		[defaults setValue:kEvtGirlWalkRegionAStart1 forKey:kTmpScript];
		return;
	}
	if ([s isEqualToString:kTRRegionB]) {
		[defaults setValue:kEvtGirlWalkRegionBStart1 forKey:kTmpScript];
		return;
	}
	if ([s isEqualToString:kTRRegionC]) {
		[defaults setValue:kEvtGirlWalkRegionCStart1 forKey:kTmpScript];
		return;
	}
	if ([s isEqualToString:kTRRegionD]) {
		[defaults setValue:kEvtGirlWalkRegionDStart1 forKey:kTmpScript];
		return;
	}
	if ([s isEqualToString:kTRRegionE]) {
		[defaults setValue:kEvtGirlWalkRegionEStart1 forKey:kTmpScript];
		return;
	}
	if ([s isEqualToString:kTRRegionF]) {
		[defaults setValue:kEvtGirlWalkRegionFStart1 forKey:kTmpScript];
		return;
	}
	if ([s isEqualToString:kTRRegionG]) {
		[defaults setValue:kEvtGirlWalkRegionGStart1 forKey:kTmpScript];
		return;
	}
	if ([s isEqualToString:kTRRegionH]) {
		[defaults setValue:kEvtGirlWalkRegionHStart1 forKey:kTmpScript];
		return;
	}
	if ([s isEqualToString:kTRRegionI]) {
		[defaults setValue:kEvtGirlWalkRegionIStart1 forKey:kTmpScript];
		return;
	}
	return;
}


//Not qualify for lv check yet
-(void)setPreset1:(NSString*)s{
	NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
	if ([s isEqualToString:kTRRegionA]) {
		[defaults setValue:kEvtGirlWalkRegionAPreset1 forKey:kTmpScript];
		return;
	}
	if ([s isEqualToString:kTRRegionB]) {
		[defaults setValue:kEvtGirlWalkRegionBPreset1 forKey:kTmpScript];
		return;
	}
	if ([s isEqualToString:kTRRegionC]) {
		[defaults setValue:kEvtGirlWalkRegionCPreset1 forKey:kTmpScript];
		return;
	}
	if ([s isEqualToString:kTRRegionD]) {
		[defaults setValue:kEvtGirlWalkRegionDPreset1 forKey:kTmpScript];
		return;
	}
	if ([s isEqualToString:kTRRegionE]) {
		[defaults setValue:kEvtGirlWalkRegionEPreset1 forKey:kTmpScript];
		return;
	}
	if ([s isEqualToString:kTRRegionF]) {
		[defaults setValue:kEvtGirlWalkRegionFPreset1 forKey:kTmpScript];
		return;
	}
	if ([s isEqualToString:kTRRegionG]) {
		[defaults setValue:kEvtGirlWalkRegionGPreset1 forKey:kTmpScript];
		return;
	}
	if ([s isEqualToString:kTRRegionH]) {
		[defaults setValue:kEvtGirlWalkRegionHPreset1 forKey:kTmpScript];
		return;
	}
	if ([s isEqualToString:kTRRegionI]) {
		[defaults setValue:kEvtGirlWalkRegionIPreset1 forKey:kTmpScript];
		return;
	}
	return;
	
}
//qualify for gift
-(void)setPreset2:(NSString*)s{
	NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
	if ([s isEqualToString:kTRRegionA]) {
		[defaults setValue:kEvtGirlWalkRegionAPreset2 forKey:kTmpScript];
		return;
	}
	if ([s isEqualToString:kTRRegionB]) {
		[defaults setValue:kEvtGirlWalkRegionBPreset2 forKey:kTmpScript];
		return;
	}
	if ([s isEqualToString:kTRRegionC]) {
		[defaults setValue:kEvtGirlWalkRegionCPreset2 forKey:kTmpScript];
		return;
	}
	if ([s isEqualToString:kTRRegionD]) {
		[defaults setValue:kEvtGirlWalkRegionDPreset2 forKey:kTmpScript];
		return;
	}
	if ([s isEqualToString:kTRRegionE]) {
		[defaults setValue:kEvtGirlWalkRegionEPreset2 forKey:kTmpScript];
		return;
	}
	if ([s isEqualToString:kTRRegionF]) {
		[defaults setValue:kEvtGirlWalkRegionFPreset2 forKey:kTmpScript];
		return;
	}
	if ([s isEqualToString:kTRRegionG]) {
		[defaults setValue:kEvtGirlWalkRegionGPreset2 forKey:kTmpScript];
		return;
	}
	if ([s isEqualToString:kTRRegionH]) {
		[defaults setValue:kEvtGirlWalkRegionHPreset2 forKey:kTmpScript];
		return;
	}
	if ([s isEqualToString:kTRRegionI]) {
		[defaults setValue:kEvtGirlWalkRegionIPreset2 forKey:kTmpScript];
		return;
	}
	return;
	
}

-(void)presentDelayModal{
	[self performSelector:@selector(presentModalPGEvent) withObject:nil afterDelay:kDelay];
}
-(void)presentModalPGEvent{
	if (![[MUi getCurrentController] modalViewController]) {
		[MUi presentModal:@"PGEventViewController" transition:UIModalTransitionStyleCrossDissolve animated:YES];
		return;
	}
	[self presentDelayModal];
	
}


@end
