//
//  ActPGEventAutoSetup+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGEventAutoSetup+Selector.h"

//Additional
#import "PGEventViewController.h"

//Method
#import "MLoad.h"
#import "MScriptOut.h"
#import "MUi.h"

#import "MOutfit.h"
#import "MSkinTone.h"
#import "MCostume.h"
#import "MHairstyle.h"
#import "MItem.h"
#import "MTime.h"
#import "MFacial.h"

#import "Outfit.h"
#import "Costume.h"
#import "SkinTone.h"
#import "Item.h"
#import "Hairstyle.h"
#import "Facial.h"

//Constants
#import "ConstantsRegions.h"
#import "ConstantsTmpRegion.h"

#import "ConstantsPGEvent.h"
#import "ConstantsTmpScript.h"
#import "ConstantsTmpDate.h"

#import "ConstantsFileType.h"

#import "ConstantsAuditorUserDefaults.h"
#import "ConstantsSceneCode.h"
#import "ConstantsPGEvent.h"

#import "ConstantsSeason.h"
#import "ConstantsDayNight.h"

//Test
#import "MEvent.h"
#import "ConstantsRegions.h"

@interface ActPGEventAutoSetup()

-(void)setViewTopTitle;
-(void)setViewTopLeftLabel;
-(void)setEventHint;

-(void)setEventSkinTone:(SkinTone*)s;
-(void)setEventCostume:(Costume*)c;
-(void)setEventHairstyle:(Hairstyle*)h;
-(void)setEventItem:(Item*)i;
-(void)setEventFacial:(Facial*)f;

-(void)setThing:(NSString *)s;
-(void)setNpc:(NSString *)s;
-(void)setOutfit;
-(void)setOutfitForScript;


-(void)setEventBgm;
-(void)setEventVoice;
-(void)setEventSound;
-(void)setEventEffect;
-(void)setEventAvatar;
-(void)setEventBackground;
-(void)setEventText;

@end

@implementation ActPGEventAutoSetup(Selector)

/*
 typedef enum{
 kEventViewTotal = 9,
 
 kEventView = 0,
 kEventWeatherImage = 1,
 kEventAtPointLabel = 2,
 kEventDayNightImage = 3,
 kEventMoodImage = 4,
 kEventCharacterImage = 5,
 kEventBackgroundImage = 6,
 kEventMsgButton = 7,
 kEventMsgLabel = 8,
 kEventHintLabel = 9,
 
 
 }kPGEvent;
 */

