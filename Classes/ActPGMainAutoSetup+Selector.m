//
//  ActPGMainAutoSetup+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMainAutoSetup+Selector.h"

//Additional
#import "PGMainSVController.h"
#import "PGMainViewController.h"

	//Method

#import "MGame.h"
#import "MLoad.h"
#import "MUi.h"
#import "MGirl.h"
#import "MSave.h"
#import "MTime.h"
#import "MSe.h"
#import "MBgm.h"

//Constants
#import "ConstantsPGMain.h"
#import "ConstantsActionAlert.h"
#import "ConstantsSettingInGame.h"

#import "ConstantsStringFormat.h"
#import "ConstantsTmpScript.h"
#import "ConstantsTmpAction.h"
#import "ConstantsTmpDate.h"
#import "ConstantsTmpRegion.h"

#import "ConstantsSceneCode.h"
#import "ConstantsSeason.h"
#import "ConstantsDayNight.h"

#import "ConstantsAuditorUserDefaults.h"

#import "ConstantsTmpSign.h"
#import "ConstantsGlossaryDatabase.h"
#import "ConstantsModelGeneral.h"
#import "ConstantsModelSe.h"
#import "ConstantsPGMainEx.h"

#import "ConstantsSetting.h"

#import "Se.h"


//int const pkSVController = 1;
//Test
#import "TestAction.h"

static const float kDelay = 0.1f;

static const int kInterval15minDeparted = 901;
static const int kInterval30minDeparted = 1801;

static const int tagSign = 1000;
static const int signHeight = 100;
static const int signWeight = 200;
static const int fSign = 3.0f;
static const int signMoveY = -200;

static const int kRatingSubAtMax = -3;

@interface ActPGMainAutoSetup ()

-(void)gkAchiBeautifulDay;

-(void)gkAchiJerk;

-(void)gkAchiTreasure;

-(void)gkAchiForeverLove;
-(void)setViewTopTitle;
-(void)setViewTopLeftLabel;

-(void)showSignAttribute:(NSString *)s;
-(void)playSoundDate;
-(void)giftSign;
-(void)setThemeSong;

-(void)setRating;

@end

@implementation ActPGMainAutoSetup(Selector)

-(void)gkAchiBeautifulDay{
	[MGame reportAchievementIdentifier:@"PokeGalAchi10" percentComplete:100.0f];

}


-(void)gkAchiJerk{
	[MGame reportAchievementIdentifier:@"PokeGalAchi5" percentComplete:100.0f];

}


-(void)gkAchiTreasure{
	
	
	float f = [[[MGirl getGirl] giftTotal] floatValue] / 9 ;
	f *= 100;
	
	
	[MGame reportAchievementIdentifier:@"PokeGalAchi3" percentComplete: f];

}
-(void)gkAchiForeverLove{
	[MGame reportAchievementIdentifier:@"PokeGalAchi2" percentComplete:100.0f];

}

-(BOOL)checkRatingExpired{
	//[[NSUserDefaults standardUserDefaults] setBool:NO forKey:kRatingExpiry];
	return YES;
}

-(void)setRating{
	/*
	User UserDefault to record, whenever init PGMain, auto check ratingAvailable.
	
	if nil, set kRatingAvailable to NO, 
		
	if equal to NO,  
		if ratingExpired earlier than enabled ratingButton,
			
	If equal to YES, check ratingExpired, 
		if ratingExpired earlier than now, YES expired
			set rating to NO, sub 3 to AP Max, enabled ratingButton
				
	--------------------

	*/
	
//	NSLog(@"KRating Enabled %@", [[NSUserDefaults standardUserDefaults] valueForKey:kRatingAvailable]);
	if ([[NSUserDefaults standardUserDefaults] valueForKey:kRatingAvailable] == nil) {
		NSLog(@"KRating = nil");
		[[NSUserDefaults standardUserDefaults] setBool:NO forKey:kRatingAvailable];

	}
	
	if (![[NSUserDefaults standardUserDefaults] boolForKey:kRatingAvailable]) {
		NSLog(@"KRating = Not");
		
		//Enable Rating Button
		[(UIButton*)[[(PGMainViewController*)self.resource view] viewWithTag:kMainRatingButton] 
		 setEnabled:YES];

	} else {
		if ([self checkRatingExpired]) {
			[[NSUserDefaults standardUserDefaults] setBool:NO forKey:kRatingAvailable];
			//sub 3 to AP Max

			[MGirl sumAtMax:kRatingSubAtMax]; 
			[MSave saveMoc];
			//Enable Rating Button
			[(UIButton*)[[(PGMainViewController*)self.resource view] viewWithTag:kMainRatingButton] 
			 setEnabled:YES];
		}
	}

	
	//[[NSUserDefaults standardUserDefaults] setBool:NO forKey:kRatingEnabled];

}

