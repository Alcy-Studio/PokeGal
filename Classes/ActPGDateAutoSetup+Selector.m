//
//  ActPGDateAutoSetup+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGDateAutoSetup+Selector.h"

//Additional
#import "PGDateViewController.h"

//Method
#import "MLoad.h"
#import "MUi.h"
#import "MEvent.h"
#import "MSave.h"
#import "MGame.h"

#import "MOutfit.h"
#import "MSkinTone.h"
#import "MCostume.h"
//#import "MHairstyle.h"
//#import "MItem.h"
#import "MFacial.h"

#import "MTime.h"
#import "MUi.h"
#import "MGirl.h"
#import "MBgm.h"

#import "Outfit.h"
#import "SkinTone.h"
#import "Costume.h"
#import "Hairstyle.h"
#import "Item.h"
#import "Facial.h"

//Constants
#import "ConstantsPGMAlert.h"
#import "ConstantsPGMConfirm.h"
#import "ConstantsPGEvent.h"
#import "ConstantsPGDate.h"
#import "ConstantsPGWalk.h"
#import "ConstantsTmpRegion.h"
#import "ConstantsTmpScript.h"
#import "ConstantsTmpDate.h"

#import "ConstantsStringFormat.h"
#import "ConstantsTmpLate.h"
#import "ConstantsAuditorUserDefaults.h"
#import "ConstantsSceneCode.h"
#import "ConstantsFileType.h"

#import "ConstantsSeason.h"
#import "ConstantsDayNight.h"
#import "ConstantsGirlStatus.h"

#import "ConstantsRegions.h"
#import "ConstantsPGDateEx.h"

static const int kInterval5minArrived = -301;
static const int kInterval15minArrived = -901;
static const int kInterval30minArrived = -1801;


enum {
	kRegionStart1 = 1,
	kRegionStart2 = 2,
	kRegionStart3 = 3,

};


static const float kDelay = 0.1f;

@interface ActPGDateAutoSetup()

-(void)gkAchiEarlyBird;
-(void)gkAchiNightTime;


-(void)gkAchiGentleman;
-(void)gkAchiFirstDate;
-(void)setThemeSong;
-(void)decrementBadge;


-(void)setViewTopTitle;
-(void)setViewTopLeftLabel;
-(void)setDateHint;

-(void)setOutfitSkinTone:(SkinTone*)s;
-(void)setOutfitCostume:(Costume*)c;
-(void)setOutfitHairstyle:(Hairstyle*)h;
-(void)setOutfitItem:(Item*)i;
-(void)setOutfitFacial:(Facial*)f;

@end


@implementation ActPGDateAutoSetup(Selector)

-(void)gkAchiEarlyBird{
	[MGame reportAchievementIdentifier:@"PokeGalAchi9" percentComplete:100.0f];

}

-(void)gkAchiNightTime{
	[MGame reportAchievementIdentifier:@"PokeGalAchi8" percentComplete:100.0f];

}

-(void)gkAchiGentleman{
	[MGame reportAchievementIdentifier:@"PokeGalAchi6" percentComplete:100.0f];

}

-(void)gkAchiFirstDate{

	[MGame reportAchievementIdentifier:@"PokeGalAchi1" percentComplete:100.0f];
}