-(void)setSeason{
	NSUInteger i = [MTime getSeason];
	
	switch (i) {
		case kSpring:
			[MUi modifyTag:kEventWeatherImage role:kAudUDNumPGEventSpring scene:kSceneCodePGEvent];
			break;
		case kSummer:
			[MUi modifyTag:kEventWeatherImage role:kAudUDNumPGEventSummer scene:kSceneCodePGEvent];
			break;
		case kAutumn:
			[MUi modifyTag:kEventWeatherImage role:kAudUDNumPGEventAutumn scene:kSceneCodePGEvent];
			break;
		case kWinter:
			[MUi modifyTag:kEventWeatherImage role:kAudUDNumPGEventWinter scene:kSceneCodePGEvent];
			break;
		default:
			NSLog(@"PGEvent - Failed to set Season");
			break;
	}
}
-(void)setDayNight{
	NSUInteger i = [MTime getDayNight];
	
	switch (i) {
		case kDay:
			[MUi modifyTag:kEventDayNightImage role:kAudUDNumPGEventDay scene:kSceneCodePGEvent];
			break;
		case kNight:
			[MUi modifyTag:kEventDayNightImage role:kAudUDNumPGEventNight scene:kSceneCodePGEvent];
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
	[self setViewTopTitle];
	[self setEventHint];
	[self setViewTopLeftLabel];

	for (NSUInteger i = 1; i <= kEventViewTotal; i++) {
		if (i != kEventCharacterImage && i != kEventMsgLabel && i != kEventViewHelp && i != kEventHintLabel)
			[MLoad setViewWithTag:i controller:self.resource];
	}
	
}

-(void)setViewTopTitle{
	[(UILabel*)[[(PGEventViewController*)self.resource view] viewWithTag:kEventViewTitle] 
	 setText:NSLocalizedString(kEventTitleText,  @"Localized")];
	
}

-(void)setViewTopLeftLabel{
	[(UILabel*)[[(PGEventViewController*)self.resource view] viewWithTag:kEventTopLeftLabel] 
	 setText:NSLocalizedString(kEventTopLeftLabelText,  @"Localized")];
	
}

-(void)setEventHint{
	NSString* s = [[NSUserDefaults standardUserDefaults] stringForKey:kTmpRegion];
	
	if ([s isEqualToString:kTRRegionHome]) {
		[(UILabel*)[[(PGEventViewController*)self.resource view] viewWithTag:kEventHintLabel] 
		 setText:NSLocalizedString(kRegionHome,  @"Localized")];
		return;
	}
	if ([s isEqualToString:kTRRegionA]) {
		[(UILabel*)[[(PGEventViewController*)self.resource view] viewWithTag:kEventHintLabel] 
		 setText:NSLocalizedString(kRegionNameA,  @"Localized")];
		return;
	}
	if ([s isEqualToString:kTRRegionB]) {
		[(UILabel*)[[(PGEventViewController*)self.resource view] viewWithTag:kEventHintLabel] 
		 setText:NSLocalizedString(kRegionNameB,  @"Localized")];
		return;
	}
	if ([s isEqualToString:kTRRegionC]) {
		[(UILabel*)[[(PGEventViewController*)self.resource view] viewWithTag:kEventHintLabel] 
		 setText:NSLocalizedString(kRegionNameC,  @"Localized")];
		return;
	}
	if ([s isEqualToString:kTRRegionD]) {
		[(UILabel*)[[(PGEventViewController*)self.resource view] viewWithTag:kEventHintLabel] 
		 setText:NSLocalizedString(kRegionNameD,  @"Localized")];
		return;
	}
	if ([s isEqualToString:kTRRegionE]) {
		[(UILabel*)[[(PGEventViewController*)self.resource view] viewWithTag:kEventHintLabel] 
		 setText:NSLocalizedString(kRegionNameE,  @"Localized")];
		return;
	}
	if ([s isEqualToString:kTRRegionF]) {
		[(UILabel*)[[(PGEventViewController*)self.resource view] viewWithTag:kEventHintLabel] 
		 setText:NSLocalizedString(kRegionNameF,  @"Localized")];
		return;
	}
	if ([s isEqualToString:kTRRegionG]) {
		[(UILabel*)[[(PGEventViewController*)self.resource view] viewWithTag:kEventHintLabel] 
		 setText:NSLocalizedString(kRegionNameG,  @"Localized")];
		return;
	}
	if ([s isEqualToString:kTRRegionH]) {
		[(UILabel*)[[(PGEventViewController*)self.resource view] viewWithTag:kEventHintLabel] 
		 setText:NSLocalizedString(kRegionNameH,  @"Localized")];
		return;
	}
	if ([s isEqualToString:kTRRegionI]) {
		[(UILabel*)[[(PGEventViewController*)self.resource view] viewWithTag:kEventHintLabel] 
		 setText:NSLocalizedString(kRegionNameI,  @"Localized")];
		return;
	}
	
	//Non-Region Base
	s = [[NSUserDefaults standardUserDefaults] stringForKey:kTmpScript];

	//Missing Date
	if ([s isEqualToString:kEvtGirlMissingDate1]) {
		[(UILabel*)[[(PGEventViewController*)self.resource view] viewWithTag:kEventHintLabel] 
		 setText:NSLocalizedString(kMissingDateHint,  @"Localized")];
		return;
	}
	return;
	
	
	
}

//Engraved script into userdefault, set max script and init script
-(void)setCurrentScript{
	NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
	//NSBundle* b = [NSBundle mainBundle];
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];

	//--------------------------Put it in Controller which need to init the event
	//[defaults setValue:@"EvtGirlDateRegionAStart1" forKey:kTmpScript];
	//[defaults setInteger:kTSRegionA forKey:kTmpScriptRegion];

	//if ([MEvent checkPresetEventExistRegion:kRegionA]) {
	//	NSLog(@"Preset Event Exist");
	//}
	//--------------------------
	[defaults setValue:kTmpScriptInitValue forKey:kTmpScriptCurrent];
	//NSString* p = [b pathForResource:@"EvtGirlDateRegionA1" ofType:@"plist"];
	NSString* p = [MScriptOut pathForScript];
	//NSLog(@"Current Event Script: %@", [MScriptOut currentScriptName]);

	NSDictionary *d = [NSDictionary dictionaryWithContentsOfFile:p];
	
	[defaults setValue:[NSNumber numberWithInt:[d count]] forKey:kTmpScriptMax];

	
	
	
	NSArray *a = [NSArray arrayWithArray:[d allKeys]];
	for (NSString *e in a) {
		[defaults setObject:[d valueForKey:e] forKey:e];
	}
	//NSLog(@"%@",[[[defaults valueForKey:@"script0"] valueForKey:@"text"] description]);
	
	[pool release];
}

