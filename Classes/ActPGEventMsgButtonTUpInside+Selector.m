//
//  ActPGEventMsgButtonTUpInside+Selector.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGEventMsgButtonTUpInside+Selector.h"

//Controller
#import "PGEventViewController.h"
#import "PGNavController.h"

#import "PGAchiViewController.h"
#import "PGAttrViewController.h"
#import "PGMainSVController.h"
#import "PGDateSVController.h"
#import "PGWalkSVController.h"

//Constants
#import "ConstantsTmpScript.h"
#import "ConstantsPGEvent.h"
#import "ConstantsPGEventEx.h"

#import "ConstantsFileType.h"
#import "ConstantsTmpPopAttr.h"
#import "ConstantsTmpSign.h"

#import "ConstantsGlossaryDatabase.h"
#import "ConstantsModelGeneral.h"
#import "ConstantsSceneCode.h"
#import "ConstantsModelSe.h"

//Method
#import "MUi.h"
#import "MSave.h"
#import "MGirl.h"
#import "MSe.h"
#import "MLoad.h"

#import "Se.h"

static const float f = 1.0f; //animation duration
static const float fSign = 3.0f; //animation duration

static const int tag = 100; //pop attr tag
static const int tagSign = 1000; //sign tag in Main

static const int signHeight = 100; //sign Height
static const int signWeight = 200; //sign Weight


static const int popAttrHeight = 30; //pop attr Height
static const int popAttrWeight = 150; //pop attr Weight

static const int popAttrMoveY = -40; //pop attr Move Y
static const int signMoveY = -200;

static const int kPageSV0 = 0;
static const int kPageSV1 = 1;
static const int kPageSV2 = 2;

@interface ActPGEventMsgButtonTUpInside()

//set tmpPopAttr

-(void)addAttributeNameExp:(NSString*)n1 nameLv:(NSString*)n2 value:(NSInteger)i;
-(void)subAttributeNameExp:(NSString*)n1 nameLv:(NSString*)n2 value:(NSInteger)i;

-(void)showAttribute:(NSString*)s;
-(void)showSignAttribute:(NSString*)s;
-(void)playSoundDate;
-(void)playSoundFail;

@end

@implementation ActPGEventMsgButtonTUpInside(Selector)

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

-(void)setEventBgm{}
-(void)setEventVoice{}
-(void)setEventSound{}
-(void)setEventEffect{}
-(void)setEventAvatar{
	NSDictionary* d = [[[NSUserDefaults standardUserDefaults] 
						valueForKey:self.scriptRec] 
					   valueForKey:kTmpScriptAvatar];
	
	//NSLog(@"%i", [[d valueForKey:kTmpScriptAction] intValue]);

	if ([[d valueForKey:kTmpScriptAction] intValue] == kTmpScriptActNone) 
		return;
	
	id v = [[(PGEventViewController*)self.resource view] viewWithTag:kEventCharacterImage];

	if ([[d valueForKey:kTmpScriptAction] intValue] == kTmpScriptActHide) {
		[(UIImageView*)v setHidden:YES];
		return;
	}
		
	
	
	NSString* s = [d valueForKey:kTmpScriptObject];
	NSString* p = [[NSBundle mainBundle] pathForResource:s ofType:kTmpFileTypePng];
	NSLog(@"%@", p);
	
	
	
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
							   valueForKey:self.scriptRec] 
							  valueForKey:kTmpScriptText];
	
	if ([[d valueForKey:kTmpScriptAction] intValue] == kTmpScriptActNone) {
		return;
	}
	//NSLog(@"%@", scriptRec);

	//NSLog(@"%@",[[[[NSUserDefaults standardUserDefaults] 
	//				   valueForKey:@"script1"] 
	//				  valueForKey:@"text"] 
	//				 valueForKey:@"object"]);
	
	//NSUInteger i = [[NSUserDefaults standardUserDefaults] integerForKey:kTmpScriptCurrent];
//	NSString* s1 = [NSString stringWithFormat:@"%@%i", kTmpScriptDesc, i];
	//NSLog(@"%@", s1);
	

	NSString* s2 = [d valueForKey:kTmpScriptObject];

	//NSLog(@"%@", s2);

	
	id v = [[(PGEventViewController*)self.resource view] viewWithTag:kEventMsgLabel];

	[(UILabel*)v setText:[NSString stringWithFormat:@"%@", NSLocalizedString(s2, @"Localized")]];

