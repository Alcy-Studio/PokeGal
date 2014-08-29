//
//  Auditor+Interpreter.m
//  PocketDraft
//
//  Created by westbugs on 10-09-17.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "Auditor+Interpreter.h"

//Constants
#import "ConstantsAuditor.h"
#import "ConstantsAuditorInterpreter.h"

@implementation Auditor(Interpreter)

-(BOOL)setInterpreter{
	/*
	NSDictionary *test = [[NSDictionary alloc] initWithObjectsAndKeys:
						
						  
						[NSString stringWithFormat:@"%d", kAudIntNumPGMainLArrowTUpInside],      kAudIntTextPGMainLArrowTUpInside,
					   
					   nil];
	NSLog(@"Dictionary Object: %@", [test valueForKey:kAudIntTextPGMainLArrowTUpInside]);
	[test release];
	*/
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   [NSString stringWithFormat:@"%d", kAudIntNumNil],                    kAudIntTextNil, 
					   //PGMain
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMainAutoSetup],		kAudIntTextPGMainAutoSetup,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMainAutoRefresh],      kAudIntTextPGMainAutoRefresh,

					   [NSString stringWithFormat:@"%d", kAudIntNumPGMainLArrowTUpInside],      kAudIntTextPGMainLArrowTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMainLActButtonTUpInside],  kAudIntTextPGMainLActButtonTUpInside,

					   [NSString stringWithFormat:@"%d", kAudIntNumPGMainMActButtonTUpInside],  kAudIntTextPGMainMActButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMainRActButtonTUpInside],  kAudIntTextPGMainRActButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMainRArrowTUpInside],      kAudIntTextPGMainRArrowTUpInside,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMainHelpTUpInside],      kAudIntTextPGMainHelpTUpInside,

					   //PGAchi
					   [NSString stringWithFormat:@"%d", kAudIntNumPGAchiAutoSetup],		kAudIntTextPGAchiAutoSetup,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGAchiAutoRefresh],      kAudIntTextPGAchiAutoRefresh,

					   [NSString stringWithFormat:@"%d", kAudIntNumPGAchiULArrowTUpInside],     kAudIntTextPGAchiULArrowTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGAchiURArrowTUpInside],     kAudIntTextPGAchiURArrowTUpInside,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGAchiULButtonTUpInside],    kAudIntTextPGAchiULButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGAchiUMButtonTUpInside],    kAudIntTextPGAchiUMButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGAchiURButtonTUpInside],    kAudIntTextPGAchiURButtonTUpInside,

					   [NSString stringWithFormat:@"%d", kAudIntNumPGAchiMLButtonTUpInside],    kAudIntTextPGAchiMLButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGAchiMMButtonTUpInside],    kAudIntTextPGAchiMMButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGAchiMRButtonTUpInside],    kAudIntTextPGAchiMRButtonTUpInside,

					   [NSString stringWithFormat:@"%d", kAudIntNumPGAchiBLButtonTUpInside],    kAudIntTextPGAchiBLButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGAchiBMButtonTUpInside],    kAudIntTextPGAchiBMButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGAchiBRButtonTUpInside],    kAudIntTextPGAchiBRButtonTUpInside,

					   [NSString stringWithFormat:@"%d", kAudIntNumPGAchiBLArrowTUpInside],     kAudIntTextPGAchiBLArrowTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGAchiBRArrowTUpInside],     kAudIntTextPGAchiBRArrowTUpInside,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGAchiHelpTUpInside],     kAudIntTextPGAchiHelpTUpInside,

					   //PGAttr (3)
					   [NSString stringWithFormat:@"%d", kAudIntNumPGAttrAutoSetup],		kAudIntTextPGAttrAutoSetup,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGAttrAutoRefresh],      kAudIntTextPGAttrAutoRefresh,

					   [NSString stringWithFormat:@"%d", kAudIntNumPGAttrULArrowTUpInside],     kAudIntTextPGAttrULArrowTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGAttrDButtonTUpInside],     kAudIntTextPGAttrDButtonTUpInside,

					   [NSString stringWithFormat:@"%d", kAudIntNumPGAttrURArrowTUpInside],     kAudIntTextPGAttrURArrowTUpInside,

					   [NSString stringWithFormat:@"%d", kAudIntNumPGAttrBLArrowTUpInside],     kAudIntTextPGAttrBLArrowTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGAttrBRArrowTUpInside],     kAudIntTextPGAttrBRArrowTUpInside,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGAttrHelpTUpInside],     kAudIntTextPGAttrHelpTUpInside,

					   //PGTitle (4)
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTitleAutoSetup],		kAudIntTextPGTitleAutoSetup,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTitleAutoRefresh],      kAudIntTextPGTitleAutoRefresh,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTitleNewButtonTUpInside],     kAudIntTextPGTitleNewButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTitleContinueButtonTUpInside],     kAudIntTextPGTitleContinueButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTitleWebsiteButtonTUpInside],     kAudIntTextPGTitleWebsiteButtonTUpInside,
					   
					   //PGDate (7)
					   [NSString stringWithFormat:@"%d", kAudIntNumPGDateAutoSetup],		kAudIntTextPGDateAutoSetup,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGDateAutoRefresh],      kAudIntTextPGDateAutoRefresh,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGDateLArrowTUpInside],     kAudIntTextPGDateLArrowTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGDateLActButtonTUpInside],     kAudIntTextPGDateLActButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGDateMActButtonTUpInside],     kAudIntTextPGDateMActButtonTUpInside,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGDateRActButtonTUpInside],     kAudIntTextPGDateRActButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGDateRArrowTUpInside],     kAudIntTextPGDateRArrowTUpInside,

					   [NSString stringWithFormat:@"%d", kAudIntNumPGDateHelpTUpInside],     kAudIntTextPGDateHelpTUpInside,

					   //PGWalk (17)
					   [NSString stringWithFormat:@"%d", kAudIntNumPGWalkAutoSetup],		kAudIntTextPGWalkAutoSetup,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGWalkAutoRefresh],      kAudIntTextPGWalkAutoRefresh,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGWalkLArrowTUpInside],     kAudIntTextPGWalkLArrowTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGWalkLActButtonTUpInside],     kAudIntTextPGWalkLActButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGWalkMActButtonTUpInside],     kAudIntTextPGWalkMActButtonTUpInside,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGWalkRActButtonTUpInside],     kAudIntTextPGWalkRActButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGWalkRArrowTUpInside],     kAudIntTextPGWalkRArrowTUpInside,
					   		
					   [NSString stringWithFormat:@"%d", kAudIntNumPGWalkHelpTUpInside],     kAudIntTextPGWalkHelpTUpInside,

					   //PGMap (8)
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapAutoSetup],		kAudIntTextPGMapAutoSetup,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapAutoRefresh],      kAudIntTextPGMapAutoRefresh,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapBackButtonTUpInside],     kAudIntTextPGMapBackButtonTUpInside,

					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapRegionDetailTUpInside],     kAudIntTextPGMapRegionDetailTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapGoButtonTUpInside],     kAudIntTextPGMapGoButtonTUpInside,

					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapGoButtonATUpInside],     kAudIntTextPGMapGoButtonATUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapGoButtonBTUpInside],     kAudIntTextPGMapGoButtonBTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapGoButtonCTUpInside],     kAudIntTextPGMapGoButtonCTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapGoButtonDTUpInside],     kAudIntTextPGMapGoButtonDTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapGoButtonETUpInside],     kAudIntTextPGMapGoButtonETUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapGoButtonFTUpInside],     kAudIntTextPGMapGoButtonFTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapGoButtonGTUpInside],     kAudIntTextPGMapGoButtonGTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapGoButtonHTUpInside],     kAudIntTextPGMapGoButtonHTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapGoButtonITUpInside],     kAudIntTextPGMapGoButtonITUpInside,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapDateButtonATUpInside],     kAudIntTextPGMapDateButtonATUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapDateButtonBTUpInside],     kAudIntTextPGMapDateButtonBTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapDateButtonCTUpInside],     kAudIntTextPGMapDateButtonCTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapDateButtonDTUpInside],     kAudIntTextPGMapDateButtonDTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapDateButtonETUpInside],     kAudIntTextPGMapDateButtonETUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapDateButtonFTUpInside],     kAudIntTextPGMapDateButtonFTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapDateButtonGTUpInside],     kAudIntTextPGMapDateButtonGTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapDateButtonHTUpInside],     kAudIntTextPGMapDateButtonHTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapDateButtonITUpInside],     kAudIntTextPGMapDateButtonITUpInside,

					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapNavButtonATUpInside],     kAudIntTextPGMapNavButtonATUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapNavButtonBTUpInside],     kAudIntTextPGMapNavButtonBTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapNavButtonCTUpInside],     kAudIntTextPGMapNavButtonCTUpInside,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapNavButtonDTUpInside],     kAudIntTextPGMapNavButtonDTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapNavButtonETUpInside],     kAudIntTextPGMapNavButtonETUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapNavButtonFTUpInside],     kAudIntTextPGMapNavButtonFTUpInside,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapNavButtonGTUpInside],     kAudIntTextPGMapNavButtonGTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapNavButtonHTUpInside],     kAudIntTextPGMapNavButtonHTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapNavButtonITUpInside],     kAudIntTextPGMapNavButtonITUpInside,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMapHelpTUpInside],     kAudIntTextPGMapHelpTUpInside,

					   //PGEvent (9)
					   [NSString stringWithFormat:@"%d", kAudIntNumPGEventAutoSetup],		kAudIntTextPGEventAutoSetup,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGEventAutoRefresh],      kAudIntTextPGEventAutoRefresh,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGEventMsgButtonTUpInside],     kAudIntTextPGEventMsgButtonTUpInside,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGEventHelpTUpInside],     kAudIntTextPGEventHelpTUpInside,

					   //PGRomance (10)
					   [NSString stringWithFormat:@"%d", kAudIntNumPGRomanceAutoSetup],		kAudIntTextPGRomanceAutoSetup,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGRomanceAutoRefresh],      kAudIntTextPGRomanceAutoRefresh,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGRomanceMsgButtonTUpInside],     kAudIntTextPGRomanceMsgButtonTUpInside,
					   
					   //PGDetail (11)
					   [NSString stringWithFormat:@"%d", kAudIntNumPGDetailAutoSetup],		kAudIntTextPGDetailAutoSetup,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGDetailAutoRefresh],      kAudIntTextPGDetailAutoRefresh,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGDetailBackButtonTUpInside],     kAudIntTextPGDetailBackButtonTUpInside,

					   [NSString stringWithFormat:@"%d", kAudIntNumPGDetailHelpTUpInside],     kAudIntTextPGDetailHelpTUpInside,

					   //PGArrange (12)
					   [NSString stringWithFormat:@"%d", kAudIntNumPGArrangeAutoSetup],		kAudIntTextPGArrangeAutoSetup,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGArrangeAutoRefresh],      kAudIntTextPGArrangeAutoRefresh,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGArrangeBackButtonTUpInside],     kAudIntTextPGArrangeBackButtonTUpInside,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGArrange10To11ButtonTUpInside],     kAudIntTextPGArrange10To11ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGArrange11To12ButtonTUpInside],     kAudIntTextPGArrange11To12ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGArrange12To13ButtonTUpInside],     kAudIntTextPGArrange12To13ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGArrange13To14ButtonTUpInside],     kAudIntTextPGArrange13To14ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGArrange14To15ButtonTUpInside],     kAudIntTextPGArrange14To15ButtonTUpInside,

					   [NSString stringWithFormat:@"%d", kAudIntNumPGArrange15To16ButtonTUpInside],     kAudIntTextPGArrange15To16ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGArrange16To17ButtonTUpInside],     kAudIntTextPGArrange16To17ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGArrange17To18ButtonTUpInside],     kAudIntTextPGArrange17To18ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGArrange18To19ButtonTUpInside],     kAudIntTextPGArrange18To19ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGArrange19To20ButtonTUpInside],     kAudIntTextPGArrange19To20ButtonTUpInside,

					   [NSString stringWithFormat:@"%d", kAudIntNumPGArrange20To21ButtonTUpInside],     kAudIntTextPGArrange20To21ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGArrange21To22ButtonTUpInside],     kAudIntTextPGArrange21To22ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGArrange22To23ButtonTUpInside],     kAudIntTextPGArrange22To23ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGArrange23To24ButtonTUpInside],     kAudIntTextPGArrange23To24ButtonTUpInside,

					   [NSString stringWithFormat:@"%d", kAudIntNumPGArrangeHelpTUpInside],     kAudIntTextPGArrangeHelpTUpInside,

		
					   //PGPlace (13)
					   [NSString stringWithFormat:@"%d", kAudIntNumPGPlaceAutoSetup],		kAudIntTextPGPlaceAutoSetup,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGPlaceAutoRefresh],      kAudIntTextPGPlaceAutoRefresh,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGPlaceBackButtonTUpInside],     kAudIntTextPGPlaceBackButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGPlaceRegionAButtonTUpInside],     kAudIntTextPGPlaceRegionAButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGPlaceRegionBButtonTUpInside],     kAudIntTextPGPlaceRegionBButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGPlaceRegionCButtonTUpInside],     kAudIntTextPGPlaceRegionCButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGPlaceRegionDButtonTUpInside],     kAudIntTextPGPlaceRegionDButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGPlaceRegionEButtonTUpInside],     kAudIntTextPGPlaceRegionEButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGPlaceRegionFButtonTUpInside],     kAudIntTextPGPlaceRegionFButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGPlaceRegionGButtonTUpInside],     kAudIntTextPGPlaceRegionGButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGPlaceRegionHButtonTUpInside],     kAudIntTextPGPlaceRegionHButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGPlaceRegionIButtonTUpInside],     kAudIntTextPGPlaceRegionIButtonTUpInside,

					   [NSString stringWithFormat:@"%d", kAudIntNumPGPlaceHelpTUpInside],     kAudIntTextPGPlaceHelpTUpInside,

					   //PGSchedule (14)
					   [NSString stringWithFormat:@"%d", kAudIntNumPGScheduleAutoSetup],		kAudIntTextPGScheduleAutoSetup,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGScheduleAutoRefresh],      kAudIntTextPGScheduleAutoRefresh,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGScheduleBackButtonTUpInside],     kAudIntTextPGScheduleBackButtonTUpInside,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGSchedule10To11ButtonTUpInside],     kAudIntTextPGSchedule10To11ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGSchedule11To12ButtonTUpInside],     kAudIntTextPGSchedule11To12ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGSchedule12To13ButtonTUpInside],     kAudIntTextPGSchedule12To13ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGSchedule13To14ButtonTUpInside],     kAudIntTextPGSchedule13To14ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGSchedule14To15ButtonTUpInside],     kAudIntTextPGSchedule14To15ButtonTUpInside,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGSchedule15To16ButtonTUpInside],     kAudIntTextPGSchedule15To16ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGSchedule16To17ButtonTUpInside],     kAudIntTextPGSchedule16To17ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGSchedule17To18ButtonTUpInside],     kAudIntTextPGSchedule17To18ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGSchedule18To19ButtonTUpInside],     kAudIntTextPGSchedule18To19ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGSchedule19To20ButtonTUpInside],     kAudIntTextPGSchedule19To20ButtonTUpInside,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGSchedule20To21ButtonTUpInside],     kAudIntTextPGSchedule20To21ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGSchedule21To22ButtonTUpInside],     kAudIntTextPGSchedule21To22ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGSchedule22To23ButtonTUpInside],     kAudIntTextPGSchedule22To23ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGSchedule23To24ButtonTUpInside],     kAudIntTextPGSchedule23To24ButtonTUpInside,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGScheduleHelpTUpInside],     kAudIntTextPGScheduleHelpTUpInside,

					   //PGTalk (15)
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTalkAutoSetup],		kAudIntTextPGTalkAutoSetup,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTalkAutoRefresh],      kAudIntTextPGTalkAutoRefresh,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTalkMsgButtonTUpInside],     kAudIntTextPGTalkMsgButtonTUpInside,
					   
					   //PGSMS (16)
					   [NSString stringWithFormat:@"%d", kAudIntNumPGSMSAutoSetup],		kAudIntTextPGSMSAutoSetup,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGSMSAutoRefresh],      kAudIntTextPGSMSAutoRefresh,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGSMSBackButtonTUpInside],     kAudIntTextPGSMSBackButtonTUpInside,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGSMSSendButtonTUpInside],     kAudIntTextPGSMSSendButtonTUpInside,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGSMSHelpTUpInside],     kAudIntTextPGSMSHelpTUpInside,

					   //PGTutorPage (18)
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTutorPageAutoSetup],		kAudIntTextPGTutorPageAutoSetup,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTutorPageAutoRefresh],      kAudIntTextPGTutorPageAutoRefresh,
					   		
					   //PGTutorSV (19)
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTutorSVAutoSetup],		kAudIntTextPGTutorSVAutoSetup,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTutorSVAutoRefresh],      kAudIntTextPGTutorSVAutoRefresh,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTutorSVBackButtonTUpInside],     kAudIntTextPGTutorSVBackButtonTUpInside,
					   
					   //PGTutorMenu (20)
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTutorMenuAutoSetup],		kAudIntTextPGTutorMenuAutoSetup,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTutorMenuAutoRefresh],      kAudIntTextPGTutorMenuAutoRefresh,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTutorMenuBackButtonTUpInside],     kAudIntTextPGTutorMenuBackButtonTUpInside,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTutorMenuScene1ButtonTUpInside],     kAudIntTextPGTutorMenuScene1ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTutorMenuScene2ButtonTUpInside],     kAudIntTextPGTutorMenuScene2ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTutorMenuScene3ButtonTUpInside],     kAudIntTextPGTutorMenuScene3ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTutorMenuScene4ButtonTUpInside],     kAudIntTextPGTutorMenuScene4ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTutorMenuScene5ButtonTUpInside],     kAudIntTextPGTutorMenuScene5ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTutorMenuScene6ButtonTUpInside],     kAudIntTextPGTutorMenuScene6ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTutorMenuScene7ButtonTUpInside],     kAudIntTextPGTutorMenuScene7ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTutorMenuScene8ButtonTUpInside],     kAudIntTextPGTutorMenuScene8ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTutorMenuScene9ButtonTUpInside],     kAudIntTextPGTutorMenuScene9ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTutorMenuScene10ButtonTUpInside],     kAudIntTextPGTutorMenuScene10ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTutorMenuScene11ButtonTUpInside],     kAudIntTextPGTutorMenuScene11ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGTutorMenuScene12ButtonTUpInside],     kAudIntTextPGTutorMenuScene12ButtonTUpInside,


					   

					   //PGMConfirm (31)
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMConfirmAutoSetup],		kAudIntTextPGMConfirmAutoSetup,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMConfirmAutoRefresh],      kAudIntTextPGMConfirmAutoRefresh,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMConfirmLeftButtonTUpInside],     kAudIntTextPGMConfirmLeftButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMConfirmRightButtonTUpInside],     kAudIntTextPGMConfirmRightButtonTUpInside,

						//PGMAlert (32)
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMAlertAutoSetup],		kAudIntTextPGMAlertAutoSetup,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMAlertAutoRefresh],      kAudIntTextPGMAlertAutoRefresh,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMAlertMidButtonTUpInside],     kAudIntTextPGMAlertMidButtonTUpInside,
					   
					   
					   //PGMSelection (33)
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMSelectionAutoSetup],		kAudIntTextPGMSelectionAutoSetup,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMSelectionAutoRefresh],      kAudIntTextPGMSelectionAutoRefresh,
					   
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMSelectionChoice1ButtonTUpInside],     kAudIntTextPGMSelectionChoice1ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMSelectionChoice2ButtonTUpInside],     kAudIntTextPGMSelectionChoice2ButtonTUpInside,
					   [NSString stringWithFormat:@"%d", kAudIntNumPGMSelectionChoice3ButtonTUpInside],     kAudIntTextPGMSelectionChoice3ButtonTUpInside,

										
					   nil];
	self.dictionary = d;
	[d release];

	return YES;

}



@end
