//
//  ConstantsAuditorInterpreter.m
//  PocketDraft
//
//  Created by westbugs on 10-09-17.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ConstantsAuditorInterpreter.h"


@implementation ConstantsAuditorInterpreter

NSString* const kAudIntTextNil = @"";

NSString* const kAudIntTextSport = @"s1t1e7";

//e Based on ConstantEventCode

#pragma mark Auto
//PGMain
NSString* const kAudIntTextPGMainAutoSetup = @"s1t0e31";
NSString* const kAudIntTextPGMainAutoRefresh = @"s1t0e32";

//TouchDown

NSString* const kAudIntTextPGMainLArrowTUpInside = @"s1t7e7";
NSString* const kAudIntTextPGMainLActButtonTUpInside = @"s1t8e7";
NSString* const kAudIntTextPGMainMActButtonTUpInside = @"s1t9e7";
NSString* const kAudIntTextPGMainRActButtonTUpInside = @"s1t10e7";
NSString* const kAudIntTextPGMainRArrowTUpInside = @"s1t11e7";

NSString* const kAudIntTextPGMainHelpTUpInside = @"s1t13e7";

//TouchUpOutside
NSString* const kAudIntTextPGMainLArrowTUpOutside = @"s1t7e8";
NSString* const kAudIntTextPGMainLActButtonTUpOutside = @"s1t8e8";
NSString* const kAudIntTextPGMainMActButtonTUpOutside = @"s1t9e8";
NSString* const kAudIntTextPGMainRActButtonTUpOutside = @"s1t10e8";
NSString* const kAudIntTextPGMainRArrowTUpOutside = @"s1t11e8";

//PGAchi
NSString* const kAudIntTextPGAchiAutoSetup = @"s2t0e31";
NSString* const kAudIntTextPGAchiAutoRefresh = @"s2t0e32";

NSString* const kAudIntTextPGAchiULArrowTUpInside = @"s2t3e7";
NSString* const kAudIntTextPGAchiURArrowTUpInside = @"s2t5e7";

NSString* const kAudIntTextPGAchiULButtonTUpInside = @"s2t6e7";
NSString* const kAudIntTextPGAchiUMButtonTUpInside = @"s2t7e7";
NSString* const kAudIntTextPGAchiURButtonTUpInside = @"s2t8e7";

NSString* const kAudIntTextPGAchiMLButtonTUpInside = @"s2t9e7";
NSString* const kAudIntTextPGAchiMMButtonTUpInside = @"s2t10e7";
NSString* const kAudIntTextPGAchiMRButtonTUpInside = @"s2t11e7";

NSString* const kAudIntTextPGAchiBLButtonTUpInside = @"s2t12e7";
NSString* const kAudIntTextPGAchiBMButtonTUpInside = @"s2t13e7";
NSString* const kAudIntTextPGAchiBRButtonTUpInside = @"s2t14e7";

NSString* const kAudIntTextPGAchiBLArrowTUpInside = @"s2t15e7";
NSString* const kAudIntTextPGAchiBRArrowTUpInside = @"s2t17e7";

NSString* const kAudIntTextPGAchiHelpTUpInside = @"s2t21e7";

//TouchUpOutside
NSString* const kAudIntTextPGAchiULArrowTUpOutside = @"s2t3e8";
NSString* const kAudIntTextPGAchiURArrowTUpOutside = @"s2t5e8";

NSString* const kAudIntTextPGAchiULButtonTUpOutside = @"s2t6e8";
NSString* const kAudIntTextPGAchiUMButtonTUpOutside = @"s2t7e8";
NSString* const kAudIntTextPGAchiURButtonTUpOutside = @"s2t8e8";

NSString* const kAudIntTextPGAchiMLButtonTUpOutside = @"s2t9e8";
NSString* const kAudIntTextPGAchiMMButtonTUpOutside = @"s2t10e8";
NSString* const kAudIntTextPGAchiMRButtonTUpOutside = @"s2t11e8";