-(void)setTemporaryCostume{
	
	NSString* r = [[NSUserDefaults standardUserDefaults] stringForKey:kTmpRegion];

	if ([r isEqualToString:kTRRegionA]) {
		[MOutfit setOutfitCostume:kAudUDNumOutfitCostumeGirl1];
		return;
	}
	if ([r isEqualToString:kTRRegionB]) {
		[MOutfit setOutfitCostume:kAudUDNumOutfitCostumeGirl2];
		return;
	}
	if ([r isEqualToString:kTRRegionC]) {
		[MOutfit setOutfitCostume:kAudUDNumOutfitCostumeGirl3];
		return;
	}
	if ([r isEqualToString:kTRRegionD]) {
		[MOutfit setOutfitCostume:kAudUDNumOutfitCostumeGirl4];
		return;
	}
	if ([r isEqualToString:kTRRegionE]) {
		[MOutfit setOutfitCostume:kAudUDNumOutfitCostumeGirl5];
		return;
	}
	if ([r isEqualToString:kTRRegionF]) {
		[MOutfit setOutfitCostume:kAudUDNumOutfitCostumeGirl6];
		return;
	}
	if ([r isEqualToString:kTRRegionG]) {
		[MOutfit setOutfitCostume:kAudUDNumOutfitCostumeGirl7];
		return;
	}
	if ([r isEqualToString:kTRRegionH]) {
		[MOutfit setOutfitCostume:kAudUDNumOutfitCostumeGirl8];
		return;
	}
	if ([r isEqualToString:kTRRegionI]) {
		[MOutfit setOutfitCostume:kAudUDNumOutfitCostumeGirl9];
		return;
	}
}

-(void)setSeason{
	NSUInteger i = [MTime getSeason];
	
	switch (i) {
		case kSpring:
			[MUi modifyTag:kDateWeatherImage role:kAudUDNumPGDateSpring scene:kSceneCodePGDate];
			break;
		case kSummer:
			[MUi modifyTag:kDateWeatherImage role:kAudUDNumPGDateSummer scene:kSceneCodePGDate];
			break;
		case kAutumn:
			[MUi modifyTag:kDateWeatherImage role:kAudUDNumPGDateAutumn scene:kSceneCodePGDate];
			break;
		case kWinter:
			[MUi modifyTag:kDateWeatherImage role:kAudUDNumPGDateWinter scene:kSceneCodePGDate];
			break;
		default:
			NSLog(@"PGDate - Failed to set Season");
			break;
	}
}
-(void)setDayNight{
	NSUInteger i = [MTime getDayNight];
	
	switch (i) {
		case kDay:
			[MUi modifyTag:kDateDayNightImage role:kAudUDNumPGDateDay scene:kSceneCodePGDate];
			break;
		case kNight:
			[MUi modifyTag:kDateDayNightImage role:kAudUDNumPGDateNight scene:kSceneCodePGDate];
			break;
		default:
			break;
	}
}


-(NSInteger)setMood{
	NSUInteger r = [MUi getRoleWithTag:kDateBubbleImage scene:kSceneCodePGDate];
	NSUInteger i = [MGirl getRomance:r];
	
	//Outfit* o = [MOutfit getOutfit];

	//NSLog(@"Mood %i", i);
	switch (i) {
		case kGirlHappy:
			[MUi modifyTag:kDateBubbleImage role:kAudUDNumPGDateMoodGood scene:kSceneCodePGDate];
			return kAudUDNumOutfitFacialGirl2; //Happy
			break;
		case kGirlFine:
			[MUi modifyTag:kDateBubbleImage role:kAudUDNumPGDateMoodOk scene:kSceneCodePGDate];
			return kAudUDNumOutfitFacialGirl4; //Normal
			break;
		case kGirlSad:
			[MUi modifyTag:kDateBubbleImage role:kAudUDNumPGDateMoodBad scene:kSceneCodePGDate];
			return kAudUDNumOutfitFacialGirl5; //Sad
			break;
		default:
			break;
	}
	return 0;
//	[MSave saveMoc];
}
-(void)setGeographyAndMood{
	[self setSeason];
	[self setDayNight];

}

-(void)setThemeSong{
	//[[MBgm getBgm] doVolumeFade];
	[[MBgm getBgm] changeSong:kPGDateThemeSong extension:kPGDateSongType];
	[[MBgm getBgm] playOrPause];
	
	
}

-(void)setViewWithTag{
	[self gkAchiFirstDate];
	[self setThemeSong];
	[self setViewTopTitle];
	[self setViewTopLeftLabel];
	[self setDateHint];
	for (NSUInteger i = 1; i <= kDateViewTotal; i++) {
		if (i != kDateViewHelp && i != kDateHintLabel) {
			[MLoad setViewWithTag:i controller:self.resource];
		}
	}
	
	
	[self decrementBadge];
}