//	[MUi modifyUserDefaultWithKey:kTmpScriptCurrent value:++i];

	
}

-(void)refreshPGAchi{
	NSBundle *bundle = [NSBundle mainBundle];
	
	Class class1 = [bundle classNamed:@"PGMainSVController"];
	Class class2 = [bundle classNamed:@"PGDateSVController"];
	Class class3 = [bundle classNamed:@"PGWalkSVController"];
	
	//id instance = [[[class alloc]initWithRole:self.roleCode] autorelease];
	
	id instance = [MUi getCurrentController];
	id vc;
	if ([instance isKindOfClass:class1]){
		NSLog(@"PGMainSVController - refreshPGAttr");
		vc = 
		(PGAchiViewController*)[[(PGMainSVController*)[MUi getCurrentController] viewControllers] 
								objectAtIndex:kPageSV0];
	} else if ([instance isKindOfClass:class2]) {
		vc = 
		(PGAchiViewController*)[[(PGDateSVController*)[MUi getCurrentController] viewControllers] 
								objectAtIndex:kPageSV0];
	} else if ([instance isKindOfClass:class3]) {
		vc = 
		(PGAchiViewController*)[[(PGWalkSVController*)[MUi getCurrentController] viewControllers] 
								objectAtIndex:kPageSV0];
	}
	
	[vc update];
}