NSString* const kAudIntTextPGAchiBLButtonTUpOutside = @"s2t12e8";
NSString* const kAudIntTextPGAchiBMButtonTUpOutside = @"s2t13e8";
NSString* const kAudIntTextPGAchiBRButtonTUpOutside = @"s2t14e8";

NSString* const kAudIntTextPGAchiBLArrowTUpOutside = @"s2t15e8";
NSString* const kAudIntTextPGAchiBRArrowTUpOutside = @"s2t17e8";

//PGAttr
NSString* const kAudIntTextPGAttrAutoSetup = @"s3t0e31";
NSString* const kAudIntTextPGAttrAutoRefresh = @"s3t0e32";

NSString* const kAudIntTextPGAttrULArrowTUpInside = @"s3t4e7";

NSString* const kAudIntTextPGAttrDButtonTUpInside = @"s3t5e7"; 

NSString* const kAudIntTextPGAttrURArrowTUpInside = @"s3t6e7";

NSString* const kAudIntTextPGAttrBLArrowTUpInside = @"s3t13e7";
NSString* const kAudIntTextPGAttrBRArrowTUpInside = @"s3t15e7";

NSString* const kAudIntTextPGAttrHelpTUpInside = @"s3t22e7";

//TouchUpOutside
NSString* const kAudIntTextPGAttrULArrowTUpOutside = @"s3t4e8";
NSString* const kAudIntTextPGAttrDButtonTUpOutside = @"s3t5e8";
NSString* const kAudIntTextPGAttrURArrowTUpOutside = @"s3t6e8";

NSString* const kAudIntTextPGAttrBLArrowTUpOutside = @"s3t13e8";
NSString* const kAudIntTextPGAttrBRArrowTUpOutside = @"s3t15e8";

//PGTitle (4)
NSString* const kAudIntTextPGTitleAutoSetup = @"s4t0e31";
NSString* const kAudIntTextPGTitleAutoRefresh = @"s4t0e32";

//TouchDown
NSString* const kAudIntTextPGTitleNewButtonTUpInside = @"s4t1e7";
NSString* const kAudIntTextPGTitleContinueButtonTUpInside = @"s4t2e7";
NSString* const kAudIntTextPGTitleWebsiteButtonTUpInside = @"s4t3e7";

//TouchUpOutside
NSString* const kAudIntTextPGTitleNewButtonTUpOutside = @"s4t1e8";
NSString* const kAudIntTextPGTitleContinueButtonTUpOutside = @"s4t2e8";
NSString* const kAudIntTextPGTitleWebsiteButtonTUpOutside = @"s4t3e8";


//PGDate (7)
NSString* const kAudIntTextPGDateAutoSetup = @"s7t0e31";
NSString* const kAudIntTextPGDateAutoRefresh = @"s7t0e32";

NSString* const kAudIntTextPGDateLArrowTUpInside = @"s7t7e7";
NSString* const kAudIntTextPGDateLActButtonTUpInside = @"s7t8e7";
NSString* const kAudIntTextPGDateMActButtonTUpInside = @"s7t9e7";
NSString* const kAudIntTextPGDateRActButtonTUpInside = @"s7t10e7";
NSString* const kAudIntTextPGDateRArrowTUpInside = @"s7t11e7";

NSString* const kAudIntTextPGDateHelpTUpInside = @"s7t13e7";

//TouchUpOutside
NSString* const kAudIntTextPGDateLArrowTUpOutside = @"s7t7e8";
NSString* const kAudIntTextPGDateLActButtonTUpOutside = @"s7t8e8";
NSString* const kAudIntTextPGDateMActButtonTUpOutside = @"s7t9e8";
NSString* const kAudIntTextPGDateRActButtonTUpOutside = @"s7t10e8";
NSString* const kAudIntTextPGDateRArrowTUpOutside = @"s7t11e8";