-(void)setSeason{
	NSUInteger i = [MTime getSeason];
	
	switch (i) {
		case kSpring:
			[MUi modifyTag:kMainWeatherImage role:kAudUDNumPGMainSpring scene:kSceneCodePGMain];
			break;
		case kSummer:
			[MUi modifyTag:kMainWeatherImage role:kAudUDNumPGMainSummer scene:kSceneCodePGMain];
			break;
		case kAutumn:
			[MUi modifyTag:kMainWeatherImage role:kAudUDNumPGMainAutumn scene:kSceneCodePGMain];
			break;
		case kWinter:
			[MUi modifyTag:kMainWeatherImage role:kAudUDNumPGMainWinter scene:kSceneCodePGMain];
			break;
		default:
			NSLog(@"PGMain - Failed to set Season");
			break;
	}
}
-(void)setDayNight{
	NSUInteger i = [MTime getDayNight];
	
	switch (i) {
		case kDay:
			[MUi modifyTag:kMainDayNightImage role:kAudUDNumPGMainDay scene:kSceneCodePGMain];
			break;
		case kNight:
			[MUi modifyTag:kMainDayNightImage role:kAudUDNumPGMainNight scene:kSceneCodePGMain];
			break;
		default:
			break;
	}
}

-(void)setGeography{
	[self setSeason];
	[self setDayNight];
}

//dependencies are resolve in individual operation (e.g. selectorTest1)
-(void)selectorTest1{
	NSLog(@"selectorTest1");
	/*
	TestAction* ta = [[TestAction alloc]init];
	[ta testPredicate];
	[ta release];
	*/
}

-(void)selectorTest2{
	NSLog(@"selectorTest2");
	/*
	TestAction* ta = [[TestAction alloc]init];
	[ta checkDatabase];
	[ta release];
	*/
	//NSArray* arrayOfOqs = [[NSArray alloc]initWithObjects:<#(id)firstObj#>];

}

-(void)setViewWithTag{
	
	//if (isGameCenterAPIAvailable())
//		NSLog(@"YES");
//	else
//		NSLog(@"Failed");
	[self setThemeSong];
	
	[self setViewTopTitle];
	[self setViewTopLeftLabel];
	//[self setRating];
	for (NSUInteger i = 1; i <= kMainViewTotal; i++) {
		if (i != kMainViewHelp) 
			[MLoad setViewWithTag:i controller:self.resource];
		
	}
	
	[self gkAchiTreasure];
	
}

-(void)setThemeSong{
	if ([[MBgm getBgm].currentBgm isEqualToString:kPGMainThemeSong])
		return;
		
	[[MBgm getBgm] changeSong:kPGMainThemeSong extension:kPGMainSongType];
	[[MBgm getBgm] playOrPause];
}

-(void)setViewTopLeftLabel{
	[(UILabel*)[[(PGMainViewController*)self.resource view] viewWithTag:kMainTopLeftLabel] 
	 setText:NSLocalizedString(kMainTopLeftLabelText,  @"Localized")];
	
}

-(void)setViewTopTitle{
	[(UILabel*)[[(PGMainViewController*)self.resource view] viewWithTag:kMainViewTitle] 
	 setText:NSLocalizedString(kMainTitleText,  @"Localized")];
	 	
}