-(void)refreshPGAttr{
	NSBundle *bundle = [NSBundle mainBundle];

	Class class1 = [bundle classNamed:@"PGMainSVController"];
	Class class2 = [bundle classNamed:@"PGDateSVController"];
	Class class3 = [bundle classNamed:@"PGWalkSVController"];

	//id instance = [[[class alloc]initWithRole:self.roleCode] autorelease];
	
	id instance = [MUi getCurrentController];
	id vc;
	if ([instance isKindOfClass:class1]){
		NSLog(@"PGMainSVController - refreshPGAttr");
		vc = 
		(PGAttrViewController*)[[(PGMainSVController*)[MUi getCurrentController] viewControllers] 
								objectAtIndex:kPageSV2];
	} else if ([instance isKindOfClass:class2]) {
		vc = 
		(PGAttrViewController*)[[(PGDateSVController*)[MUi getCurrentController] viewControllers] 
								objectAtIndex:kPageSV2];
	} else if ([instance isKindOfClass:class3]) {
		vc = 
		(PGAttrViewController*)[[(PGWalkSVController*)[MUi getCurrentController] viewControllers] 
								objectAtIndex:kPageSV2];
	}
	
	[vc update];
}
-(void)popAttribute{
	
	
	NSUserDefaults* d = [NSUserDefaults standardUserDefaults];
	//NSLog(@"TmpScriptRegion %i", kTSRegionA);
	
	if ([d valueForKey:kTmpScript] == kEvtGirlMissingDate1){
		[self subAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrMinus9];
		[self showAttribute:kTmpPopAttrLove9N];
		
		//sound effect
		[self playSoundFail];

		return;
	}
		
	switch ([d integerForKey:kTmpScriptRegion]) {
			
		//Refer to Event Script
		case kTSRegionA:
		{
			//check date arrived time in PGDate
			if ([[d valueForKey:kTmpScript] isEqualToString:kEvtGirlDateRegionAStart1]){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus3];
				[self showAttribute:kTmpPopAttrLove3];
				break;
			}//+3 love
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionAStart2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;
			}//+1 love
			
			//update in Date Button Pressed
			if ([d valueForKey:kTmpScript] == kEvtGirlDateChatRegionA1){
				[self addAttributeNameExp:kGlossarySportExp nameLv:kGlossarySportLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrHealth2];
				break;
			}//+2 Health// (Sport)
			if ([d valueForKey:kTmpScript] == kEvtGirlDateChatRegionA2){
				[self addAttributeNameExp:kGlossaryMovieExp nameLv:kGlossaryMovieLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrSocial2];
				break;
			}//+2 /Social/ (Movie)
			
			//update in Walk Button Pressed
			if ([d valueForKey:kTmpScript] == kEvtGirlWalkLookRegionA1){
				[self addAttributeNameExp:kGlossarySportExp nameLv:kGlossarySportLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrHealth1];
				break;
			}//+1 Health//
			if ([d valueForKey:kTmpScript] == kEvtGirlWalkLookRegionA2){
				[self addAttributeNameExp:kGlossaryMovieExp nameLv:kGlossaryMovieLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrSocial1];
				break;
			}//+1 /Social/
					
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRomanceRegionA2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;
			} //(+1 Love)
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRomanceRegionA3){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrLove2];
				break;
			} //(+2 Love)
					
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionALeave2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;
			}//(stay more than 5 min, +1 love)
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionALeave3){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus3];
				[self showAttribute:kTmpPopAttrLove3];
				break;
			}//(stay more than 15 min, +3 love)
		
			NSLog(@"popAttribute - no pop event");
			return;	
			
		}
			
		case kTSRegionB:
		{
			//check date arrived time in PGDate
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionBStart1){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus3];
				[self showAttribute:kTmpPopAttrLove3];
				break;
			}//+3 love
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionBStart2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;
			}//+1 love
			
			//update in Date Button Pressed
			if ([d valueForKey:kTmpScript] == kEvtGirlDateChatRegionB1){
				[self addAttributeNameExp:kGlossarySportExp nameLv:kGlossarySportLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrHealth2];
				break;
			}//+2 Health/Social/
			if ([d valueForKey:kTmpScript] == kEvtGirlDateChatRegionB2){
				[self addAttributeNameExp:kGlossaryMovieExp nameLv:kGlossaryMovieLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrSocial2];
				break;
			}//+2 Health/Social/
			
			//update in Walk Button Pressed
			if ([d valueForKey:kTmpScript] == kEvtGirlWalkLookRegionB1){
				[self addAttributeNameExp:kGlossarySportExp nameLv:kGlossarySportLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrHealth1];
				break;
			}//+1 Health
			if ([d valueForKey:kTmpScript] == kEvtGirlWalkLookRegionB2){
				[self addAttributeNameExp:kGlossaryMovieExp nameLv:kGlossaryMovieLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrSocial1];
				break;
			}//+1 Social/
			
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRomanceRegionB1){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;
			} //(+1 Love)
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRomanceRegionB2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrLove2];
				break;
			} //(+2 Love)
			
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionBLeave2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;
			}//(stay more than 5 min, +1 love)
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionBLeave3){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus3];
				[self showAttribute:kTmpPopAttrLove3];
				break;
			}//(stay more than 15 min, +3 love)
		
			NSLog(@"popAttribute - no pop event");
			return;	
			
		}
			
		case kTSRegionC:
		{
			//check date arrived time in PGDate
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionCStart1){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus3];
				[self showAttribute:kTmpPopAttrLove3];
				break;
			}//+3 love
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionCStart2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;
			}//+1 love
			
			//update in Date Button Pressed
			if ([d valueForKey:kTmpScript] == kEvtGirlDateChatRegionC1){
				[self addAttributeNameExp:kGlossarySportExp nameLv:kGlossarySportLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrHealth2];
				break;
			}//+2 Health//
			if ([d valueForKey:kTmpScript] == kEvtGirlDateChatRegionC2){
				[self addAttributeNameExp:kGlossaryMusicExp nameLv:kGlossaryMusicLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrTalent2];
				break;
			}//+2 //Talent
			
			//update in Walk Button Pressed
			if ([d valueForKey:kTmpScript] == kEvtGirlWalkLookRegionC1){
				[self addAttributeNameExp:kGlossarySportExp nameLv:kGlossarySportLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrHealth1];
				break;
			}//+1 Health//
			if ([d valueForKey:kTmpScript] == kEvtGirlWalkLookRegionC2){
				[self addAttributeNameExp:kGlossaryMusicExp nameLv:kGlossaryMusicLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrTalent1];
				break;
			}//+1 //Talent
			
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRomanceRegionC1){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;
			} //(+1 Love)
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRomanceRegionC2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrLove2];
				break;
			} //(+2 Love)
			
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionCLeave2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;
			}//(stay more than 5 min, +1 love)
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionCLeave3){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus3];
				[self showAttribute:kTmpPopAttrLove3];
				break;
			}//(stay more than 15 min, +3 love)
		
			NSLog(@"popAttribute - no pop event");
			return;	
			
		}
			
		case kTSRegionD:
		{
			//check date arrived time in PGDate
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionDStart1){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus3];
				[self showAttribute:kTmpPopAttrLove3];
				break;
			}//+3 love
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionDStart2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;
			}//+1 love
			
			//update in Date Button Pressed
			if ([d valueForKey:kTmpScript] == kEvtGirlDateChatRegionD1){
				[self addAttributeNameExp:kGlossaryMovieExp nameLv:kGlossaryMovieLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrSocial2];
				break;
			}//+2 /Social/
			if ([d valueForKey:kTmpScript] == kEvtGirlDateChatRegionD2){
				[self addAttributeNameExp:kGlossaryMusicExp nameLv:kGlossaryMusicLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrTalent2];
				break;

			}//+2 //Talent
			
			//update in Walk Button Pressed
			if ([d valueForKey:kTmpScript] == kEvtGirlWalkLookRegionD1){
				[self addAttributeNameExp:kGlossaryMovieExp nameLv:kGlossaryMovieLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrSocial1];
				break;

			}//+1 /Social/
			if ([d valueForKey:kTmpScript] == kEvtGirlWalkLookRegionD2){
				[self addAttributeNameExp:kGlossaryMusicExp nameLv:kGlossaryMusicLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrTalent1];
				break;

			}//+1 //Talent
			
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRomanceRegionD1){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;

			} //(+1 Love)
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRomanceRegionD2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrLove2];
				break;

			} //(+2 Love)
			
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionDLeave2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;

			}//(stay more than 5 min, +1 love)
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionDLeave3){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus3];
				[self showAttribute:kTmpPopAttrLove3];
				break;

			}//(stay more than 15 min, +3 love)
		
			NSLog(@"popAttribute - no pop event");
			return;	
			
		}
			
		case kTSRegionE:
		{
			//check date arrived time in PGDate
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionEStart1){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus3];
				[self showAttribute:kTmpPopAttrLove3];
				break;

			}//+3 love
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionEStart2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;

			}//+1 love
			
			//update in Date Button Pressed
			if ([d valueForKey:kTmpScript] == kEvtGirlDateChatRegionE1){
				[self addAttributeNameExp:kGlossaryMovieExp nameLv:kGlossaryMovieLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrSocial2];
				break;

			}//+2 /Social/
			if ([d valueForKey:kTmpScript] == kEvtGirlDateChatRegionE2){
				[self addAttributeNameExp:kGlossaryMusicExp nameLv:kGlossaryMusicLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrTalent2];
				break;

			}//+2 //Talent
			
			//update in Walk Button Pressed
			if ([d valueForKey:kTmpScript] == kEvtGirlWalkLookRegionE1){
				[self addAttributeNameExp:kGlossaryMovieExp nameLv:kGlossaryMovieLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrSocial1];
				break;

			}//+1 /Social/
			if ([d valueForKey:kTmpScript] == kEvtGirlWalkLookRegionE2){
				[self addAttributeNameExp:kGlossaryMusicExp nameLv:kGlossaryMusicLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrTalent1];
				break;

			}//+1 //Talent
			
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRomanceRegionE1){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;

			} //(+1 Love)
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRomanceRegionE2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrLove2];
				break;

			} //(+2 Love)
			
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionELeave2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;

			}//(stay more than 5 min, +1 love)
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionELeave3){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus3];
				[self showAttribute:kTmpPopAttrLove3];
				break;

			}//(stay more than 15 min, +3 love)
			
			NSLog(@"popAttribute - no pop event");
			return;	
			
		}
			
		case kTSRegionF:
		{
			//check date arrived time in PGDate
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionFStart1){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus3];
				[self showAttribute:kTmpPopAttrLove3];
				break;

			}//+3 love
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionFStart2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;

			}//+1 love
			
			//update in Date Button Pressed
			if ([d valueForKey:kTmpScript] == kEvtGirlDateChatRegionF1){
				[self addAttributeNameExp:kGlossaryMovieExp nameLv:kGlossaryMovieLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrSocial2];
				break;

			}//+2 /Social/
			if ([d valueForKey:kTmpScript] == kEvtGirlDateChatRegionF2){
				[self addAttributeNameExp:kGlossaryMusicExp nameLv:kGlossaryMusicLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrTalent2];
				break;

			}//+2 //Talent
			
			//update in Walk Button Pressed
			if ([d valueForKey:kTmpScript] == kEvtGirlWalkLookRegionF1){
				[self addAttributeNameExp:kGlossaryMovieExp nameLv:kGlossaryMovieLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrSocial1];
				break;

			}//+1 /Social/
			if ([d valueForKey:kTmpScript] == kEvtGirlWalkLookRegionF2){
				[self addAttributeNameExp:kGlossaryMusicExp nameLv:kGlossaryMusicLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrTalent1];
				break;

			}//+1 //Talent
			
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRomanceRegionF1){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;

			} //(+1 Love)
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRomanceRegionF2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrLove2];
				break;

			} //(+2 Love)
			
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionFLeave2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;

			}//(stay more than 5 min, +1 love)
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionFLeave3){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus3];
				[self showAttribute:kTmpPopAttrLove3];
				break;

			}//(stay more than 15 min, +3 love)
		
			NSLog(@"popAttribute - no pop event");
			return;	
			
		}
			
		case kTSRegionG:
		{
			//check date arrived time in PGDate
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionGStart1){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus3];
				[self showAttribute:kTmpPopAttrLove3];
				break;

			}//+3 love
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionGStart2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;

			}//+1 love
			
			//update in Date Button Pressed
			if ([d valueForKey:kTmpScript] == kEvtGirlDateChatRegionG1){
				[self addAttributeNameExp:kGlossarySportExp nameLv:kGlossarySportLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrHealth2];
				break;

			}//+2 Health//
			if ([d valueForKey:kTmpScript] == kEvtGirlDateChatRegionG2){
				[self addAttributeNameExp:kGlossaryMusicExp nameLv:kGlossaryMusicLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrTalent2];
				break;

			}//+2 //Talent
			
			//update in Walk Button Pressed
			if ([d valueForKey:kTmpScript] == kEvtGirlWalkLookRegionG1){
				[self addAttributeNameExp:kGlossarySportExp nameLv:kGlossarySportLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrHealth1];
				break;

			}//+1 Health//
			if ([d valueForKey:kTmpScript] == kEvtGirlWalkLookRegionG2){
				[self addAttributeNameExp:kGlossaryMusicExp nameLv:kGlossaryMusicLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrTalent1];
				break;

			}//+1 //Talent
			
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRomanceRegionG1){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;

			} //(+1 Love)
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRomanceRegionG2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrLove2];
				break;

			} //(+2 Love)
			
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionGLeave2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;

			}//(stay more than 5 min, +1 love)
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionGLeave3){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus3];
				[self showAttribute:kTmpPopAttrLove3];
				break;

			}//(stay more than 15 min, +3 love)
		
			NSLog(@"popAttribute - no pop event");
			return;	
			
		}
			
		case kTSRegionH:
		{
			//check date arrived time in PGDate
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionHStart1){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus3];
				[self showAttribute:kTmpPopAttrLove3];
				break;

			}//+3 love
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionHStart2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;

			}//+1 love
			
			//update in Date Button Pressed
			if ([d valueForKey:kTmpScript] == kEvtGirlDateChatRegionH1){
				[self addAttributeNameExp:kGlossarySportExp nameLv:kGlossarySportLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrHealth2];
				break;

			}//+2 Health//
			if ([d valueForKey:kTmpScript] == kEvtGirlDateChatRegionH2){
				[self addAttributeNameExp:kGlossaryMovieExp nameLv:kGlossaryMovieLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrSocial2];
				break;

			}//+2 /Social/
			
			//update in Walk Button Pressed
			if ([d valueForKey:kTmpScript] == kEvtGirlWalkLookRegionH1){
				[self addAttributeNameExp:kGlossarySportExp nameLv:kGlossarySportLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrHealth1];
				break;

			}//+1 Health/
			if ([d valueForKey:kTmpScript] == kEvtGirlWalkLookRegionH2){
				[self addAttributeNameExp:kGlossaryMovieExp nameLv:kGlossaryMovieLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrSocial1];
				break;

			}//+1 Social/
			
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRomanceRegionH1){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;

			} //(+1 Love)
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRomanceRegionH2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrLove2];
				break;

			} //(+2 Love)
			
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionHLeave2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;

			}//(stay more than 5 min, +1 love)
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionHLeave3){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus3];
				[self showAttribute:kTmpPopAttrLove3];
				break;

			}//(stay more than 15 min, +3 love)
		
			NSLog(@"popAttribute - no pop event");
			return;	
			
		}
			
		case kTSRegionI:
		{
			//check date arrived time in PGDate
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionIStart1){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus3];
				[self showAttribute:kTmpPopAttrLove3];
				break;

			}//+3 love
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionIStart2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;

			}//+1 love
			
			//update in Date Button Pressed
			if ([d valueForKey:kTmpScript] == kEvtGirlDateChatRegionI1){
				[self addAttributeNameExp:kGlossarySportExp nameLv:kGlossarySportLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrHealth2];
				break;

			}//+2 Health//
			if ([d valueForKey:kTmpScript] == kEvtGirlDateChatRegionI2){
				[self addAttributeNameExp:kGlossaryMovieExp nameLv:kGlossaryMovieLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrSocial2];
				break;

			}//+2 /Social/
			
			//update in Walk Button Pressed
			if ([d valueForKey:kTmpScript] == kEvtGirlWalkLookRegionI1){
				[self addAttributeNameExp:kGlossarySportExp nameLv:kGlossarySportLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrHealth1];
				break;

			}//+1 Health// (Sport)
			if ([d valueForKey:kTmpScript] == kEvtGirlWalkLookRegionI2){
				[self addAttributeNameExp:kGlossaryMovieExp nameLv:kGlossaryMovieLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrSocial1];
				break;

			}//+1 /Social/ (Movie)
			
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRomanceRegionI1){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;

			} //(+1 Love)
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRomanceRegionI2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus2];
				[self showAttribute:kTmpPopAttrLove2];
				break;

			} //(+2 Love)
			
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionILeave2){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus1];
				[self showAttribute:kTmpPopAttrLove1];
				break;

			}//(stay more than 5 min, +1 love)
			if ([d valueForKey:kTmpScript] == kEvtGirlDateRegionILeave3){
				[self addAttributeNameExp:kGlossaryLoveExp nameLv:kGlossaryLoveLv value:kTmpPopAttrPlus3];
				[self showAttribute:kTmpPopAttrLove3];
				break;

			}//(stay more than 15 min, +3 love)
			
			NSLog(@"popAttribute - no pop event");
			return;
		
		}
		default:
		{
			NSLog(@"PGEventMsgDown - Failed to detect regions");
			return;	
		}
		break;
	}
	
	//sound effect
	[self playSoundDate];
	
	//assign right + attr to action8 (popTalent1, popHealth1, etc)
}