//PGWalk (17)
NSString* const kAudIntTextPGWalkAutoSetup = @"s17t0e31";
NSString* const kAudIntTextPGWalkAutoRefresh = @"s17t0e32";

NSString* const kAudIntTextPGWalkLArrowTUpInside = @"s17t7e7";
NSString* const kAudIntTextPGWalkLActButtonTUpInside = @"s17t8e7";
NSString* const kAudIntTextPGWalkMActButtonTUpInside = @"s17t9e7";
NSString* const kAudIntTextPGWalkRActButtonTUpInside = @"s17t10e7";
NSString* const kAudIntTextPGWalkRArrowTUpInside = @"s17t11e7";

NSString* const kAudIntTextPGWalkHelpTUpInside = @"s17t13e7";

//TouchUpOutside
NSString* const kAudIntTextPGWalkLArrowTUpOutside = @"s17t7e8";
NSString* const kAudIntTextPGWalkLActButtonTUpOutside = @"s17t8e8";
NSString* const kAudIntTextPGWalkMActButtonTUpOutside = @"s17t9e8";
NSString* const kAudIntTextPGWalkRActButtonTUpOutside = @"s17t10e8";
NSString* const kAudIntTextPGWalkRArrowTUpOutside = @"s17t11e8";

//PGMap (8)
NSString* const kAudIntTextPGMapAutoSetup = @"s8t0e31";
NSString* const kAudIntTextPGMapAutoRefresh = @"s8t0e32";

//TouchDown
NSString* const kAudIntTextPGMapBackButtonTUpInside = @"s8t4e7";

NSString* const kAudIntTextPGMapRegionDetailTUpInside = @"s8t6e7";
NSString* const kAudIntTextPGMapGoButtonTUpInside = @"s8t7e7";

NSString* const kAudIntTextPGMapGoButtonATUpInside = @"s8t7e7";
NSString* const kAudIntTextPGMapGoButtonBTUpInside = @"s8t7e7";
NSString* const kAudIntTextPGMapGoButtonCTUpInside = @"s8t7e7";
NSString* const kAudIntTextPGMapGoButtonDTUpInside = @"s8t7e7";
NSString* const kAudIntTextPGMapGoButtonETUpInside = @"s8t7e7";
NSString* const kAudIntTextPGMapGoButtonFTUpInside = @"s8t7e7";
NSString* const kAudIntTextPGMapGoButtonGTUpInside = @"s8t7e7";
NSString* const kAudIntTextPGMapGoButtonHTUpInside = @"s8t7e7";
NSString* const kAudIntTextPGMapGoButtonITUpInside = @"s8t7e7";

NSString* const kAudIntTextPGMapDateButtonATUpInside = @"s8t7e7";
NSString* const kAudIntTextPGMapDateButtonBTUpInside = @"s8t7e7";
NSString* const kAudIntTextPGMapDateButtonCTUpInside = @"s8t7e7";
NSString* const kAudIntTextPGMapDateButtonDTUpInside = @"s8t7e7";
NSString* const kAudIntTextPGMapDateButtonETUpInside = @"s8t7e7";
NSString* const kAudIntTextPGMapDateButtonFTUpInside = @"s8t7e7";
NSString* const kAudIntTextPGMapDateButtonGTUpInside = @"s8t7e7";
NSString* const kAudIntTextPGMapDateButtonHTUpInside = @"s8t7e7";
NSString* const kAudIntTextPGMapDateButtonITUpInside = @"s8t7e7";


NSString* const kAudIntTextPGMapNavButtonATUpInside = @"s8t9e7";
NSString* const kAudIntTextPGMapNavButtonBTUpInside = @"s8t10e7";
NSString* const kAudIntTextPGMapNavButtonCTUpInside = @"s8t11e7";

NSString* const kAudIntTextPGMapNavButtonDTUpInside = @"s8t12e7";
NSString* const kAudIntTextPGMapNavButtonETUpInside = @"s8t13e7";
NSString* const kAudIntTextPGMapNavButtonFTUpInside = @"s8t14e7";