-(void)getDepart:(NSUInteger)r{
	NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
	
	NSDateFormatter* df0 = [[NSDateFormatter alloc] init];
	[df0 setDateFormat:kDateFormat10];
	NSDate* arrivedDate = [df0 dateFromString:[defaults stringForKey:kTmpDateArrived]];

	NSString* s = [df0 stringFromDate:[NSDate date]];
	NSDate* nowDate = [df0 dateFromString:s];
	[df0 release];
	//clear tmpAction
	NSUInteger i =[nowDate timeIntervalSinceDate:arrivedDate];
	
	if (i >= kInterval30minDeparted) {
		[self gkAchiBeautifulDay];
	}
	
	//NSLog(@"Interval: %i", i);
	switch (r) {
		case kTSRegionA:
			if (i < kInterval15minDeparted) {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionALeave1 forKey:kTmpScript];
			} else if (i < kInterval30minDeparted) {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionALeave2 forKey:kTmpScript];
			} else {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionALeave3 forKey:kTmpScript];
			}

			break;
		case kTSRegionB:
			if (i < kInterval15minDeparted) {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionBLeave1 forKey:kTmpScript];
			} else if (i < kInterval30minDeparted) {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionBLeave2 forKey:kTmpScript];
			} else {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionBLeave3 forKey:kTmpScript];
			}
			
			break;
		case kTSRegionC:
			if (i < kInterval15minDeparted) {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionCLeave1 forKey:kTmpScript];
			} else if (i < kInterval30minDeparted) {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionCLeave2 forKey:kTmpScript];
			} else {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionCLeave3 forKey:kTmpScript];
			}
			
			break;
		case kTSRegionD:
			if (i < kInterval15minDeparted) {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionDLeave1 forKey:kTmpScript];
			} else if (i < kInterval30minDeparted) {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionDLeave2 forKey:kTmpScript];
			} else {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionDLeave3 forKey:kTmpScript];
			}
			
			break;
		case kTSRegionE:
			if (i < kInterval15minDeparted) {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionELeave1 forKey:kTmpScript];
			} else if (i < kInterval30minDeparted) {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionELeave2 forKey:kTmpScript];
			} else {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionELeave3 forKey:kTmpScript];
			}
			
			break;
		case kTSRegionF:
			if (i < kInterval15minDeparted) {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionFLeave1 forKey:kTmpScript];
			} else if (i < kInterval30minDeparted) {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionFLeave2 forKey:kTmpScript];
			} else {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionFLeave3 forKey:kTmpScript];
			}
			
			break;
		case kTSRegionG:
			if (i < kInterval15minDeparted) {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionGLeave1 forKey:kTmpScript];
			} else if (i < kInterval30minDeparted) {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionGLeave2 forKey:kTmpScript];
			} else {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionGLeave3 forKey:kTmpScript];
			}
			
			break;
		case kTSRegionH:
			if (i < kInterval15minDeparted) {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionHLeave1 forKey:kTmpScript];
			} else if (i < kInterval30minDeparted) {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionHLeave2 forKey:kTmpScript];
			} else {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionHLeave3 forKey:kTmpScript];
			}
			
			break;
		case kTSRegionI:
			if (i < kInterval15minDeparted) {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionILeave1 forKey:kTmpScript];
			} else if (i < kInterval30minDeparted) {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionILeave2 forKey:kTmpScript];
			} else {
				[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlDateRegionILeave3 forKey:kTmpScript];
			}
			
			break;
		default:
			NSLog(@"PGMain - Failed to getDepart");
			break;
	}
	
}

//set Depart Script
-(void)setTmpScript{ 
	NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
	//[defaults setInteger:kTSRegionA forKey:kTmpScriptRegion];
	NSUInteger ui = [defaults integerForKey:kTmpScriptRegion];

	[self getDepart:ui];

}

-(void)delayGiftSign{
	[self performSelector:@selector(giftSign) withObject:nil afterDelay:kDelay];
}

-(void)giftSign{
	//[MUi modifyUserDefaultWithKey:kTmpScriptObtainGift boolVal:YES]; //clear

	if ([[NSUserDefaults standardUserDefaults] boolForKey:kTmpScriptObtainGift] == NO) {
		return;
	}
	[MUi modifyUserDefaultWithKey:kTmpScriptObtainGift boolVal:NO]; //clear
	[self showSignAttribute:kTmpSignGetGift];
	[self playSoundDate];
}

-(BOOL)checkEvent{

	
	if ([self checkDateLeave]) {
		//set Leave
		[self setTmpScript];
		return YES;
	}
	if ([self checkOpening]) {
		return YES;
	}
	if ([self checkEnding]) {
		return YES;
	}
	
	return NO;
}
-(BOOL)checkDateLeave{
	NSInteger i = [[NSUserDefaults standardUserDefaults] integerForKey:kTmpAction];
	
	if(i == kTmpActionDateLeaveButton){
		//Clear leave
		[[NSUserDefaults standardUserDefaults] setInteger:kTmpActionNil forKey:kTmpAction];
		return YES;
	}
	return NO;

	//if tmpAction
}