-(void)decrementBadge{
	//decrement date badge
	if ([UIApplication sharedApplication].applicationIconBadgeNumber > 0)
		[UIApplication sharedApplication].applicationIconBadgeNumber -= 1;
}

-(void)setViewTopLeftLabel{
	[(UILabel*)[[(PGDateViewController*)self.resource view] viewWithTag:kDateTopLeftLabel] 
	 setText:NSLocalizedString(kDateTopLeftLabelText,  @"Localized")];
	
}

-(void)setViewTopTitle{
	[(UILabel*)[[(PGDateViewController*)self.resource view] viewWithTag:kDateViewTitle] 
	 setText:NSLocalizedString(kDateTitleText,  @"Localized")];
	
}

-(void)setDateHint{
	NSString* s = [[NSUserDefaults standardUserDefaults] stringForKey:kTmpRegion];
	
	if ([s isEqualToString:kTRRegionA]) {
		[(UILabel*)[[(PGDateViewController*)self.resource view] viewWithTag:kDateHintLabel] 
		 setText:NSLocalizedString(kRegionNameA,  @"Localized")];
		return;
	}
	if ([s isEqualToString:kTRRegionB]) {
		[(UILabel*)[[(PGDateViewController*)self.resource view] viewWithTag:kDateHintLabel] 
		 setText:NSLocalizedString(kRegionNameB,  @"Localized")];
		return;
	}
	if ([s isEqualToString:kTRRegionC]) {
		[(UILabel*)[[(PGDateViewController*)self.resource view] viewWithTag:kDateHintLabel] 
		 setText:NSLocalizedString(kRegionNameC,  @"Localized")];
		return;
	}
	if ([s isEqualToString:kTRRegionD]) {
		[(UILabel*)[[(PGDateViewController*)self.resource view] viewWithTag:kDateHintLabel] 
		 setText:NSLocalizedString(kRegionNameD,  @"Localized")];
		return;
	}
	if ([s isEqualToString:kTRRegionE]) {
		[(UILabel*)[[(PGDateViewController*)self.resource view] viewWithTag:kDateHintLabel] 
		 setText:NSLocalizedString(kRegionNameE,  @"Localized")];
		return;
	}
	if ([s isEqualToString:kTRRegionF]) {
		[(UILabel*)[[(PGDateViewController*)self.resource view] viewWithTag:kDateHintLabel] 
		 setText:NSLocalizedString(kRegionNameF,  @"Localized")];
		return;
	}
	if ([s isEqualToString:kTRRegionG]) {
		[(UILabel*)[[(PGDateViewController*)self.resource view] viewWithTag:kDateHintLabel] 
		 setText:NSLocalizedString(kRegionNameG,  @"Localized")];
		return;
	}
	if ([s isEqualToString:kTRRegionH]) {
		[(UILabel*)[[(PGDateViewController*)self.resource view] viewWithTag:kDateHintLabel] 
		 setText:NSLocalizedString(kRegionNameH,  @"Localized")];
		return;
	}
	if ([s isEqualToString:kTRRegionI]) {
		[(UILabel*)[[(PGDateViewController*)self.resource view] viewWithTag:kDateHintLabel] 
		 setText:NSLocalizedString(kRegionNameI,  @"Localized")];
		return;
	}
	return;
	
	
	
}


-(void)updateSchedule{
	NSLog(@"getDateString: %@", [MUi getDateString]);
	[MEvent deleteEvent:[MUi getDateString]];
}