-(void)initScript{
	[self setEventBgm];
	[self setEventVoice];
	[self setEventSound];
	[self setEventEffect];
	
	//[self setEventAvatar]; //Facial Expression, Add later
	[self setCharacter];
	
	[self setEventBackground];
	[self setEventText];
	
	//increment kTmpScriptCurrent for further dialogue
	[MUi modifyUserDefaultWithKey:kTmpScriptCurrent value:kTmpScriptStart];

}

#pragma mark private
//set kTmpScriptCharacter in previous Scene, 
//show outfit if kTmpScriptCharacter = lover, showNpc if kTmpScriptCharacter = npc1, npc2, npc3 ...etc
-(void)setEventSkinTone:(SkinTone*)s{
	
	NSString* p = [[NSBundle mainBundle] pathForResource:s.image ofType:kTmpFileTypePng];
	//NSLog(@"%@", s);
	
	
	id v = [[(PGEventViewController*)self.resource view] viewWithTag:kEventSkinToneImage];
	
	[(UIImageView*)v setImage:[UIImage imageWithContentsOfFile:p]];
}
-(void)setEventCostume:(Costume*)c{
	NSString* p = [[NSBundle mainBundle] pathForResource:c.image ofType:kTmpFileTypePng];
		
	id v = [[(PGEventViewController*)self.resource view] viewWithTag:kEventCostumeImage];
	
	[(UIImageView*)v setImage:[UIImage imageWithContentsOfFile:p]];
}

-(void)setEventHairstyle:(Hairstyle*)h{
	NSString* p = [[NSBundle mainBundle] pathForResource:h.image ofType:kTmpFileTypePng];
	
	id v = [[(PGEventViewController*)self.resource view] viewWithTag:kEventHairstyleImage];
	
	[(UIImageView*)v setImage:[UIImage imageWithContentsOfFile:p]];
}
-(void)setEventItem:(Item*)i{
	NSString* p = [[NSBundle mainBundle] pathForResource:i.image ofType:kTmpFileTypePng];
	
	id v = [[(PGEventViewController*)self.resource view] viewWithTag:kEventItemImage];
	
	[(UIImageView*)v setImage:[UIImage imageWithContentsOfFile:p]];
}
-(void)setEventFacial:(Facial*)f{
	NSString* p = [[NSBundle mainBundle] pathForResource:f.image ofType:kTmpFileTypePng];
	
	id v = [[(PGEventViewController*)self.resource view] viewWithTag:kEventFacialImage];
	
	[(UIImageView*)v setImage:[UIImage imageWithContentsOfFile:p]];
}


//set Outfit for main character
-(void)setOutfit{
	Outfit* o = [MOutfit getOutfit];
	
	SkinTone* skinTone = [MSkinTone getSkinTone:[o.skinTone intValue]];
	[self setEventSkinTone:skinTone];

	Costume* costume = [MCostume getCostume:[o.costume intValue]];
	[self setEventCostume:costume];

	//Hairstyle* hairstyle = [MHairstyle getHairstyle:[o.hairstyle intValue]];
	//[self setEventHairstyle:hairstyle];

	//Item* item = [MItem getItem:[o.item intValue]];
	//[self setEventItem:item];
	
	Facial* facial = [MFacial getFacial:[o.facial intValue]];
	[self setEventFacial:facial];
	
	NSLog(@"Skintone: %@; Costume: %@", skinTone.image, costume.image);

}