-(BOOL)checkOpening{
	//check opening flag from MGirl
	Girl* g = [MGirl getGirl];
	//NSLog(@"Opening: %@;", g.opening);
	
	//(g.opening) check nil
	//([g.opening boolValue]) check BOOL
	if(![g.opening boolValue])
		return NO;
	
	//set script
	[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlNewGame1 forKey:kTmpScript];
	
	//set Region
	[MUi modifyUserDefaultWithKey:kTmpRegion stringVal:kTRRegionHome];
	
	//set opening
	g.opening = [NSNumber numberWithBool:NO];
	[MSave saveMoc];
	return YES;
}

-(BOOL)checkEnding{
	//check ending flag from MGirl
	Girl* g = [MGirl getGirl];
	NSLog(@"Ending: %@; LoveLv: %@; giftTotal %@", g.ending, g.loveLv, g.giftTotal);
	
	//(g.ending) check nil
	//([g.ending boolValue]) check BOOL
	if([g.ending boolValue])
		return NO;
	//check Love Lv & items collection from MGirl
	if ([g.loveLv intValue] < kLvMax || [g.giftTotal intValue] < kGiftMax) {
		return NO;
	}
	
	//set script
	[self gkAchiForeverLove];
	[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlEndGame1 forKey:kTmpScript];

	//set ending
	g.ending = [NSNumber numberWithBool:YES];
	[MSave saveMoc];
	return YES;
	
}



-(void)presentDelayModal{
	//NSLog(@"%@", [NSNumber numberWithBool:[[MUi getCurrentController] isViewLoaded]]);
	[self performSelector:@selector(presentModalPGEvent) withObject:nil afterDelay:kDelay];
	//perform delay views enabled
	//[(PGMainViewController*)[MUi getCurrentController] viewDidAppear:NO];
}
-(void)presentModalPGEvent{
	if (![(PGMainViewController*)[MUi getCurrentController] modalViewController]) {
		[MUi presentModal:@"PGEventViewController" transition:UIModalTransitionStyleCrossDissolve animated:YES];
		return;
	}
	[self presentDelayModal];
	
}

-(void)presentMissingDate{
	//add eventScript & set PGEvent
	[[NSUserDefaults standardUserDefaults] setInteger:0 forKey:kTmpMissingDate];
	
	//tmpScript & Evt
	[[NSUserDefaults standardUserDefaults] setValue:kEvtGirlMissingDate1 forKey:kTmpScript];
	
	[self presentDelayModal];
	
	[self gkAchiJerk];
	//[self performSelector:@selector(presentModalPGEvent) withObject:nil afterDelay:kDelay];
//
//	if LoveLv > 1
//		loveLv - 1
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

-(void)playSoundDate{
	
	NSArray* array = [MLoad getRecordWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGAll] 
										 Attr2:[NSNumber numberWithInt:kModelSeInfoUi]  
										 Attr3:[NSNumber numberWithInt:kModelSeKindButtonPress2]  
										Entity:kGlossarySe];
	
	
	
	NSString* fn = [(Se*)[array objectAtIndex:0] fileName];
	NSString* ext = [(Se*)[array objectAtIndex:0] extension];
	
	
	[MSe playSound:fn extension:ext];
}

/*
-(void)setupAlertView{
	NSInteger i = [(NSNumber*)[[NSUserDefaults standardUserDefaults] valueForKey:kTmpActionAlert] intValue];
	switch (i) {
		case kTmpActionAlertReset:
			return;
			break;
		case kAlertViewPGPlaceDisplayAtDeduction:
			[MUi alertViewPGPlaceDisplayAtDeduction];
			break;

		default:
			break;
	}
	[MUi modifyUserDefaultWithKey:kTmpActionAlert value:kTmpActionAlertReset];
}
*/
/*
-(void)setViewWithTag:(NSNumber*)t{
	//NSLog(@"%@",[self.resource description]);
	[MLoad setViewWithTag:[t unsignedIntValue] controller:self.resource];
}
*/

/*
- (NSArray*)selectorQueue1{
 //- (NSArray*)selectorQueue1:(id)data{

	
	NSInvocationOperation* op1 = [[[NSInvocationOperation alloc] initWithTarget:self
						selector:@selector(myTaskMethod) object:nil] autorelease];
 
	NSInvocationOperation* op2 = [[[NSInvocationOperation alloc] initWithTarget:self
						selector:@selector(myTaskMethod:) object:data] autorelease];
 
	NSInvocationOperation* op3 = [[[NSInvocationOperation alloc] initWithTarget:MLoad
						selector:@selector(load:) object:nil] autorelease];

	NSArray* aOfOps = [[NSArray alloc]initWithObjects:op1, op2, op3, nil];

	[op1 release]; [op2 release]; [op3 release];
 
	return [aOfops autorelease];
}
 

 */


@end