//set kTmpScriptCharacter in previous Scene, 
//show outfit if kTmpScriptCharacter = lover, showNpc if kTmpScriptCharacter = npc1, npc2, npc3 ...etc
-(void)setOutfitSkinTone:(SkinTone*)s{
	
	NSString* p = [[NSBundle mainBundle] pathForResource:s.image ofType:kTmpFileTypePng];
	//NSLog(@"%@", s);
	
	
	id v = [[(PGDateViewController*)self.resource view] viewWithTag:kDateSkinToneImage];
	
	[(UIImageView*)v setImage:[UIImage imageWithContentsOfFile:p]];
}
-(void)setOutfitCostume:(Costume*)c{
	NSString* p = [[NSBundle mainBundle] pathForResource:c.image ofType:kTmpFileTypePng];
	
	id v = [[(PGDateViewController*)self.resource view] viewWithTag:kDateCostumeImage];
	
	[(UIImageView*)v setImage:[UIImage imageWithContentsOfFile:p]];
}

-(void)setOutfitHairstyle:(Hairstyle*)h{
	NSString* p = [[NSBundle mainBundle] pathForResource:h.image ofType:kTmpFileTypePng];
	
	id v = [[(PGDateViewController*)self.resource view] viewWithTag:kDateHairstyleImage];
	
	[(UIImageView*)v setImage:[UIImage imageWithContentsOfFile:p]];
}
-(void)setOutfitItem:(Item*)i{
	NSString* p = [[NSBundle mainBundle] pathForResource:i.image ofType:kTmpFileTypePng];
	
	id v = [[(PGDateViewController*)self.resource view] viewWithTag:kDateItemImage];
	
	[(UIImageView*)v setImage:[UIImage imageWithContentsOfFile:p]];
}
-(void)setOutfitFacial:(Facial*)f{
	NSString* p = [[NSBundle mainBundle] pathForResource:f.image ofType:kTmpFileTypePng];
	
	id v = [[(PGDateViewController*)self.resource view] viewWithTag:kDateFacialImage];
	
	[(UIImageView*)v setImage:[UIImage imageWithContentsOfFile:p]];
}


//set Outfit for main character
-(void)setOutfit{
	Outfit* o = [MOutfit getOutfit];
	
	SkinTone* skinTone = [MSkinTone getSkinTone:[o.skinTone intValue]];
	[self setOutfitSkinTone:skinTone];
	
	Costume* costume = [MCostume getCostume:[o.costume intValue]];
	[self setOutfitCostume:costume];
	
	//Hairstyle* hairstyle = [MHairstyle getHairstyle:[o.hairstyle intValue]];
	//[self setOutfitHairstyle:hairstyle];
	
	//Item* item = [MItem getItem:[o.item intValue]];
	//[self setOutfitItem:item];
	
	Facial* facial = [MFacial getFacial:[self setMood]];
	[self setOutfitFacial:facial];
	
	
}

-(BOOL)setCurrentScript{
	
	//NSString* s = [[NSUserDefaults standardUserDefaults] stringForKey:kTmpRegion];
	
	//if (![MEvent checkPresetEventExistRegion:s]) {
//		return NO;
//	}
	
	NSDate* date = [NSDate date];
	NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];

	//set kTmpDateArrived for leave
	NSDateFormatter* df0 = [[NSDateFormatter alloc] init];
	[df0 setDateFormat:kDateFormat10];
	[defaults setValue:[df0 stringFromDate:date] forKey:kTmpDateArrived];
	[df0 release];

	
	
	NSDateFormatter* df = [[NSDateFormatter alloc] init];
	[defaults setValue:[df stringFromDate:date] forKey:kTmpScript];
	[df setDateFormat:kDateFormat6];
	NSString* s = [df stringFromDate:date];
	
	
	//Set GameKit Achievement
	if ([s isEqualToString:@"10"]) {
		[self gkAchiEarlyBird];
	} else if ([s isEqualToString:@"23"]) {
		[self gkAchiNightTime];
	}
	NSDate* date1 = [NSDate dateWithTimeIntervalSinceNow:kInterval5minArrived];

	//15 min 1 sec +3, if (NSDate since Now - 301).HH != (now date).HH, +3 Love
	if (![s isEqualToString:[df stringFromDate:date1]]) {

		[df release];
		[self setDateStart:kRegionStart1];
		return YES;
	}
	
	//30 min 1 sec
	NSDate* date2 = [NSDate dateWithTimeIntervalSinceNow:kInterval15minArrived];
	if (![s isEqualToString:[df stringFromDate:date2]]) {
		[df release];
		[self setDateStart:kRegionStart2];
		return YES;
	}
	[self setDateStart:kRegionStart3];
	[defaults setBool:YES forKey:kTmpLate]; //Reset
	[df release];
	
	return NO;

}