-(void)setOutfitForScript{
	/*
	 extern NSString* const kEvtGirlNewGame1;
	 extern NSString* const kEvtGirlEndGame1;
	 
	 
	 //Date Event
	 extern NSString* const kEvtGirlMissingDate1;
	 
	 //RegionA
	 extern NSString* const kEvtGirlDateChatRegionA1;
	 extern NSString* const kEvtGirlDateChatRegionA2;
	 extern NSString* const kEvtGirlDateChatRegionA3;
	 
	 extern NSString* const kEvtGirlDateRegionALeave1;
	 extern NSString* const kEvtGirlDateRegionALeave2;
	 extern NSString* const kEvtGirlDateRegionALeave3;
	 
	 extern NSString* const kEvtGirlDateRegionAStart1;
	 extern NSString* const kEvtGirlDateRegionAStart2;
	 extern NSString* const kEvtGirlDateRegionAStart3;
	 
	 extern NSString* const kEvtGirlDateRomanceRegionA1;
	 extern NSString* const kEvtGirlDateRomanceRegionA2;
	 extern NSString* const kEvtGirlDateRomanceRegionA3;
	 
	 */
	
	Outfit* o = [MOutfit getOutfit];
	
		
	if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlNewGame1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl1]; //Angry
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlEndGame1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		o.costume = [NSNumber numberWithInt:kAudUDNumOutfitCostumeGirl3]; //Love

		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlMissingDate1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl1]; //Angry
		return;
	} 
	
	//Chat
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionA1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionA2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionA3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} 
	
	//Leave
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionALeave1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl5]; //Sad
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionALeave2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionALeave3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl2]; //Happy
		return;
	} 
	
	//Start
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionAStart1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl2]; //Happy
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionAStart2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionAStart3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl5]; //Sad
		return;
	} 
	
	//Romance
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionA1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionA2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionA3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} 
	
	//-----
	//Chat
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionB1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionB2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionB3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} 
	
	//Leave
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionBLeave1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl5]; //Sad
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionBLeave2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionBLeave3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl2]; //Happy
		return;
	} 
	
	//Start
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionBStart1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl2]; //Happy
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionBStart2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionBStart3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl5]; //Sad
		return;
	} 
	
	//Romance
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionB1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionB2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionB3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} 
	
	//-----
	//Chat
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionC1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionC2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionC3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} 
	
	//Leave
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionCLeave1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl5]; //Sad
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionCLeave2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionCLeave3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl2]; //Happy
		return;
	} 
	
	//Start
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionCStart1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl2]; //Happy
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionCStart2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionCStart3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl5]; //Sad
		return;
	} 
	
	//Romance
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionC1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionC2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionC3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} 
	
	//-----
	//Chat
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionD1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionD2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionD3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} 
	
	//Leave
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionDLeave1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl5]; //Sad
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionDLeave2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionDLeave3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl2]; //Happy
		return;
	} 
	
	//Start
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionDStart1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl2]; //Happy
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionDStart2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionDStart3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl5]; //Sad
		return;
	} 
	
	//Romance
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionD1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionD2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionD3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} 
	
	//-----
	//Chat
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionE1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionE2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionE3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} 
	
	//Leave
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionELeave1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl5]; //Sad
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionELeave2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionELeave3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl2]; //Happy
		return;
	} 
	
	//Start
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionEStart1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl2]; //Happy
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionEStart2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionEStart3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl5]; //Sad
		return;
	} 
	
	//Romance
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionE1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionE2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionE3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} 
	
	//-----
	//Chat
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionF1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionF2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionF3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} 
	
	//Leave
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionFLeave1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl5]; //Sad
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionFLeave2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionFLeave3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl2]; //Happy
		return;
	} 
	
	//Start
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionFStart1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl2]; //Happy
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionFStart2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionFStart3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl5]; //Sad
		return;
	} 
	
	//Romance
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionF1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionF2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionF3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} 
	
	//-----
	//Chat
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionG1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionG2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionG3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} 
	
	//Leave
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionGLeave1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl5]; //Sad
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionGLeave2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionGLeave3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl2]; //Happy
		return;
	} 
	
	//Start
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionGStart1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl2]; //Happy
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionGStart2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionGStart3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl5]; //Sad
		return;
	} 
	
	//Romance
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionG1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionG2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionG3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} 
	
	//-----
	//Chat
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionH1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionH2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionH3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} 
	
	//Leave
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionHLeave1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl5]; //Sad
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionHLeave2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionHLeave3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl2]; //Happy
		return;
	} 
	
	//Start
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionHStart1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl2]; //Happy
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionHStart2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionHStart3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl5]; //Sad
		return;
	} 
	
	//Romance
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionH1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionH2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionH3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} 
	
	//-----
	//Chat
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionI1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionI2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateChatRegionI3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} 
	
	//Leave
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionILeave1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl5]; //Sad
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionILeave2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionILeave3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl2]; //Happy
		return;
	} 
	
	//Start
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionIStart1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl2]; //Happy
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionIStart2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl4]; //Normal
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRegionIStart3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl5]; //Sad
		return;
	} 
	
	//Romance
	else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionI1]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionI2]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} else if ([[MScriptOut currentScriptName] isEqualToString:kEvtGirlDateRomanceRegionI3]){
		o.facial = [NSNumber numberWithInt:kAudUDNumOutfitFacialGirl3]; //Love
		return;
	} 
	
		
}

