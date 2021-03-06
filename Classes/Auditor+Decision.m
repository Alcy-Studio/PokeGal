//
//  Auditor+Decision.m
//  PocketDraft
//
//  Created by westbugs on 10-09-20.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "Auditor+Decision.h"

//Constants
#import "ConstantsAuditorDecisionKey.h"
#import "ConstantsAuditorDecisionObject.h"

@implementation Auditor(Decision)

-(BOOL)setDecision{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					    kAudDecObjTextNil,							kAudDecKeyTextNil, 
					   //PGMain
						kAudDecObjTextPGMainAutoSetup,				kAudDecKeyTextPGMainAutoSetup,
						kAudDecObjTextPGMainAutoRefresh,			kAudDecKeyTextPGMainAutoRefresh,

					    kAudDecObjTextPGMainLArrowTUpInside,			kAudDecKeyTextPGMainLArrowTUpInside,
					    
					    //Sport, Movie, Music
					    kAudDecObjTextPGMainSportButtonTUpInside,	kAudDecKeyTextPGMainSportButtonTUpInside,
					    kAudDecObjTextPGMainMovieButtonTUpInside,	kAudDecKeyTextPGMainMovieButtonTUpInside,
					    kAudDecObjTextPGMainMusicButtonTUpInside,	kAudDecKeyTextPGMainMusicButtonTUpInside,
					    //Call, SMS, Move
					   kAudDecObjTextPGMainCallButtonTUpInside,	kAudDecKeyTextPGMainCallButtonTUpInside,
					   kAudDecObjTextPGMainSmsButtonTUpInside,	kAudDecKeyTextPGMainSmsButtonTUpInside,
					   kAudDecObjTextPGMainMoveButtonTUpInside,	kAudDecKeyTextPGMainMoveButtonTUpInside,
					   
					    kAudDecObjTextPGMainRArrowTUpInside,			kAudDecKeyTextPGMainRArrowTUpInside,
					   
					   kAudDecObjTextPGMainHelpTUpInside,			kAudDecKeyTextPGMainHelpTUpInside,

					   //PGAchi
						kAudDecObjTextPGAchiAutoSetup,				kAudDecKeyTextPGAchiAutoSetup,
						kAudDecObjTextPGAchiAutoRefresh,			kAudDecKeyTextPGAchiAutoRefresh,
					   
					    kAudDecObjTextPGAchiULArrowTUpInside,     kAudDecKeyTextPGAchiULArrowTUpInside,
					    kAudDecObjTextPGAchiURArrowTUpInside,     kAudDecKeyTextPGAchiURArrowTUpInside,
					   
					    //Gift Icons None
					    kAudDecObjTextPGAchiULButtonTUpInside,    kAudDecKeyTextPGAchiULGiftNoneTUpInside,
					    kAudDecObjTextPGAchiUMButtonTUpInside,    kAudDecKeyTextPGAchiUMGiftNoneTUpInside,
					    kAudDecObjTextPGAchiURButtonTUpInside,    kAudDecKeyTextPGAchiURGiftNoneTUpInside,
					   
					    kAudDecObjTextPGAchiMLButtonTUpInside,    kAudDecKeyTextPGAchiMLGiftNoneTUpInside,
					    kAudDecObjTextPGAchiMMButtonTUpInside,    kAudDecKeyTextPGAchiMMGiftNoneTUpInside,
					    kAudDecObjTextPGAchiMRButtonTUpInside,    kAudDecKeyTextPGAchiMRGiftNoneTUpInside,
					   
					    kAudDecObjTextPGAchiBLButtonTUpInside,    kAudDecKeyTextPGAchiBLGiftNoneTUpInside,
					    kAudDecObjTextPGAchiBMButtonTUpInside,    kAudDecKeyTextPGAchiBMGiftNoneTUpInside,
					    kAudDecObjTextPGAchiBRButtonTUpInside,    kAudDecKeyTextPGAchiBRGiftNoneTUpInside,
					   
					    //Gift Icons On
					   kAudDecObjTextPGAchiULButtonTUpInside,    kAudDecKeyTextPGAchiULGift1TUpInside,
					   kAudDecObjTextPGAchiUMButtonTUpInside,    kAudDecKeyTextPGAchiUMGift2TUpInside,
					   kAudDecObjTextPGAchiURButtonTUpInside,    kAudDecKeyTextPGAchiURGift3TUpInside,
					   
					   kAudDecObjTextPGAchiMLButtonTUpInside,    kAudDecKeyTextPGAchiMLGift4TUpInside,
					   kAudDecObjTextPGAchiMMButtonTUpInside,    kAudDecKeyTextPGAchiMMGift5TUpInside,
					   kAudDecObjTextPGAchiMRButtonTUpInside,    kAudDecKeyTextPGAchiMRGift6TUpInside,
					   
					   kAudDecObjTextPGAchiBLButtonTUpInside,    kAudDecKeyTextPGAchiBLGift7TUpInside,
					   kAudDecObjTextPGAchiBMButtonTUpInside,    kAudDecKeyTextPGAchiBMGift8TUpInside,
					   kAudDecObjTextPGAchiBRButtonTUpInside,    kAudDecKeyTextPGAchiBRGift9TUpInside,
					   
					   
					   
					    kAudDecObjTextPGAchiBLArrowTUpInside,     kAudDecKeyTextPGAchiBLArrowTUpInside,
					    kAudDecObjTextPGAchiBRArrowTUpInside,     kAudDecKeyTextPGAchiBRArrowTUpInside,
					   
					   kAudDecObjTextPGAchiHelpTUpInside,     kAudDecKeyTextPGAchiHelpTUpInside,

					   //PGAttr (3)
						kAudDecObjTextPGAttrAutoSetup,		  kAudDecKeyTextPGAttrAutoSetup,
						kAudDecObjTextPGAttrAutoRefresh,	  kAudDecKeyTextPGAttrAutoRefresh,
					   
					    kAudDecObjTextPGAttrULArrowTUpInside,     kAudDecKeyTextPGAttrULArrowTUpInside,
					   
					    kAudDecObjTextPGAttrDButtonTUpInside,     kAudDecKeyTextPGAttrDButtonTUpInside, // view 5
					    kAudDecObjTextPGAttrDButtonTUpInside,     kAudDecKeyTextPGAttrSButtonTUpInside,

					    kAudDecObjTextPGAttrURArrowTUpInside,     kAudDecKeyTextPGAttrURArrowTUpInside,
					   
					    kAudDecObjTextPGAttrBLArrowTUpInside,     kAudDecKeyTextPGAttrBLArrowTUpInside,
					    kAudDecObjTextPGAttrBRArrowTUpInside,     kAudDecKeyTextPGAttrBRArrowTUpInside,
					   
					   kAudDecObjTextPGAttrHelpTUpInside,     kAudDecKeyTextPGAttrHelpTUpInside,

					   //PGTitle (4)
					   kAudDecObjTextPGTitleAutoSetup,		  kAudDecKeyTextPGTitleAutoSetup,
					   kAudDecObjTextPGTitleAutoRefresh,	  kAudDecKeyTextPGTitleAutoRefresh,
					   
					   kAudDecObjTextPGTitleNewButtonTUpInside,     kAudDecKeyTextPGTitleNewButtonTUpInside,
					   kAudDecObjTextPGTitleContinueButtonTUpInside,     kAudDecKeyTextPGTitleContinueButtonTUpInside,
					   kAudDecObjTextPGTitleWebsiteButtonTUpInside,     kAudDecKeyTextPGTitleWebsiteButtonTUpInside,
					   
					   //PGDate (7)
					   kAudDecObjTextPGDateAutoSetup,		  kAudDecKeyTextPGDateAutoSetup,
					   kAudDecObjTextPGDateAutoRefresh,	  kAudDecKeyTextPGDateAutoRefresh,
					   
					   kAudDecObjTextPGDateLArrowTUpInside,     kAudDecKeyTextPGDateLArrowTUpInside,
					   kAudDecObjTextPGDateLActButtonTUpInside,     kAudDecKeyTextPGDateLActButtonTUpInside,
					   kAudDecObjTextPGDateMActButtonTUpInside,     kAudDecKeyTextPGDateMActButtonTUpInside,
					   kAudDecObjTextPGDateRActButtonTUpInside,     kAudDecKeyTextPGDateRActButtonTUpInside,
					   kAudDecObjTextPGDateRArrowTUpInside,     kAudDecKeyTextPGDateRArrowTUpInside,
					   					   					   
					   kAudDecObjTextPGDateHelpTUpInside,     kAudDecKeyTextPGDateHelpTUpInside,

					   //PGWalk (17)
					   kAudDecObjTextPGWalkAutoSetup,		  kAudDecKeyTextPGWalkAutoSetup,
					   kAudDecObjTextPGWalkAutoRefresh,	  kAudDecKeyTextPGWalkAutoRefresh,
					   
					   kAudDecObjTextPGWalkLArrowTUpInside,     kAudDecKeyTextPGWalkLArrowTUpInside,
					   kAudDecObjTextPGWalkLActButtonTUpInside,     kAudDecKeyTextPGWalkLActButtonTUpInside,
					   kAudDecObjTextPGWalkMActButtonTUpInside,     kAudDecKeyTextPGWalkMActButtonTUpInside,
					   kAudDecObjTextPGWalkRActButtonTUpInside,     kAudDecKeyTextPGWalkRActButtonTUpInside,
					   kAudDecObjTextPGWalkRArrowTUpInside,     kAudDecKeyTextPGWalkRArrowTUpInside,
					   
					   kAudDecObjTextPGWalkHelpTUpInside,     kAudDecKeyTextPGWalkHelpTUpInside,

					   //PGMap (8)
					   kAudDecObjTextPGMapAutoSetup,		  kAudDecKeyTextPGMapAutoSetup,
					   kAudDecObjTextPGMapAutoRefresh,		kAudDecKeyTextPGMapAutoRefresh,
					   
					   kAudDecObjTextPGMapBackButtonTUpInside,     kAudDecKeyTextPGMapBackButtonTUpInside,
					   
					   kAudDecObjTextPGMapRegionNoneDetailTUpInside,     kAudDecKeyTextPGMapRegionNoneDetailTUpInside,
					   kAudDecObjTextPGMapRegionADetailTUpInside,     kAudDecKeyTextPGMapRegionADetailTUpInside,
					   kAudDecObjTextPGMapRegionBDetailTUpInside,     kAudDecKeyTextPGMapRegionBDetailTUpInside,
					   kAudDecObjTextPGMapRegionCDetailTUpInside,     kAudDecKeyTextPGMapRegionCDetailTUpInside,
					   kAudDecObjTextPGMapRegionDDetailTUpInside,     kAudDecKeyTextPGMapRegionDDetailTUpInside,
					   kAudDecObjTextPGMapRegionEDetailTUpInside,     kAudDecKeyTextPGMapRegionEDetailTUpInside,
					   kAudDecObjTextPGMapRegionFDetailTUpInside,     kAudDecKeyTextPGMapRegionFDetailTUpInside,
					   kAudDecObjTextPGMapRegionGDetailTUpInside,     kAudDecKeyTextPGMapRegionGDetailTUpInside,
					   kAudDecObjTextPGMapRegionHDetailTUpInside,     kAudDecKeyTextPGMapRegionHDetailTUpInside,
					   kAudDecObjTextPGMapRegionIDetailTUpInside,     kAudDecKeyTextPGMapRegionIDetailTUpInside,

					   kAudDecObjTextPGMapGoButtonTUpInside,     kAudDecKeyTextPGMapGoButtonTUpInside,

					   kAudDecObjTextPGMapGoButtonATUpInside,     kAudDecKeyTextPGMapGoButtonATUpInside,
					   kAudDecObjTextPGMapGoButtonBTUpInside,     kAudDecKeyTextPGMapGoButtonBTUpInside,
					   kAudDecObjTextPGMapGoButtonCTUpInside,     kAudDecKeyTextPGMapGoButtonCTUpInside,
					   kAudDecObjTextPGMapGoButtonDTUpInside,     kAudDecKeyTextPGMapGoButtonDTUpInside,
					   kAudDecObjTextPGMapGoButtonETUpInside,     kAudDecKeyTextPGMapGoButtonETUpInside,
					   kAudDecObjTextPGMapGoButtonFTUpInside,     kAudDecKeyTextPGMapGoButtonFTUpInside,
					   kAudDecObjTextPGMapGoButtonGTUpInside,     kAudDecKeyTextPGMapGoButtonGTUpInside,
					   kAudDecObjTextPGMapGoButtonHTUpInside,     kAudDecKeyTextPGMapGoButtonHTUpInside,
					   kAudDecObjTextPGMapGoButtonITUpInside,     kAudDecKeyTextPGMapGoButtonITUpInside,
					   
					   kAudDecObjTextPGMapDateButtonATUpInside,     kAudDecKeyTextPGMapDateButtonATUpInside,
					   kAudDecObjTextPGMapDateButtonBTUpInside,     kAudDecKeyTextPGMapDateButtonBTUpInside,
					   kAudDecObjTextPGMapDateButtonCTUpInside,     kAudDecKeyTextPGMapDateButtonCTUpInside,
					   kAudDecObjTextPGMapDateButtonDTUpInside,     kAudDecKeyTextPGMapDateButtonDTUpInside,
					   kAudDecObjTextPGMapDateButtonETUpInside,     kAudDecKeyTextPGMapDateButtonETUpInside,
					   kAudDecObjTextPGMapDateButtonFTUpInside,     kAudDecKeyTextPGMapDateButtonFTUpInside,
					   kAudDecObjTextPGMapDateButtonGTUpInside,     kAudDecKeyTextPGMapDateButtonGTUpInside,
					   kAudDecObjTextPGMapDateButtonHTUpInside,     kAudDecKeyTextPGMapDateButtonHTUpInside,
					   kAudDecObjTextPGMapDateButtonITUpInside,     kAudDecKeyTextPGMapDateButtonITUpInside,


					   kAudDecObjTextPGMapNavButtonATUpInside,     kAudDecKeyTextPGMapNavButtonATUpInside,
					   kAudDecObjTextPGMapNavButtonBTUpInside,     kAudDecKeyTextPGMapNavButtonBTUpInside,
					   kAudDecObjTextPGMapNavButtonCTUpInside,     kAudDecKeyTextPGMapNavButtonCTUpInside,
					   
					   kAudDecObjTextPGMapNavButtonDTUpInside,     kAudDecKeyTextPGMapNavButtonDTUpInside,
					   kAudDecObjTextPGMapNavButtonETUpInside,     kAudDecKeyTextPGMapNavButtonETUpInside,
					   kAudDecObjTextPGMapNavButtonFTUpInside,     kAudDecKeyTextPGMapNavButtonFTUpInside,
					   
					   kAudDecObjTextPGMapNavButtonGTUpInside,     kAudDecKeyTextPGMapNavButtonGTUpInside,
					   kAudDecObjTextPGMapNavButtonHTUpInside,     kAudDecKeyTextPGMapNavButtonHTUpInside,
					   kAudDecObjTextPGMapNavButtonITUpInside,     kAudDecKeyTextPGMapNavButtonITUpInside,
					   
					   kAudDecObjTextPGMapHelpTUpInside,     kAudDecKeyTextPGMapHelpTUpInside,

					   //PGEvent (9)
					   kAudDecObjTextPGEventAutoSetup,		  kAudDecKeyTextPGEventAutoSetup,
					   kAudDecObjTextPGEventAutoRefresh,		 kAudDecKeyTextPGEventAutoRefresh,
					   
					   kAudDecObjTextPGEventMsgButtonTUpInside,     kAudDecKeyTextPGEventMsgButtonTUpInside,
									
					   kAudDecObjTextPGEventHelpTUpInside,     kAudDecKeyTextPGEventHelpTUpInside,

					   //PGRomance (10)
					   kAudDecObjTextPGRomanceAutoSetup,		  kAudDecKeyTextPGRomanceAutoSetup,
					   kAudDecObjTextPGRomanceAutoRefresh,		 kAudDecKeyTextPGRomanceAutoRefresh,
					   
					   kAudDecObjTextPGRomanceMsgButtonTUpInside,     kAudDecKeyTextPGRomanceMsgButtonTUpInside,
					   
					   //PGDetail (11)
					   kAudDecObjTextPGDetailAutoSetup,		  kAudDecKeyTextPGDetailAutoSetup,
					   kAudDecObjTextPGDetailAutoRefresh,		 kAudDecKeyTextPGDetailAutoRefresh,
					   
					   kAudDecObjTextPGDetailBackButtonTUpInside,     kAudDecKeyTextPGDetailBackButtonTUpInside,
					   
					   kAudDecObjTextPGDetailHelpTUpInside,     kAudDecKeyTextPGDetailHelpTUpInside,

					   
					   //PGArrange (12)
					   kAudDecObjTextPGArrangeAutoSetup,		  kAudDecKeyTextPGArrangeAutoSetup,
					   kAudDecObjTextPGArrangeAutoRefresh,		 kAudDecKeyTextPGArrangeAutoRefresh,
					   
					   kAudDecObjTextPGArrangeBackButtonTUpInside,     kAudDecKeyTextPGArrangeBackButtonTUpInside,
					   
					   kAudDecObjTextPGArrange10To11AvailableButtonTUpInside,		 kAudDecKeyTextPGArrange10To11AvailableButtonTUpInside,
					   kAudDecObjTextPGArrange11To12AvailableButtonTUpInside,		 kAudDecKeyTextPGArrange11To12AvailableButtonTUpInside,
					   
					   kAudDecObjTextPGArrange12To13AvailableButtonTUpInside,     kAudDecKeyTextPGArrange12To13AvailableButtonTUpInside,
					   kAudDecObjTextPGArrange13To14AvailableButtonTUpInside,		  kAudDecKeyTextPGArrange13To14AvailableButtonTUpInside,
					   kAudDecObjTextPGArrange14To15AvailableButtonTUpInside,		 kAudDecKeyTextPGArrange14To15AvailableButtonTUpInside,
					   
					   kAudDecObjTextPGArrange15To16AvailableButtonTUpInside,     kAudDecKeyTextPGArrange15To16AvailableButtonTUpInside,
					   kAudDecObjTextPGArrange16To17AvailableButtonTUpInside,		  kAudDecKeyTextPGArrange16To17AvailableButtonTUpInside,
					   kAudDecObjTextPGArrange17To18AvailableButtonTUpInside,		 kAudDecKeyTextPGArrange17To18AvailableButtonTUpInside,
					   
					   kAudDecObjTextPGArrange18To19AvailableButtonTUpInside,     kAudDecKeyTextPGArrange18To19AvailableButtonTUpInside,
					   kAudDecObjTextPGArrange19To20AvailableButtonTUpInside,		  kAudDecKeyTextPGArrange19To20AvailableButtonTUpInside,
					   kAudDecObjTextPGArrange20To21AvailableButtonTUpInside,		 kAudDecKeyTextPGArrange20To21AvailableButtonTUpInside,
					   
					   kAudDecObjTextPGArrange21To22AvailableButtonTUpInside,     kAudDecKeyTextPGArrange21To22AvailableButtonTUpInside,
					   kAudDecObjTextPGArrange22To23AvailableButtonTUpInside,		  kAudDecKeyTextPGArrange22To23AvailableButtonTUpInside,
					   kAudDecObjTextPGArrange23To24AvailableButtonTUpInside,		 kAudDecKeyTextPGArrange23To24AvailableButtonTUpInside,
					   
					   //Occupied Time Cell
					   kAudDecObjTextPGArrange10To11OccupiedButtonTUpInside,		 kAudDecKeyTextPGArrange10To11OccupiedButtonTUpInside,
					   kAudDecObjTextPGArrange11To12OccupiedButtonTUpInside,		 kAudDecKeyTextPGArrange11To12OccupiedButtonTUpInside,
					   
					   kAudDecObjTextPGArrange12To13OccupiedButtonTUpInside,     kAudDecKeyTextPGArrange12To13OccupiedButtonTUpInside,
					   kAudDecObjTextPGArrange13To14OccupiedButtonTUpInside,		  kAudDecKeyTextPGArrange13To14OccupiedButtonTUpInside,
					   kAudDecObjTextPGArrange14To15OccupiedButtonTUpInside,		 kAudDecKeyTextPGArrange14To15OccupiedButtonTUpInside,
					   
					   kAudDecObjTextPGArrange15To16OccupiedButtonTUpInside,     kAudDecKeyTextPGArrange15To16OccupiedButtonTUpInside,
					   kAudDecObjTextPGArrange16To17OccupiedButtonTUpInside,		  kAudDecKeyTextPGArrange16To17OccupiedButtonTUpInside,
					   kAudDecObjTextPGArrange17To18OccupiedButtonTUpInside,		 kAudDecKeyTextPGArrange17To18OccupiedButtonTUpInside,
					   
					   kAudDecObjTextPGArrange18To19OccupiedButtonTUpInside,     kAudDecKeyTextPGArrange18To19OccupiedButtonTUpInside,
					   kAudDecObjTextPGArrange19To20OccupiedButtonTUpInside,		  kAudDecKeyTextPGArrange19To20OccupiedButtonTUpInside,
					   kAudDecObjTextPGArrange20To21OccupiedButtonTUpInside,		 kAudDecKeyTextPGArrange20To21OccupiedButtonTUpInside,
					   
					   kAudDecObjTextPGArrange21To22OccupiedButtonTUpInside,     kAudDecKeyTextPGArrange21To22OccupiedButtonTUpInside,
					   kAudDecObjTextPGArrange22To23OccupiedButtonTUpInside,		  kAudDecKeyTextPGArrange22To23OccupiedButtonTUpInside,
					   kAudDecObjTextPGArrange23To24OccupiedButtonTUpInside,		 kAudDecKeyTextPGArrange23To24OccupiedButtonTUpInside,
					   
					   kAudDecObjTextPGArrangeHelpTUpInside,		 kAudDecKeyTextPGArrangeHelpTUpInside,

					   //PGPlace (13)
					   kAudDecObjTextPGPlaceAutoSetup,		  kAudDecKeyTextPGPlaceAutoSetup,
					   kAudDecObjTextPGPlaceAutoRefresh,		 kAudDecKeyTextPGPlaceAutoRefresh,
					   
					   kAudDecObjTextPGPlaceBackButtonTUpInside,     kAudDecKeyTextPGPlaceBackButtonTUpInside,
					   kAudDecObjTextPGPlaceRegionAButtonTUpInside,     kAudDecKeyTextPGPlaceRegionAButtonTUpInside,
					   kAudDecObjTextPGPlaceRegionBButtonTUpInside,     kAudDecKeyTextPGPlaceRegionBButtonTUpInside,
					   kAudDecObjTextPGPlaceRegionCButtonTUpInside,     kAudDecKeyTextPGPlaceRegionCButtonTUpInside,
					   kAudDecObjTextPGPlaceRegionDButtonTUpInside,     kAudDecKeyTextPGPlaceRegionDButtonTUpInside,
					   kAudDecObjTextPGPlaceRegionEButtonTUpInside,     kAudDecKeyTextPGPlaceRegionEButtonTUpInside,
					   kAudDecObjTextPGPlaceRegionFButtonTUpInside,     kAudDecKeyTextPGPlaceRegionFButtonTUpInside,
					   kAudDecObjTextPGPlaceRegionGButtonTUpInside,     kAudDecKeyTextPGPlaceRegionGButtonTUpInside,
					   kAudDecObjTextPGPlaceRegionHButtonTUpInside,     kAudDecKeyTextPGPlaceRegionHButtonTUpInside,
					   kAudDecObjTextPGPlaceRegionIButtonTUpInside,     kAudDecKeyTextPGPlaceRegionIButtonTUpInside,

					   kAudDecObjTextPGPlaceHelpTUpInside,     kAudDecKeyTextPGPlaceHelpTUpInside,


					   //PGSchedule (14)
					   kAudDecObjTextPGScheduleAutoSetup,		  kAudDecKeyTextPGScheduleAutoSetup,
					   kAudDecObjTextPGScheduleAutoRefresh,		 kAudDecKeyTextPGScheduleAutoRefresh,
					   
					   kAudDecObjTextPGScheduleBackButtonTUpInside,     kAudDecKeyTextPGScheduleBackButtonTUpInside,
					   
					   kAudDecObjTextPGSchedule10To11EventNoneButtonTUpInside,		 kAudDecKeyTextPGSchedule10To11EventNoneButtonTUpInside,
					   kAudDecObjTextPGSchedule11To12EventNoneButtonTUpInside,		 kAudDecKeyTextPGSchedule11To12EventNoneButtonTUpInside,
					   
					   kAudDecObjTextPGSchedule12To13EventNoneButtonTUpInside,     kAudDecKeyTextPGSchedule12To13EventNoneButtonTUpInside,
					   kAudDecObjTextPGSchedule13To14EventNoneButtonTUpInside,		  kAudDecKeyTextPGSchedule13To14EventNoneButtonTUpInside,
					   kAudDecObjTextPGSchedule14To15EventNoneButtonTUpInside,		 kAudDecKeyTextPGSchedule14To15EventNoneButtonTUpInside,
					   
					   kAudDecObjTextPGSchedule15To16EventNoneButtonTUpInside,     kAudDecKeyTextPGSchedule15To16EventNoneButtonTUpInside,
					   kAudDecObjTextPGSchedule16To17EventNoneButtonTUpInside,		  kAudDecKeyTextPGSchedule16To17EventNoneButtonTUpInside,
					   kAudDecObjTextPGSchedule17To18EventNoneButtonTUpInside,		 kAudDecKeyTextPGSchedule17To18EventNoneButtonTUpInside,
					   
					   kAudDecObjTextPGSchedule18To19EventNoneButtonTUpInside,     kAudDecKeyTextPGSchedule18To19EventNoneButtonTUpInside,
					   kAudDecObjTextPGSchedule19To20EventNoneButtonTUpInside,		  kAudDecKeyTextPGSchedule19To20EventNoneButtonTUpInside,
					   kAudDecObjTextPGSchedule20To21EventNoneButtonTUpInside,		 kAudDecKeyTextPGSchedule20To21EventNoneButtonTUpInside,
					   
					   kAudDecObjTextPGSchedule21To22EventNoneButtonTUpInside,     kAudDecKeyTextPGSchedule21To22EventNoneButtonTUpInside,
					   kAudDecObjTextPGSchedule22To23EventNoneButtonTUpInside,		  kAudDecKeyTextPGSchedule22To23EventNoneButtonTUpInside,
					   kAudDecObjTextPGSchedule23To24EventNoneButtonTUpInside,		 kAudDecKeyTextPGSchedule23To24EventNoneButtonTUpInside,
					   
					   kAudDecObjTextPGScheduleHelpTUpInside,		 kAudDecKeyTextPGScheduleHelpTUpInside,

					   //PGTalk (15)
					   kAudDecObjTextPGTalkAutoSetup,		  kAudDecKeyTextPGTalkAutoSetup,
					   kAudDecObjTextPGTalkAutoRefresh,		 kAudDecKeyTextPGTalkAutoRefresh,
					   
					   kAudDecObjTextPGTalkMsgButtonTUpInside,     kAudDecKeyTextPGTalkMsgButtonTUpInside,
					   
					   //PGSMS (16)
					   kAudDecObjTextPGSMSAutoSetup,		  kAudDecKeyTextPGSMSAutoSetup,
					   kAudDecObjTextPGSMSAutoRefresh,		 kAudDecKeyTextPGSMSAutoRefresh,
					   
					   kAudDecObjTextPGSMSBackButtonTUpInside,     kAudDecKeyTextPGSMSBackButtonTUpInside,
					   kAudDecObjTextPGSMSSendButtonTUpInside,     kAudDecKeyTextPGSMSSendButtonTUpInside,

					   kAudDecObjTextPGSMSHelpTUpInside,     kAudDecKeyTextPGSMSHelpTUpInside,

					   //PGTutorPage (18)
					   kAudDecObjTextPGTutorPageAutoSetup,		  kAudDecKeyTextPGTutorPageAutoSetup,
					   kAudDecObjTextPGTutorPageAutoRefresh,		 kAudDecKeyTextPGTutorPageAutoRefresh,
					   
					   
					   //PGTutorSV (19)
					   kAudDecObjTextPGTutorSVAutoSetup,		  kAudDecKeyTextPGTutorSVAutoSetup,
					   kAudDecObjTextPGTutorSVAutoRefresh,		 kAudDecKeyTextPGTutorSVAutoRefresh,
					   
					   kAudDecObjTextPGTutorSVBackButtonTUpInside,     kAudDecKeyTextPGTutorSVBackButtonTUpInside,
					   
					   //PGTutorMenu (20)
					   kAudDecObjTextPGTutorMenuAutoSetup,		  kAudDecKeyTextPGTutorMenuAutoSetup,
					   kAudDecObjTextPGTutorMenuAutoRefresh,		 kAudDecKeyTextPGTutorMenuAutoRefresh,
					   
					   kAudDecObjTextPGTutorMenuBackButtonTUpInside,     kAudDecKeyTextPGTutorMenuBackButtonTUpInside,
					   
					   kAudDecObjTextPGTutorMenuScene1ButtonTUpInside,     kAudDecKeyTextPGTutorMenuScene1ButtonTUpInside,
					   kAudDecObjTextPGTutorMenuScene2ButtonTUpInside,     kAudDecKeyTextPGTutorMenuScene2ButtonTUpInside,
					   kAudDecObjTextPGTutorMenuScene3ButtonTUpInside,     kAudDecKeyTextPGTutorMenuScene3ButtonTUpInside,
					   kAudDecObjTextPGTutorMenuScene4ButtonTUpInside,     kAudDecKeyTextPGTutorMenuScene4ButtonTUpInside,
					   kAudDecObjTextPGTutorMenuScene5ButtonTUpInside,     kAudDecKeyTextPGTutorMenuScene5ButtonTUpInside,
					   kAudDecObjTextPGTutorMenuScene6ButtonTUpInside,     kAudDecKeyTextPGTutorMenuScene6ButtonTUpInside,
					   kAudDecObjTextPGTutorMenuScene7ButtonTUpInside,     kAudDecKeyTextPGTutorMenuScene7ButtonTUpInside,
					   kAudDecObjTextPGTutorMenuScene8ButtonTUpInside,     kAudDecKeyTextPGTutorMenuScene8ButtonTUpInside,
					   kAudDecObjTextPGTutorMenuScene9ButtonTUpInside,     kAudDecKeyTextPGTutorMenuScene9ButtonTUpInside,
					   kAudDecObjTextPGTutorMenuScene10ButtonTUpInside,     kAudDecKeyTextPGTutorMenuScene10ButtonTUpInside,
					   kAudDecObjTextPGTutorMenuScene11ButtonTUpInside,     kAudDecKeyTextPGTutorMenuScene11ButtonTUpInside,
					   kAudDecObjTextPGTutorMenuScene12ButtonTUpInside,     kAudDecKeyTextPGTutorMenuScene12ButtonTUpInside,

					   
					   //PGMConfirm (31)
					   kAudDecObjTextPGMConfirmAutoSetup,		  kAudDecKeyTextPGMConfirmAutoSetup,
					   kAudDecObjTextPGMConfirmAutoRefresh,		 kAudDecKeyTextPGMConfirmAutoRefresh,
					   
					   kAudDecObjTextPGMConfirmLeftButtonTUpInside,     kAudDecKeyTextPGMConfirmLeftButtonTUpInside,
					   kAudDecObjTextPGMConfirmRightButtonTUpInside,     kAudDecKeyTextPGMConfirmRightButtonTUpInside,

					   //PGMAlert (32)
					   kAudDecObjTextPGMAlertAutoSetup,		  kAudDecKeyTextPGMAlertAutoSetup,
					   kAudDecObjTextPGMAlertAutoRefresh,		 kAudDecKeyTextPGMAlertAutoRefresh,
					   
					   kAudDecObjTextPGMAlertMidButtonTUpInside,     kAudDecKeyTextPGMAlertMidButtonTUpInside,
					   
					   
					   //PGMSelection (33)
					   kAudDecObjTextPGMSelectionAutoSetup,		  kAudDecKeyTextPGMSelectionAutoSetup,
					   kAudDecObjTextPGMSelectionAutoRefresh,		 kAudDecKeyTextPGMSelectionAutoRefresh,
					   
					   kAudDecObjTextPGMSelectionChoice1ButtonTUpInside,     kAudDecKeyTextPGMSelectionChoice1ButtonTUpInside,
					   kAudDecObjTextPGMSelectionChoice2ButtonTUpInside,     kAudDecKeyTextPGMSelectionChoice2ButtonTUpInside,
					   kAudDecObjTextPGMSelectionChoice3ButtonTUpInside,     kAudDecKeyTextPGMSelectionChoice3ButtonTUpInside,

					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}

@end