-(void)addAttributeNameExp:(NSString*)n1 nameLv:(NSString*)n2 value:(NSInteger)i{
	//[MGirl addAttributeName:n value:i] 
	[MGirl addAttributeNameExp:(NSString*)n1 nameLv:(NSString*)n2 value:i];
	[MSave saveMoc];
	//NSLog(@"Print exp: %@ lv: %@", [[MGirl getGirl] loveExp], [[MGirl getGirl] loveLv]);

}

-(void)subAttributeNameExp:(NSString*)n1 nameLv:(NSString*)n2 value:(NSInteger)i{
	//[MGirl addAttributeName:n value:i] 
	[MGirl subAttributeNameExp:(NSString*)n1 nameLv:(NSString*)n2 value:i];
	[MSave saveMoc];
	//NSLog(@"Print exp: %@ lv: %@", [[MGirl getGirl] loveExp], [[MGirl getGirl] loveLv]);
	
}

-(void)showAttribute:(NSString*)s{
	PGNavController* nc = [MUi getNavigationController];
	
	UIView* currentModalView = [[[nc topViewController] modalViewController] view];

	UIImageView* iv = [[UIImageView alloc] init];
	iv.tag = tag;
	iv.opaque = NO;
	iv.backgroundColor = [UIColor clearColor];
	NSBundle* bundle = [NSBundle mainBundle];
	
	[iv setImage:[UIImage imageWithContentsOfFile:[bundle pathForResource:s 
																   ofType:@"png"]]];
	
	iv.center = CGPointMake(currentModalView.center.x, currentModalView.center.y);
	iv.bounds = CGRectMake(0, 0, popAttrWeight, popAttrHeight);
	
	[UIView beginAnimations:@"popup" context:nil];
	[UIView setAnimationDuration:f];
	[UIView setAnimationBeginsFromCurrentState:YES];
	
	//iv.bounds = CGRectMake(0, 0, 0, 0);
	iv.center = CGPointMake(currentModalView.center.x, currentModalView.center.y + popAttrMoveY);
	iv.alpha = 0;
	
	[currentModalView addSubview:iv];
	[UIView commitAnimations];
	//[[window viewWithTag:100]removeFromSuperview];
	[[currentModalView viewWithTag:tag] performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:f];
	[iv release];
	

	//NSLog(@"Test Show Attribute");
}