NSString* const kAudIntTextPGMapNavButtonGTUpInside = @"s8t15e7";
NSString* const kAudIntTextPGMapNavButtonHTUpInside = @"s8t16e7";
NSString* const kAudIntTextPGMapNavButtonITUpInside = @"s8t17e7";

NSString* const kAudIntTextPGMapHelpTUpInside = @"s8t26e7";

//TouchUpOutside
NSString* const kAudIntTextPGMapBackButtonTUpOutside = @"s8t4e8";

NSString* const kAudIntTextPGMapRegionDetailTUpOutside = @"s8t6e8";
NSString* const kAudIntTextPGMapGoButtonTUpOutside = @"s8t7e8";

NSString* const kAudIntTextPGMapNavButtonATUpOutside = @"s8t9e8";
NSString* const kAudIntTextPGMapNavButtonBTUpOutside = @"s8t10e8";
NSString* const kAudIntTextPGMapNavButtonCTUpOutside = @"s8t11e8";

NSString* const kAudIntTextPGMapNavButtonDTUpOutside = @"s8t12e8";
NSString* const kAudIntTextPGMapNavButtonETUpOutside = @"s8t13e8";
NSString* const kAudIntTextPGMapNavButtonFTUpOutside = @"s8t14e8";

NSString* const kAudIntTextPGMapNavButtonGTUpOutside = @"s8t15e8";
NSString* const kAudIntTextPGMapNavButtonHTUpOutside = @"s8t16e8";
NSString* const kAudIntTextPGMapNavButtonITUpOutside = @"s8t17e8";

//PGEvent (9)
NSString* const kAudIntTextPGEventAutoSetup = @"s9t0e31";
NSString* const kAudIntTextPGEventAutoRefresh = @"s9t0e32";

//TouchDown
NSString* const kAudIntTextPGEventMsgButtonTUpInside = @"s9t7e7";

NSString* const kAudIntTextPGEventHelpTUpInside = @"s9t11e7";

//TouchUpOutside
NSString* const kAudIntTextPGEventMsgButtonTUpOutside = @"s9t7e8";


//PGRomance (10)
NSString* const kAudIntTextPGRomanceAutoSetup = @"s10t0e31";
NSString* const kAudIntTextPGRomanceAutoRefresh = @"s10t0e32";

//TouchDown
NSString* const kAudIntTextPGRomanceMsgButtonTUpInside = @"s10t7e7";

//TouchUpOutside
NSString* const kAudIntTextPGRomanceMsgButtonTUpOutside = @"s10t7e8";


//PGDetail (11)
NSString* const kAudIntTextPGDetailAutoSetup = @"s11t0e31";
NSString* const kAudIntTextPGDetailAutoRefresh = @"s11t0e32";

//TouchDown
NSString* const kAudIntTextPGDetailBackButtonTUpInside = @"s11t1e7";

NSString* const kAudIntTextPGDetailHelpTUpInside = @"s11t10e7";

//TouchUpOutside
NSString* const kAudIntTextPGDetailBackButtonTUpOutside = @"s11t1e8";


//PGArrange (12)
NSString* const kAudIntTextPGArrangeAutoSetup = @"s12t0e31";
NSString* const kAudIntTextPGArrangeAutoRefresh = @"s12t0e32";

//TouchDown
NSString* const kAudIntTextPGArrangeBackButtonTUpInside = @"s12t1e7";

NSString* const kAudIntTextPGArrange10To11ButtonTUpInside = @"s12t4e7";
NSString* const kAudIntTextPGArrange11To12ButtonTUpInside = @"s12t5e7";
NSString* const kAudIntTextPGArrange12To13ButtonTUpInside = @"s12t6e7";
NSString* const kAudIntTextPGArrange13To14ButtonTUpInside = @"s12t7e7";
NSString* const kAudIntTextPGArrange14To15ButtonTUpInside = @"s12t8e7";