-(void)setDateStart:(int)i{
	
	NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
	NSString* r = [defaults stringForKey:kTmpRegion];

	switch (i) {
		case kRegionStart1:
			[self gkAchiGentleman];
			if ([r isEqualToString:kTRRegionA]) {
				[defaults setValue:kEvtGirlDateRegionAStart1 forKey:kTmpScript];
				[defaults setInteger:kTSRegionA forKey:kTmpScriptRegion];
				return;
			}	
			if ([r isEqualToString:kTRRegionB]) {
				[defaults setValue:kEvtGirlDateRegionBStart1 forKey:kTmpScript];
				[defaults setInteger:kTSRegionB forKey:kTmpScriptRegion];
				return;
			}	
			if ([r isEqualToString:kTRRegionC]) {
				[defaults setValue:kEvtGirlDateRegionCStart1 forKey:kTmpScript];
				[defaults setInteger:kTSRegionC forKey:kTmpScriptRegion];
				return;
			}	
			if ([r isEqualToString:kTRRegionD]) {
				[defaults setValue:kEvtGirlDateRegionDStart1 forKey:kTmpScript];
				[defaults setInteger:kTSRegionD forKey:kTmpScriptRegion];
				return;
			}	
			if ([r isEqualToString:kTRRegionE]) {
				[defaults setValue:kEvtGirlDateRegionEStart1 forKey:kTmpScript];
				[defaults setInteger:kTSRegionE forKey:kTmpScriptRegion];
				return;
			}	
			if ([r isEqualToString:kTRRegionF]) {
				[defaults setValue:kEvtGirlDateRegionFStart1 forKey:kTmpScript];
				[defaults setInteger:kTSRegionF forKey:kTmpScriptRegion];
				return;
			}	
			if ([r isEqualToString:kTRRegionG]) {
				[defaults setValue:kEvtGirlDateRegionGStart1 forKey:kTmpScript];
				[defaults setInteger:kTSRegionG forKey:kTmpScriptRegion];
				return;
			}	
			if ([r isEqualToString:kTRRegionH]) {
				[defaults setValue:kEvtGirlDateRegionHStart1 forKey:kTmpScript];
				[defaults setInteger:kTSRegionH forKey:kTmpScriptRegion];
				return;
			}	
			if ([r isEqualToString:kTRRegionI]) {
				[defaults setValue:kEvtGirlDateRegionIStart1 forKey:kTmpScript];
				[defaults setInteger:kTSRegionI forKey:kTmpScriptRegion];
				return;
			}	
			NSLog(@"ActPGDateAutoSetup - setDateStart Error");
			return;
			break;
		case kRegionStart2:
			if ([r isEqualToString:kTRRegionA]) {
				[defaults setValue:kEvtGirlDateRegionAStart2 forKey:kTmpScript];
				[defaults setInteger:kTSRegionA forKey:kTmpScriptRegion];
				return;
			}	
			if ([r isEqualToString:kTRRegionB]) {
				[defaults setValue:kEvtGirlDateRegionBStart2 forKey:kTmpScript];
				[defaults setInteger:kTSRegionB forKey:kTmpScriptRegion];
				return;
			}	
			if ([r isEqualToString:kTRRegionC]) {
				[defaults setValue:kEvtGirlDateRegionCStart2 forKey:kTmpScript];
				[defaults setInteger:kTSRegionC forKey:kTmpScriptRegion];
				return;
			}	
			if ([r isEqualToString:kTRRegionD]) {
				[defaults setValue:kEvtGirlDateRegionDStart2 forKey:kTmpScript];
				[defaults setInteger:kTSRegionD forKey:kTmpScriptRegion];
				return;
			}	
			if ([r isEqualToString:kTRRegionE]) {
				[defaults setValue:kEvtGirlDateRegionEStart2 forKey:kTmpScript];
				[defaults setInteger:kTSRegionE forKey:kTmpScriptRegion];
				return;
			}	
			if ([r isEqualToString:kTRRegionF]) {
				[defaults setValue:kEvtGirlDateRegionFStart2 forKey:kTmpScript];
				[defaults setInteger:kTSRegionF forKey:kTmpScriptRegion];
				return;
			}	
			if ([r isEqualToString:kTRRegionG]) {
				[defaults setValue:kEvtGirlDateRegionGStart2 forKey:kTmpScript];
				[defaults setInteger:kTSRegionG forKey:kTmpScriptRegion];
				return;
			}	
			if ([r isEqualToString:kTRRegionH]) {
				[defaults setValue:kEvtGirlDateRegionHStart2 forKey:kTmpScript];
				[defaults setInteger:kTSRegionH forKey:kTmpScriptRegion];
				return;
			}	
			if ([r isEqualToString:kTRRegionI]) {
				[defaults setValue:kEvtGirlDateRegionIStart2 forKey:kTmpScript];
				[defaults setInteger:kTSRegionI forKey:kTmpScriptRegion];
				return;
			}	
			NSLog(@"ActPGDateAutoSetup - setDateStart Error");
			return;
			break;
		case kRegionStart3:
			if ([r isEqualToString:kTRRegionA]) {
				[defaults setValue:kEvtGirlDateRegionAStart3 forKey:kTmpScript];
				[defaults setInteger:kTSRegionA forKey:kTmpScriptRegion];
				return;
			}	
			if ([r isEqualToString:kTRRegionB]) {
				[defaults setValue:kEvtGirlDateRegionBStart3 forKey:kTmpScript];
				[defaults setInteger:kTSRegionB forKey:kTmpScriptRegion];
				return;
			}	
			if ([r isEqualToString:kTRRegionC]) {
				[defaults setValue:kEvtGirlDateRegionCStart3 forKey:kTmpScript];
				[defaults setInteger:kTSRegionC forKey:kTmpScriptRegion];
				return;
			}	
			if ([r isEqualToString:kTRRegionD]) {
				[defaults setValue:kEvtGirlDateRegionDStart3 forKey:kTmpScript];
				[defaults setInteger:kTSRegionD forKey:kTmpScriptRegion];
				return;
			}	
			if ([r isEqualToString:kTRRegionE]) {
				[defaults setValue:kEvtGirlDateRegionEStart3 forKey:kTmpScript];
				[defaults setInteger:kTSRegionE forKey:kTmpScriptRegion];
				return;
			}	
			if ([r isEqualToString:kTRRegionF]) {
				[defaults setValue:kEvtGirlDateRegionFStart3 forKey:kTmpScript];
				[defaults setInteger:kTSRegionF forKey:kTmpScriptRegion];
				return;
			}	
			if ([r isEqualToString:kTRRegionG]) {
				[defaults setValue:kEvtGirlDateRegionGStart3 forKey:kTmpScript];
				[defaults setInteger:kTSRegionG forKey:kTmpScriptRegion];
				return;
			}	
			if ([r isEqualToString:kTRRegionH]) {
				[defaults setValue:kEvtGirlDateRegionHStart3 forKey:kTmpScript];
				[defaults setInteger:kTSRegionH forKey:kTmpScriptRegion];
				return;
			}	
			if ([r isEqualToString:kTRRegionI]) {
				[defaults setValue:kEvtGirlDateRegionIStart3 forKey:kTmpScript];
				[defaults setInteger:kTSRegionI forKey:kTmpScriptRegion];
				return;
			}	
			NSLog(@"ActPGDateAutoSetup - setDateStart Error");
			return;
			break;
		default:
			break;
	}
	NSLog(@"ActPGDateAutoSetup - setDateStart Error");
	return;
	
}
-(void)updateAndSwitchToPGWalk{
	[self updatePGWalk];
	[self switchViewToPGWalkSV];
}