-(void)showSignAttribute:(NSString*)s{
	PGNavController* nc = [MUi getNavigationController];
	
	UIView* currentView = [[nc topViewController] view];
	
	UIImageView* iv = [[UIImageView alloc] init];
	iv.tag = tagSign;
	iv.opaque = NO;
	iv.backgroundColor = [UIColor clearColor];
	NSBundle* bundle = [NSBundle mainBundle];
	
	[iv setImage:[UIImage imageWithContentsOfFile:[bundle pathForResource:s 
																   ofType:@"png"]]];
	
	iv.center = CGPointMake(currentView.center.x, currentView.center.y);
	iv.bounds = CGRectMake(0, 0, signWeight, signHeight);
	
	[UIView beginAnimations:@"popup" context:nil];
	[UIView setAnimationDuration:fSign];
	[UIView setAnimationBeginsFromCurrentState:YES];
	
	//iv.bounds = CGRectMake(0, 0, 0, 0);
	iv.center = CGPointMake(currentView.center.x, currentView.center.y + signMoveY);
	iv.alpha = 0;
	
	[currentView addSubview:iv];
	[UIView commitAnimations];
	//[[window viewWithTag:100]removeFromSuperview];
	[[currentView viewWithTag:tagSign] performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:fSign];
	[iv release];
	
	//NSLog(@"Test Show Attribute");
}