NSString* const kAudIntTextPGArrange15To16ButtonTUpInside = @"s12t9e7";
NSString* const kAudIntTextPGArrange16To17ButtonTUpInside = @"s12t10e7";
NSString* const kAudIntTextPGArrange17To18ButtonTUpInside = @"s12t11e7";
NSString* const kAudIntTextPGArrange18To19ButtonTUpInside = @"s12t12e7";
NSString* const kAudIntTextPGArrange19To20ButtonTUpInside = @"s12t13e7";

NSString* const kAudIntTextPGArrange20To21ButtonTUpInside = @"s12t14e7";
NSString* const kAudIntTextPGArrange21To22ButtonTUpInside = @"s12t15e7";
NSString* const kAudIntTextPGArrange22To23ButtonTUpInside = @"s12t16e7";
NSString* const kAudIntTextPGArrange23To24ButtonTUpInside = @"s12t17e7";

NSString* const kAudIntTextPGArrangeHelpTUpInside = @"s12t19e7";

//TouchUpOutside
NSString* const kAudIntTextPGArrangeBackButtonTUpOutside = @"s12t1e8";

NSString* const kAudIntTextPGArrange10To11ButtonTUpOutside = @"s12t4e8";
NSString* const kAudIntTextPGArrange11To12ButtonTUpOutside = @"s12t5e8";
NSString* const kAudIntTextPGArrange12To13ButtonTUpOutside = @"s12t6e8";
NSString* const kAudIntTextPGArrange13To14ButtonTUpOutside = @"s12t7e8";
NSString* const kAudIntTextPGArrange14To15ButtonTUpOutside = @"s12t8e8";

NSString* const kAudIntTextPGArrange15To16ButtonTUpOutside = @"s12t9e8";
NSString* const kAudIntTextPGArrange16To17ButtonTUpOutside = @"s12t10e8";
NSString* const kAudIntTextPGArrange17To18ButtonTUpOutside = @"s12t11e8";
NSString* const kAudIntTextPGArrange18To19ButtonTUpOutside = @"s12t12e8";
NSString* const kAudIntTextPGArrange19To20ButtonTUpOutside = @"s12t13e8";

NSString* const kAudIntTextPGArrange20To21ButtonTUpOutside = @"s12t14e8";
NSString* const kAudIntTextPGArrange21To22ButtonTUpOutside = @"s12t15e8";
NSString* const kAudIntTextPGArrange22To23ButtonTUpOutside = @"s12t16e8";
NSString* const kAudIntTextPGArrange23To24ButtonTUpOutside = @"s12t17e8";



//PGPlace (13)
NSString* const kAudIntTextPGPlaceAutoSetup = @"s13t0e31";
NSString* const kAudIntTextPGPlaceAutoRefresh = @"s13t0e32";

//TouchDown
NSString* const kAudIntTextPGPlaceBackButtonTUpInside = @"s13t1e7";

//Region Buttons
NSString* const kAudIntTextPGPlaceRegionAButtonTUpInside = @"s13t4e7";
NSString* const kAudIntTextPGPlaceRegionBButtonTUpInside = @"s13t5e7";
NSString* const kAudIntTextPGPlaceRegionCButtonTUpInside = @"s13t6e7";
NSString* const kAudIntTextPGPlaceRegionDButtonTUpInside = @"s13t7e7";
NSString* const kAudIntTextPGPlaceRegionEButtonTUpInside = @"s13t8e7";
NSString* const kAudIntTextPGPlaceRegionFButtonTUpInside = @"s13t9e7";
NSString* const kAudIntTextPGPlaceRegionGButtonTUpInside = @"s13t10e7";
NSString* const kAudIntTextPGPlaceRegionHButtonTUpInside = @"s13t11e7";
NSString* const kAudIntTextPGPlaceRegionIButtonTUpInside = @"s13t12e7";