-(void)updatePGWalk{
	
	NSString* r = [[NSUserDefaults standardUserDefaults] stringForKey:kTmpRegion];
	if ([r isEqualToString:kTRRegionA]) {
		[MUi modifyTag:kWalkBackgroundImage role:kAudUDNumPGWalkOccRegionA scene:kSceneCodePGWalk];
		[MUi modifyTag:kWalkHintLabel role:kAudUDNumPGWalkHintRegionA scene:kSceneCodePGWalk];
		return;
	}
	if ([r isEqualToString:kTRRegionB]) {
		[MUi modifyTag:kWalkBackgroundImage role:kAudUDNumPGWalkOccRegionB scene:kSceneCodePGWalk];
		[MUi modifyTag:kWalkHintLabel role:kAudUDNumPGWalkHintRegionB scene:kSceneCodePGWalk];
		return;
	}
	if ([r isEqualToString:kTRRegionC]) {
		[MUi modifyTag:kWalkBackgroundImage role:kAudUDNumPGWalkOccRegionC scene:kSceneCodePGWalk];
		[MUi modifyTag:kWalkHintLabel role:kAudUDNumPGWalkHintRegionC scene:kSceneCodePGWalk];
		return;
	}
	if ([r isEqualToString:kTRRegionD]) {
		[MUi modifyTag:kWalkBackgroundImage role:kAudUDNumPGWalkOccRegionD scene:kSceneCodePGWalk];
		[MUi modifyTag:kWalkHintLabel role:kAudUDNumPGWalkHintRegionD scene:kSceneCodePGWalk];
		return;
	}
	if ([r isEqualToString:kTRRegionE]) {
		[MUi modifyTag:kWalkBackgroundImage role:kAudUDNumPGWalkOccRegionE scene:kSceneCodePGWalk];
		[MUi modifyTag:kWalkHintLabel role:kAudUDNumPGWalkHintRegionE scene:kSceneCodePGWalk];
		return;
	}
	if ([r isEqualToString:kTRRegionF]) {
		[MUi modifyTag:kWalkBackgroundImage role:kAudUDNumPGWalkOccRegionF scene:kSceneCodePGWalk];
		[MUi modifyTag:kWalkHintLabel role:kAudUDNumPGWalkHintRegionF scene:kSceneCodePGWalk];
		return;
	}
	if ([r isEqualToString:kTRRegionG]) {
		[MUi modifyTag:kWalkBackgroundImage role:kAudUDNumPGWalkOccRegionG scene:kSceneCodePGWalk];
		[MUi modifyTag:kWalkHintLabel role:kAudUDNumPGWalkHintRegionG scene:kSceneCodePGWalk];
		return;
	}
	if ([r isEqualToString:kTRRegionH]) {
		[MUi modifyTag:kWalkBackgroundImage role:kAudUDNumPGWalkOccRegionH scene:kSceneCodePGWalk];
		[MUi modifyTag:kWalkHintLabel role:kAudUDNumPGWalkHintRegionH scene:kSceneCodePGWalk];
		return;
	}
	if ([r isEqualToString:kTRRegionI]) {
		[MUi modifyTag:kWalkBackgroundImage role:kAudUDNumPGWalkOccRegionI scene:kSceneCodePGWalk];
		[MUi modifyTag:kWalkHintLabel role:kAudUDNumPGWalkHintRegionI scene:kSceneCodePGWalk];
		return;
	}
}

-(void)switchViewToPGWalkSV{

	if (![MUi switchViewWithController:@"PGWalkSVController"])
		NSLog(@"ActPGMConfirmRightButtonTUpInside - switchViewToPGWalkSV: failed");	
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