-(void)dismissModal{
	//[MUi modifyUserDefaultWithKey:kTmpScriptLvUp value:kTmpScriptLvUpLove]; //test for sign

	if ([[NSUserDefaults standardUserDefaults] integerForKey:kTmpScriptLvUp] == kTmpScriptLvUpNil) {
		;
	} else if ([[NSUserDefaults standardUserDefaults] integerForKey:kTmpScriptLvUp] == kTmpScriptLvUpLove) {
		[self showSignAttribute:kTmpSignLvUpLove];
		[self playSoundDate];
	} else if ([[NSUserDefaults standardUserDefaults] integerForKey:kTmpScriptLvUp] == kTmpScriptLvUpHealth) {
		[self showSignAttribute:kTmpSignLvUpHealth];
		[self playSoundDate];
	} else if ([[NSUserDefaults standardUserDefaults] integerForKey:kTmpScriptLvUp] == kTmpScriptLvUpSocial) {
		[self showSignAttribute:kTmpSignLvUpSocial];
		[self playSoundDate];
	} else if ([[NSUserDefaults standardUserDefaults] integerForKey:kTmpScriptLvUp] == kTmpScriptLvUpTalent) {
		[self showSignAttribute:kTmpSignLvUpTalent];
		[self playSoundDate];
	}
	[MUi modifyUserDefaultWithKey:kTmpScriptLvUp value:kTmpScriptLvUpNil];

	//sound & show
	[MUi dismissModal];

}

-(void)playSoundDate{
	
	NSArray* array = [MLoad getRecordWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGAll] 
										 Attr2:[NSNumber numberWithInt:kModelSeInfoUi]  
										 Attr3:[NSNumber numberWithInt:kModelSeKindButtonPress2]  
										Entity:kGlossarySe];
	
	
	
	NSString* fn = [(Se*)[array objectAtIndex:0] fileName];
	NSString* ext = [(Se*)[array objectAtIndex:0] extension];
	
	
	[MSe playSound:fn extension:ext];
}

-(void)playSoundFail{
	
	
	[MSe playSound:kSoundFail extension:kSoundFileType];
}

//-(void)dummy{}


@end