NSString* const kAudIntTextPGPlaceHelpTUpInside = @"s13t13e7";

//TouchUpOutside
NSString* const kAudIntTextPGPlaceBackButtonTUpOutside = @"s13t1e8";

NSString* const kAudIntTextPGPlaceRegionAButtonTUpOutside = @"s13t4e8";
NSString* const kAudIntTextPGPlaceRegionBButtonTUpOutside = @"s13t5e8";
NSString* const kAudIntTextPGPlaceRegionCButtonTUpOutside = @"s13t6e8";
NSString* const kAudIntTextPGPlaceRegionDButtonTUpOutside = @"s13t7e8";
NSString* const kAudIntTextPGPlaceRegionEButtonTUpOutside = @"s13t8e8";
NSString* const kAudIntTextPGPlaceRegionFButtonTUpOutside = @"s13t9e8";
NSString* const kAudIntTextPGPlaceRegionGButtonTUpOutside = @"s13t10e8";
NSString* const kAudIntTextPGPlaceRegionHButtonTUpOutside = @"s13t11e8";
NSString* const kAudIntTextPGPlaceRegionIButtonTUpOutside = @"s13t12e8";

//PGSchedule (14)
NSString* const kAudIntTextPGScheduleAutoSetup = @"s14t0e31";
NSString* const kAudIntTextPGScheduleAutoRefresh = @"s14t0e32";

//TouchDown
NSString* const kAudIntTextPGScheduleBackButtonTUpInside = @"s14t1e7";

NSString* const kAudIntTextPGSchedule10To11ButtonTUpInside = @"s14t4e7";
NSString* const kAudIntTextPGSchedule11To12ButtonTUpInside = @"s14t5e7";
NSString* const kAudIntTextPGSchedule12To13ButtonTUpInside = @"s14t6e7";
NSString* const kAudIntTextPGSchedule13To14ButtonTUpInside = @"s14t7e7";
NSString* const kAudIntTextPGSchedule14To15ButtonTUpInside = @"s14t8e7";

NSString* const kAudIntTextPGSchedule15To16ButtonTUpInside = @"s14t9e7";
NSString* const kAudIntTextPGSchedule16To17ButtonTUpInside = @"s14t10e7";
NSString* const kAudIntTextPGSchedule17To18ButtonTUpInside = @"s14t11e7";
NSString* const kAudIntTextPGSchedule18To19ButtonTUpInside = @"s14t12e7";
NSString* const kAudIntTextPGSchedule19To20ButtonTUpInside = @"s14t13e7";

NSString* const kAudIntTextPGSchedule20To21ButtonTUpInside = @"s14t14e7";
NSString* const kAudIntTextPGSchedule21To22ButtonTUpInside = @"s14t15e7";
NSString* const kAudIntTextPGSchedule22To23ButtonTUpInside = @"s14t16e7";
NSString* const kAudIntTextPGSchedule23To24ButtonTUpInside = @"s14t17e7";

NSString* const kAudIntTextPGScheduleHelpTUpInside = @"s14t18e7";

//TouchUpOutside
NSString* const kAudIntTextPGScheduleBackButtonTUpOutside = @"s14t1e8";

NSString* const kAudIntTextPGSchedule10To11ButtonTUpOutside = @"s14t4e8";
NSString* const kAudIntTextPGSchedule11To12ButtonTUpOutside = @"s14t5e8";
NSString* const kAudIntTextPGSchedule12To13ButtonTUpOutside = @"s14t6e8";
NSString* const kAudIntTextPGSchedule13To14ButtonTUpOutside = @"s14t7e8";
NSString* const kAudIntTextPGSchedule14To15ButtonTUpOutside = @"s14t8e8";