//set Object for item, look view
-(void)setThing:(NSString*)s{
	NSString* p = [[NSBundle mainBundle] pathForResource:s ofType:kTmpFileTypePng];
	//NSLog(@"%@", s);
	
	
	id v = [[(PGEventViewController*)self.resource view] viewWithTag:kEventItemImage];
	
	[(UIImageView*)v setImage:[UIImage imageWithContentsOfFile:p]];
}

//set Costume for Npc (not include facial)
-(void)setNpc:(NSString*)s{

	NSString* p = [[NSBundle mainBundle] pathForResource:s ofType:kTmpFileTypePng];
	//NSLog(@"%@", s);
	
	
	id v = [[(PGEventViewController*)self.resource view] viewWithTag:kEventCostumeImage];
	
	[(UIImageView*)v setImage:[UIImage imageWithContentsOfFile:p]];
}

//if avatar is not equal to "lover", it will become the image npc need to show
-(void)setCharacter{
	NSDictionary* d = [[[NSUserDefaults standardUserDefaults] 
						valueForKey:kTmpScript0] 
					   valueForKey:kTmpScriptAvatar];
	NSLog(@"Action %@; Object %@", [d valueForKey:kTmpScriptAction], [d valueForKey:kTmpScriptObject]);
	if ([[d valueForKey:kTmpScriptAction] intValue] == kTmpScriptActNone) {
		return;
	}
	
	NSString* s = [d valueForKey:kTmpScriptObject];
	
	//avatar == lover
	if ([s isEqualToString:kTmpScriptLover]) {
		[self setOutfitForScript];
		[self setOutfit];
		return;
	}
	
	//avatar == thing or (new)preset is true
	BOOL preset = [[NSUserDefaults standardUserDefaults] boolForKey:kTmpScriptPresetBool]; 

	//if ([s isEqualToString:kTmpScriptThing]) {
//		[self setThing:s];
//		return;
//	}
	
	if (preset == YES) {
		[MUi modifyUserDefaultWithKey:kTmpScriptPresetBool boolVal:NO];
		[self setThing:s];
		return;
	}
	
	[self setNpc:s];
}


-(void)setEventBgm{}
-(void)setEventVoice{}
-(void)setEventSound{}
-(void)setEventEffect{}

//Facial
-(void)setEventAvatar{
	NSDictionary* d = [[[NSUserDefaults standardUserDefaults] 
						valueForKey:kTmpScript0] 
					   valueForKey:kTmpScriptAvatar];
	
	if ([[d valueForKey:kTmpScriptAction] intValue] == kTmpScriptActNone) {
		return;
	}
	
	NSString* s = [d valueForKey:kTmpScriptObject];
	NSString* p = [[NSBundle mainBundle] pathForResource:s ofType:kTmpFileTypePng];
	//NSLog(@"%@", s);
	
	
	id v = [[(PGEventViewController*)self.resource view] viewWithTag:kEventCharacterImage];
	
	[(UIImageView*)v setImage:[UIImage imageWithContentsOfFile:p]];

}
-(void)setEventBackground{
	NSDictionary* d = [[[NSUserDefaults standardUserDefaults] 
						valueForKey:kTmpScript0] 
					   valueForKey:kTmpScriptBackground];
	//NSLog(@"Action %@; Object %@", [d valueForKey:kTmpScriptAction], [d valueForKey:kTmpScriptObject]);
	if ([[d valueForKey:kTmpScriptAction] intValue] == kTmpScriptActNone) {
		return;
	}
	
	NSString* s = [d valueForKey:kTmpScriptObject];
	
	NSString* p = [[NSBundle mainBundle] pathForResource:s ofType:kTmpFileTypePng];
	//NSLog(@"%@", s);
	
	
	id v = [[(PGEventViewController*)self.resource view] viewWithTag:kEventBackgroundImage];
	
	[(UIImageView*)v setImage:[UIImage imageWithContentsOfFile:p]];
	
	
	
}
-(void)setEventText{
	NSDictionary* d = [[[NSUserDefaults standardUserDefaults] 
						valueForKey:kTmpScript0] 
					   valueForKey:kTmpScriptText];
	
	if ([[d valueForKey:kTmpScriptAction] intValue] == kTmpScriptActNone) {
		return;
	}
	
	NSString* s = [d valueForKey:kTmpScriptObject];
	
	//NSLog(@"%@", s);
	
	
	id v = [[(PGEventViewController*)self.resource view] viewWithTag:kEventMsgLabel];
	
	[(UILabel*)v setText:[NSString stringWithFormat:@"%@", NSLocalizedString(s, @"Localized")]];
}

@end