NSString* const kAudIntTextPGSchedule15To16ButtonTUpOutside = @"s14t9e8";
NSString* const kAudIntTextPGSchedule16To17ButtonTUpOutside = @"s14t10e8";
NSString* const kAudIntTextPGSchedule17To18ButtonTUpOutside = @"s14t11e8";
NSString* const kAudIntTextPGSchedule18To19ButtonTUpOutside = @"s14t12e8";
NSString* const kAudIntTextPGSchedule19To20ButtonTUpOutside = @"s14t13e8";

NSString* const kAudIntTextPGSchedule20To21ButtonTUpOutside = @"s14t14e8";
NSString* const kAudIntTextPGSchedule21To22ButtonTUpOutside = @"s14t15e8";
NSString* const kAudIntTextPGSchedule22To23ButtonTUpOutside = @"s14t16e8";
NSString* const kAudIntTextPGSchedule23To24ButtonTUpOutside = @"s14t17e8";



//PGTalk (15)
NSString* const kAudIntTextPGTalkAutoSetup = @"s15t0e31";
NSString* const kAudIntTextPGTalkAutoRefresh = @"s15t0e32";

//TouchDown
NSString* const kAudIntTextPGTalkMsgButtonTUpInside = @"s15t7e7";

//TouchUpOutside
NSString* const kAudIntTextPGTalkMsgButtonTUpOutside = @"s15t7e8";


//PGSMS (16)
NSString* const kAudIntTextPGSMSAutoSetup = @"s16t0e31";
NSString* const kAudIntTextPGSMSAutoRefresh = @"s16t0e32";

//TouchDown
NSString* const kAudIntTextPGSMSBackButtonTUpInside = @"s16t1e7";
NSString* const kAudIntTextPGSMSSendButtonTUpInside = @"s16t5e7";

NSString* const kAudIntTextPGSMSHelpTUpInside = @"s16t6e7";

//TouchUpOutside
NSString* const kAudIntTextPGSMSBackButtonTUpOutside = @"s16t1e8";
NSString* const kAudIntTextPGSMSSendButtonTUpOutside = @"s16t5e8";

//PGTutorPage (18)

//Auto
NSString* const kAudIntTextPGTutorPageAutoSetup = @"s18t0e31";
NSString* const kAudIntTextPGTutorPageAutoRefresh = @"s18t0e32";

//PGTutorSV (19)

//Auto
NSString* const kAudIntTextPGTutorSVAutoSetup = @"s19t0e31";
NSString* const kAudIntTextPGTutorSVAutoRefresh = @"s19t0e32";

//TouchDown
NSString* const kAudIntTextPGTutorSVBackButtonTUpInside = @"s19t1e7";

//TouchUpOutside
NSString* const kAudIntTextPGTutorSVBackButtonTUpOutside = @"s19t1e8";

//PGTutorMenu (20)

//Auto
NSString* const kAudIntTextPGTutorMenuAutoSetup = @"s20t0e31";
NSString* const kAudIntTextPGTutorMenuAutoRefresh = @"s20t0e32";

//TouchDown
NSString* const kAudIntTextPGTutorMenuBackButtonTUpInside = @"s20t1e7";

NSString* const kAudIntTextPGTutorMenuScene1ButtonTUpInside = @"s20t3e7";
NSString* const kAudIntTextPGTutorMenuScene2ButtonTUpInside = @"s20t4e7";
NSString* const kAudIntTextPGTutorMenuScene3ButtonTUpInside = @"s20t5e7";
NSString* const kAudIntTextPGTutorMenuScene4ButtonTUpInside = @"s20t6e7";
NSString* const kAudIntTextPGTutorMenuScene5ButtonTUpInside = @"s20t7e7";
NSString* const kAudIntTextPGTutorMenuScene6ButtonTUpInside = @"s20t8e7";
NSString* const kAudIntTextPGTutorMenuScene7ButtonTUpInside = @"s20t9e7";
NSString* const kAudIntTextPGTutorMenuScene8ButtonTUpInside = @"s20t10e7";
NSString* const kAudIntTextPGTutorMenuScene9ButtonTUpInside = @"s20t11e7";
NSString* const kAudIntTextPGTutorMenuScene10ButtonTUpInside = @"s20t12e7";
NSString* const kAudIntTextPGTutorMenuScene11ButtonTUpInside = @"s20t13e7";
NSString* const kAudIntTextPGTutorMenuScene12ButtonTUpInside = @"s20t14e7";


//TouchUpOutside
NSString* const kAudIntTextPGTutorMenuBackButtonTUpOutside = @"s20t1e8";

NSString* const kAudIntTextPGTutorMenuScene1ButtonTUpOutside = @"s20t3e8";
NSString* const kAudIntTextPGTutorMenuScene2ButtonTUpOutside = @"s20t4e8";
NSString* const kAudIntTextPGTutorMenuScene3ButtonTUpOutside = @"s20t5e8";
NSString* const kAudIntTextPGTutorMenuScene4ButtonTUpOutside = @"s20t6e8";
NSString* const kAudIntTextPGTutorMenuScene5ButtonTUpOutside = @"s20t7e8";
NSString* const kAudIntTextPGTutorMenuScene6ButtonTUpOutside = @"s20t8e8";
NSString* const kAudIntTextPGTutorMenuScene7ButtonTUpOutside = @"s20t9e8";
NSString* const kAudIntTextPGTutorMenuScene8ButtonTUpOutside = @"s20t10e8";
NSString* const kAudIntTextPGTutorMenuScene9ButtonTUpOutside = @"s20t11e8";
NSString* const kAudIntTextPGTutorMenuScene10ButtonTUpOutside = @"s20t12e8";
NSString* const kAudIntTextPGTutorMenuScene11ButtonTUpOutside = @"s20t13e8";
NSString* const kAudIntTextPGTutorMenuScene12ButtonTUpOutside = @"s20t14e8";

#pragma mark Modal
//PGMConfirm (31)

//Auto
NSString* const kAudIntTextPGMConfirmAutoSetup = @"s31t0e31";
NSString* const kAudIntTextPGMConfirmAutoRefresh = @"s31t0e32";

//TouchDown
NSString* const kAudIntTextPGMConfirmLeftButtonTUpInside = @"s31t3e7";
NSString* const kAudIntTextPGMConfirmRightButtonTUpInside = @"s31t4e7";

//TouchUpOutside
NSString* const kAudIntTextPGMConfirmLeftButtonTUpOutside = @"s31t3e8";
NSString* const kAudIntTextPGMConfirmRightButtonTUpOutside = @"s31t4e8";	

//PGMAlert (32)
NSString* const kAudIntTextPGMAlertAutoSetup = @"s32t0e31";
NSString* const kAudIntTextPGMAlertAutoRefresh = @"s32t0e32";

//TouchDown
NSString* const kAudIntTextPGMAlertMidButtonTUpInside = @"s32t3e7";

//TouchUpOutside
NSString* const kAudIntTextPGMAlertMidButtonTUpOutside = @"s32t3e8";

//PGMSelection (33)
NSString* const kAudIntTextPGMSelectionAutoSetup = @"s32t0e31";
NSString* const kAudIntTextPGMSelectionAutoRefresh = @"s32t0e32";

//TouchDown
NSString* const kAudIntTextPGMSelectionChoice1ButtonTUpInside = @"s33t3e7";
NSString* const kAudIntTextPGMSelectionChoice2ButtonTUpInside = @"s33t4e7";
NSString* const kAudIntTextPGMSelectionChoice3ButtonTUpInside = @"s33t5e7";

//TouchUpOutside
NSString* const kAudIntTextPGMSelectionChoice1ButtonTUpOutside = @"s33t3e8";
NSString* const kAudIntTextPGMSelectionChoice2ButtonTUpOutside = @"s33t4e8";
NSString* const kAudIntTextPGMSelectionChoice3ButtonTUpOutside = @"s33t5e8";


@end
