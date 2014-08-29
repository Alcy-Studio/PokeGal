//
//  ActPGTutorPageAutoSetup+Text.m
//  frdfrd
//
//  Created by westbugs on 11-05-01.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "ActPGTutorPageAutoSetup+Text.h"

#import "PGTutorPageViewController.h"
//Constants
#import "ConstantsTutorBubble.h"
#import "ConstantsTutorTextOut.h"
#import "ConstantsTmpTutor.h"
#import "ConstantsSceneCode.h"
#import "ConstantsFileType.h"


@interface ActPGTutorPageAutoSetup()

-(void)setTextPosition1;
-(void)setTextPosition2;
-(void)setTextPosition3;
-(void)setTextPosition4;
-(void)setTextPosition5;
-(void)setTextPosition6;

@end

@implementation ActPGTutorPageAutoSetup(Text)

-(NSString*)getTextPath{
	
	NSUInteger s = [[NSUserDefaults standardUserDefaults] integerForKey:kTmpTutorScene];
	
	NSUInteger p = [[NSUserDefaults standardUserDefaults] integerForKey:kTmpTutorPage];
	
	NSString* fileName;
	
	//NSString* path;
	/*
	 //Test Case
	 fileName = [self getTextForTutorMain:kTutorMainPage2];
	 path = [[NSBundle mainBundle] pathForResource:fileName ofType:kTmpFileTypePng];
	 return path;
	 //Test Case
	 */
	
	//NSLog(@"Scene Code: %i", s);
	
	//Add Text in other method
	switch (s) {
		case kSceneCodePGMain:
			fileName = [self getTextForTutorMain:p];
			break;
		case kSceneCodePGAchi:
			fileName = [self getTextForTutorAchi:p];
			break;
		case kSceneCodePGAttr:
			fileName = [self getTextForTutorAttr:p];
			break;
		case kSceneCodePGDate:
			fileName = [self getTextForTutorDate:p];
			break;
		case kSceneCodePGWalk:
			fileName = [self getTextForTutorWalk:p];
			break;
		case kSceneCodePGEvent:
			fileName = [self getTextForTutorEvent:p];
			break;
		case kSceneCodePGMap:
			fileName = [self getTextForTutorMap:p];
			break;
		case kSceneCodePGArrange:
			fileName = [self getTextForTutorArrange:p];
			break;
		case kSceneCodePGPlace:
			fileName = [self getTextForTutorPlace:p];
			break;
		case kSceneCodePGSchedule:
			fileName = [self getTextForTutorSchedule:p];
			break;
		case kSceneCodePGDetail:
			fileName = [self getTextForTutorDetail:p];
			break;
		case kSceneCodePGSMS:
			fileName = [self getTextForTutorSms:p];
			break;
			
		default:
			fileName = nil;
			break;
	}
	if (!fileName)
		return nil;
	
	//NSLog(@"%@", fileName);
		
	return fileName;
	
	
}

-(NSString*)getTextForTutorMain:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorMainPage1:
			fileName = [self getTextForTutorMainPage1];
			break;
		case kTutorMainPage2:
			fileName = [self getTextForTutorMainPage2];
			break;
		case kTutorMainPage3:
			fileName = [self getTextForTutorMainPage3];
			break;
		case kTutorMainPage4:
			fileName = [self getTextForTutorMainPage4];
			break;
		case kTutorMainPage5:
			fileName = [self getTextForTutorMainPage5];
			break;
		case kTutorMainPage6:
			fileName = [self getTextForTutorMainPage6];
			break;
		case kTutorMainPage7:
			fileName = [self getTextForTutorMainPage7];
			break;
		case kTutorMainPage8:
			fileName = [self getTextForTutorMainPage8];
			break;
		case kTutorMainPage9:
			fileName = [self getTextForTutorMainPage9];
			break;
		case kTutorMainPage10:
			fileName = [self getTextForTutorMainPage10];
			break;
		case kTutorMainPage11:
			fileName = [self getTextForTutorMainPage11];
			break;
		default:
			fileName = nil;
			break;
	}
	
	if (!fileName) {
		return nil;
	}
	
	return fileName;
}

-(NSString*)getTextForTutorMainPage1{
	
	return kUiTutorNoteMainText1;
	
}

-(NSString*)getTextForTutorMainPage2{
	
	return kUiTutorNoteMainText2;
	
}

-(NSString*)getTextForTutorMainPage3{
	
	return kUiTutorNoteMainText3;
	
}

-(NSString*)getTextForTutorMainPage4{
	
	return kUiTutorNoteMainText4;
	
}

-(NSString*)getTextForTutorMainPage5{
	
	return kUiTutorNoteMainText5;
	
}

-(NSString*)getTextForTutorMainPage6{
	
	return kUiTutorNoteMainText6;
	
}

-(NSString*)getTextForTutorMainPage7{
	
	return kUiTutorNoteMainText7;
	
}

-(NSString*)getTextForTutorMainPage8{
	
	return kUiTutorNoteMainText8;
	
}

-(NSString*)getTextForTutorMainPage9{
	
	return kUiTutorNoteMainText9;
	
}

-(NSString*)getTextForTutorMainPage10{
	
	return kUiTutorNoteMainText10;
	
}

-(NSString*)getTextForTutorMainPage11{
	
	return kUiTutorNoteMainText11;
	
}

-(NSString*)getTextForTutorAchi:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorAchiPage1:
			fileName = [self getTextForTutorAchiPage1];
			break;
		case kTutorAchiPage2:
			fileName = [self getTextForTutorAchiPage2];
			break;
		case kTutorAchiPage3:
			fileName = [self getTextForTutorAchiPage3];
			break;
		case kTutorAchiPage4:
			fileName = [self getTextForTutorAchiPage4];
			break;
		case kTutorAchiPage5:
			fileName = [self getTextForTutorAchiPage5];
			break;
		case kTutorAchiPage6:
			fileName = [self getTextForTutorAchiPage6];
			break;
		default:
			fileName = nil;
			break;
	}
	
	if (!fileName) {
		return nil;
	}
	
	return fileName;
}

-(NSString*)getTextForTutorAchiPage1{
	
	return kUiTutorNoteAchiText1;
	
}

-(NSString*)getTextForTutorAchiPage2{
	
	return kUiTutorNoteAchiText2;
	
}

-(NSString*)getTextForTutorAchiPage3{
	
	return kUiTutorNoteAchiText3;
	
}

-(NSString*)getTextForTutorAchiPage4{
	
	return kUiTutorNoteAchiText4;
	
}

-(NSString*)getTextForTutorAchiPage5{
	
	return kUiTutorNoteAchiText5;
	
}

-(NSString*)getTextForTutorAchiPage6{
	
	return kUiTutorNoteAchiText6;
	
}


-(NSString*)getTextForTutorAttr:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorAttrPage1:
			fileName = [self getTextForTutorAttrPage1];
			break;
		case kTutorAttrPage2:
			fileName = [self getTextForTutorAttrPage2];
			break;
		case kTutorAttrPage3:
			fileName = [self getTextForTutorAttrPage3];
			break;
		case kTutorAttrPage4:
			fileName = [self getTextForTutorAttrPage4];
			break;
		case kTutorAttrPage5:
			fileName = [self getTextForTutorAttrPage5];
			break;
		case kTutorAttrPage6:
			fileName = [self getTextForTutorAttrPage6];
			break;
		case kTutorAttrPage7:
			fileName = [self getTextForTutorAttrPage7];
			break;
		case kTutorAttrPage8:
			fileName = [self getTextForTutorAttrPage8];
			break;
		case kTutorAttrPage9:
			fileName = [self getTextForTutorAttrPage9];
			break;
			
		default:
			fileName = nil;
			break;
	}
	
	if (!fileName) {
		return nil;
	}
	
	return fileName;
}

-(NSString*)getTextForTutorAttrPage1{
	
	return kUiTutorNoteAttrText1;
	
}

-(NSString*)getTextForTutorAttrPage2{
	
	return kUiTutorNoteAttrText2;
	
}

-(NSString*)getTextForTutorAttrPage3{
	
	return kUiTutorNoteAttrText3;
	
}

-(NSString*)getTextForTutorAttrPage4{
	
	return kUiTutorNoteAttrText4;
	
}

-(NSString*)getTextForTutorAttrPage5{
	
	return kUiTutorNoteAttrText5;
	
}

-(NSString*)getTextForTutorAttrPage6{
	
	return kUiTutorNoteAttrText6;
	
}

-(NSString*)getTextForTutorAttrPage7{
	
	return kUiTutorNoteAttrText7;
	
}

-(NSString*)getTextForTutorAttrPage8{
	
	return kUiTutorNoteAttrText8;
	
}

-(NSString*)getTextForTutorAttrPage9{
	
	return kUiTutorNoteAttrText9;
	
}

-(NSString*)getTextForTutorDate:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorDatePage1:
			fileName = [self getTextForTutorDatePage1];
			break;
		case kTutorDatePage2:
			fileName = [self getTextForTutorDatePage2];
			break;
		case kTutorDatePage3:
			fileName = [self getTextForTutorDatePage3];
			break;
		case kTutorDatePage4:
			fileName = [self getTextForTutorDatePage4];
			break;
		case kTutorDatePage5:
			fileName = [self getTextForTutorDatePage5];
			break;
		case kTutorDatePage6:
			fileName = [self getTextForTutorDatePage6];
			break;
		case kTutorDatePage7:
			fileName = [self getTextForTutorDatePage7];
			break;
		case kTutorDatePage8:
			fileName = [self getTextForTutorDatePage8];
			break;
		case kTutorDatePage9:
			fileName = [self getTextForTutorDatePage9];
			break;
		case kTutorDatePage10:
			fileName = [self getTextForTutorDatePage10];
			break;
		case kTutorDatePage11:
			fileName = [self getTextForTutorDatePage11];
			break;
			
		default:
			fileName = nil;
			break;
	}
	
	if (!fileName) {
		return nil;
	}
	
	return fileName;
}

-(NSString*)getTextForTutorDatePage1{
	
	return kUiTutorNoteDateText1;
	
}

-(NSString*)getTextForTutorDatePage2{
	
	return kUiTutorNoteDateText2;
	
}

-(NSString*)getTextForTutorDatePage3{
	
	return kUiTutorNoteDateText3;
	
}

-(NSString*)getTextForTutorDatePage4{
	
	return kUiTutorNoteDateText4;
	
}

-(NSString*)getTextForTutorDatePage5{
	
	return kUiTutorNoteDateText5;
	
}

-(NSString*)getTextForTutorDatePage6{
	
	return kUiTutorNoteDateText6;
	
}

-(NSString*)getTextForTutorDatePage7{
	
	return kUiTutorNoteDateText7;
	
}

-(NSString*)getTextForTutorDatePage8{
	
	return kUiTutorNoteDateText8;
	
}

-(NSString*)getTextForTutorDatePage9{
	
	return kUiTutorNoteDateText9;
	
}

-(NSString*)getTextForTutorDatePage10{
	
	return kUiTutorNoteDateText10;
	
}

-(NSString*)getTextForTutorDatePage11{
	
	return kUiTutorNoteDateText11;
	
}

-(NSString*)getTextForTutorWalk:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorWalkPage1:
			fileName = [self getTextForTutorWalkPage1];
			break;
		case kTutorWalkPage2:
			fileName = [self getTextForTutorWalkPage2];
			break;
		case kTutorWalkPage3:
			fileName = [self getTextForTutorWalkPage3];
			break;
		case kTutorWalkPage4:
			fileName = [self getTextForTutorWalkPage4];
			break;
		case kTutorWalkPage5:
			fileName = [self getTextForTutorWalkPage5];
			break;
		case kTutorWalkPage6:
			fileName = [self getTextForTutorWalkPage6];
			break;
		case kTutorWalkPage7:
			fileName = [self getTextForTutorWalkPage7];
			break;
		case kTutorWalkPage8:
			fileName = [self getTextForTutorWalkPage8];
			break;
		case kTutorWalkPage9:
			fileName = [self getTextForTutorWalkPage9];
			break;
		case kTutorWalkPage10:
			fileName = [self getTextForTutorWalkPage10];
			break;
			
		default:
			fileName = nil;
			break;
	}
	
	if (!fileName) {
		return nil;
	}
	
	return fileName;
}

-(NSString*)getTextForTutorWalkPage1{
	
	return kUiTutorNoteWalkText1;
	
}

-(NSString*)getTextForTutorWalkPage2{
	
	return kUiTutorNoteWalkText2;
	
}

-(NSString*)getTextForTutorWalkPage3{
	
	return kUiTutorNoteWalkText3;
	
}

-(NSString*)getTextForTutorWalkPage4{
	
	return kUiTutorNoteWalkText4;
	
}

-(NSString*)getTextForTutorWalkPage5{
	
	return kUiTutorNoteWalkText5;
	
}

-(NSString*)getTextForTutorWalkPage6{
	
	return kUiTutorNoteWalkText6;
	
}

-(NSString*)getTextForTutorWalkPage7{
	
	return kUiTutorNoteWalkText7;
	
}

-(NSString*)getTextForTutorWalkPage8{
	
	return kUiTutorNoteWalkText8;
	
}

-(NSString*)getTextForTutorWalkPage9{
	
	return kUiTutorNoteWalkText9;
	
}

-(NSString*)getTextForTutorWalkPage10{
	
	return kUiTutorNoteWalkText10;
	
}

-(NSString*)getTextForTutorEvent:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorEventPage1:
			fileName = [self getTextForTutorEventPage1];
			break;
		case kTutorEventPage2:
			fileName = [self getTextForTutorEventPage2];
			break;
		case kTutorEventPage3:
			fileName = [self getTextForTutorEventPage3];
			break;
		case kTutorEventPage4:
			fileName = [self getTextForTutorEventPage4];
			break;
		case kTutorEventPage5:
			fileName = [self getTextForTutorEventPage5];
			break;
		case kTutorEventPage6:
			fileName = [self getTextForTutorEventPage6];
			break;
		case kTutorEventPage7:
			fileName = [self getTextForTutorEventPage7];
			break;
		case kTutorEventPage8:
			fileName = [self getTextForTutorEventPage8];
			break;
		case kTutorEventPage9:
			fileName = [self getTextForTutorEventPage9];
			break;
		case kTutorEventPage10:
			fileName = [self getTextForTutorEventPage10];
			break;
			
		default:
			fileName = nil;
			break;
	}
	
	if (!fileName) {
		return nil;
	}
	
	return fileName;
}

-(NSString*)getTextForTutorEventPage1{
	
	return kUiTutorNoteEventText1;
	
}

-(NSString*)getTextForTutorEventPage2{
	
	return kUiTutorNoteEventText2;
	
}

-(NSString*)getTextForTutorEventPage3{
	
	return kUiTutorNoteEventText3;
	
}

-(NSString*)getTextForTutorEventPage4{
	
	return kUiTutorNoteEventText4;
	
}

-(NSString*)getTextForTutorEventPage5{
	
	return kUiTutorNoteEventText5;
	
}

-(NSString*)getTextForTutorEventPage6{
	
	return kUiTutorNoteEventText6;
	
}

-(NSString*)getTextForTutorEventPage7{
	
	return kUiTutorNoteEventText7;
	
}

-(NSString*)getTextForTutorEventPage8{
	
	return kUiTutorNoteEventText8;
	
}

-(NSString*)getTextForTutorEventPage9{
	
	return kUiTutorNoteEventText9;
	
}

-(NSString*)getTextForTutorEventPage10{
	
	return kUiTutorNoteEventText10;
	
}

-(NSString*)getTextForTutorMap:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorMapPage1:
			fileName = [self getTextForTutorMapPage1];
			break;
		case kTutorMapPage2:
			fileName = [self getTextForTutorMapPage2];
			break;
		case kTutorMapPage3:
			fileName = [self getTextForTutorMapPage3];
			break;
		case kTutorMapPage4:
			fileName = [self getTextForTutorMapPage4];
			break;
		case kTutorMapPage5:
			fileName = [self getTextForTutorMapPage5];
			break;
		case kTutorMapPage6:
			fileName = [self getTextForTutorMapPage6];
			break;
		case kTutorMapPage7:
			fileName = [self getTextForTutorMapPage7];
			break;
		case kTutorMapPage8:
			fileName = [self getTextForTutorMapPage8];
			break;
		default:
			fileName = nil;
			break;
	}
	
	if (!fileName) {
		return nil;
	}
	
	return fileName;
}

-(NSString*)getTextForTutorMapPage1{
	
	return kUiTutorNoteMapText1;
	
}

-(NSString*)getTextForTutorMapPage2{
	
	return kUiTutorNoteMapText2;
	
}

-(NSString*)getTextForTutorMapPage3{
	
	return kUiTutorNoteMapText3;
	
}

-(NSString*)getTextForTutorMapPage4{
	
	return kUiTutorNoteMapText4;
	
}

-(NSString*)getTextForTutorMapPage5{
	
	return kUiTutorNoteMapText5;
	
}

-(NSString*)getTextForTutorMapPage6{
	
	return kUiTutorNoteMapText6;
	
}

-(NSString*)getTextForTutorMapPage7{
	
	return kUiTutorNoteMapText7;
	
}

-(NSString*)getTextForTutorMapPage8{
	
	return kUiTutorNoteMapText8;
	
}

-(NSString*)getTextForTutorArrange:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorArrangePage1:
			fileName = [self getTextForTutorArrangePage1];
			break;
		case kTutorArrangePage2:
			fileName = [self getTextForTutorArrangePage2];
			break;
		case kTutorArrangePage3:
			fileName = [self getTextForTutorArrangePage3];
			break;
		case kTutorArrangePage4:
			fileName = [self getTextForTutorArrangePage4];
			break;
			
		default:
			fileName = nil;
			break;
	}
	
	if (!fileName) {
		return nil;
	}
	
	return fileName;
}

-(NSString*)getTextForTutorArrangePage1{
	
	return kUiTutorNoteArrangeText1;
	
}

-(NSString*)getTextForTutorArrangePage2{
	
	return kUiTutorNoteArrangeText2;
	
}

-(NSString*)getTextForTutorArrangePage3{
	
	return kUiTutorNoteArrangeText3;
	
}

-(NSString*)getTextForTutorArrangePage4{
	
	return kUiTutorNoteArrangeText4;
	
}

-(NSString*)getTextForTutorPlace:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorPlacePage1:
			fileName = [self getTextForTutorPlacePage1];
			break;
		case kTutorPlacePage2:
			fileName = [self getTextForTutorPlacePage2];
			break;
		case kTutorPlacePage3:
			fileName = [self getTextForTutorPlacePage3];
			break;
		case kTutorPlacePage4:
			fileName = [self getTextForTutorPlacePage4];
			break;
			
		default:
			fileName = nil;
			break;
	}
	
	if (!fileName) {
		return nil;
	}
	
	return fileName;
}

-(NSString*)getTextForTutorPlacePage1{
	
	return kUiTutorNotePlaceText1;
	
}

-(NSString*)getTextForTutorPlacePage2{
	
	return kUiTutorNotePlaceText2;
	
}

-(NSString*)getTextForTutorPlacePage3{
	
	return kUiTutorNotePlaceText3;
	
}

-(NSString*)getTextForTutorPlacePage4{
	
	return kUiTutorNotePlaceText4;
	
}


-(NSString*)getTextForTutorSchedule:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorSchedulePage1:
			fileName = [self getTextForTutorSchedulePage1];
			break;
		case kTutorSchedulePage2:
			fileName = [self getTextForTutorSchedulePage2];
			break;
			
		default:
			fileName = nil;
			break;
	}
	
	if (!fileName) {
		return nil;
	}
	
	return fileName;
}

-(NSString*)getTextForTutorSchedulePage1{
	
	return kUiTutorNoteScheduleText1;
	
}

-(NSString*)getTextForTutorSchedulePage2{
	
	return kUiTutorNoteScheduleText2;
	
}

-(NSString*)getTextForTutorDetail:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorDetailPage1:
			fileName = [self getTextForTutorDetailPage1];
			break;
		case kTutorDetailPage2:
			fileName = [self getTextForTutorDetailPage2];
			break;
		case kTutorDetailPage3:
			fileName = [self getTextForTutorDetailPage3];
			break;
			
		default:
			fileName = nil;
			break;
	}
	
	if (!fileName) {
		return nil;
	}
	
	return fileName;
}

-(NSString*)getTextForTutorDetailPage1{
	
	return kUiTutorNoteDetailText1;
	
}

-(NSString*)getTextForTutorDetailPage2{
	
	return kUiTutorNoteDetailText2;
	
}

-(NSString*)getTextForTutorDetailPage3{
	
	return kUiTutorNoteDetailText3;
	
}

-(NSString*)getTextForTutorSms:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorSmsPage1:
			fileName = [self getTextForTutorSmsPage1];
			break;
		case kTutorSmsPage2:
			fileName = [self getTextForTutorSmsPage2];
			break;
		case kTutorSmsPage3:
			fileName = [self getTextForTutorSmsPage3];
			break;
		case kTutorSmsPage4:
			fileName = [self getTextForTutorSmsPage4];
			break;
		case kTutorSmsPage5:
			fileName = [self getTextForTutorSmsPage5];
			break;
			
		default:
			fileName = nil;
			break;
	}
	
	if (!fileName) {
		return nil;
	}
	
	return fileName;
}

-(NSString*)getTextForTutorSmsPage1{
	
	return kUiTutorNoteSmsText1;
	
}

-(NSString*)getTextForTutorSmsPage2{
	
	return kUiTutorNoteSmsText2;
	
}

-(NSString*)getTextForTutorSmsPage3{
	
	return kUiTutorNoteSmsText3;
	
}

-(NSString*)getTextForTutorSmsPage4{
	
	return kUiTutorNoteSmsText4;
	
}

-(NSString*)getTextForTutorSmsPage5{
	
	return kUiTutorNoteSmsText5;
	
}




//Add Bubble & Img Only
-(void)setTextPosition{
	NSUInteger s = [[NSUserDefaults standardUserDefaults] integerForKey:kTmpTutorScene];
	
	NSUInteger p = [[NSUserDefaults standardUserDefaults] integerForKey:kTmpTutorPage];
	
	/*
	 //Test Case
	 fileName = [self getTextForTutorMain:kTutorMainPage2];
	 path = [[NSBundle mainBundle] pathForResource:fileName ofType:kTmpFileTypePng];
	 return path;
	 //Test Case
	 */
	
	//NSLog(@"Scene Code: %i", s);
	
	//Add Text in other method
	switch (s) {
		case kSceneCodePGMain:
			[self setTextPosForTutorMain:p];
			break;
		case kSceneCodePGAchi:
			[self setTextPosForTutorAchi:p];
			break;
		case kSceneCodePGAttr:
			[self setTextPosForTutorAttr:p];
			break;
		case kSceneCodePGDate:
			[self setTextPosForTutorDate:p];
			break;
		case kSceneCodePGWalk:
			[self setTextPosForTutorWalk:p];
			break;
		case kSceneCodePGEvent:
			[self setTextPosForTutorEvent:p];
			break;
		case kSceneCodePGMap:
			[self setTextPosForTutorMap:p];
			break;
		case kSceneCodePGArrange:
			[self setTextPosForTutorArrange:p];
			break;
		case kSceneCodePGPlace:
			[self setTextPosForTutorPlace:p];
			break;
		case kSceneCodePGSchedule:
			[self setTextPosForTutorSchedule:p];
			break;
		case kSceneCodePGDetail:
			[self setTextPosForTutorDetail:p];
			break;
		case kSceneCodePGSMS:
			[self setTextPosForTutorSms:p];
			break;
			
		default:
			break;
	}
	return;
	
	
	
}


-(void)setTextPosForTutorMain:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorMainPage1:
			[self setTextPosForTutorMainPage1];
			break;
		case kTutorMainPage2:
			[self setTextPosForTutorMainPage2];
			break;
		case kTutorMainPage3:
			[self setTextPosForTutorMainPage3];
			break;
		case kTutorMainPage4:
			[self setTextPosForTutorMainPage4];
			break;
		case kTutorMainPage5:
			[self setTextPosForTutorMainPage5];
			break;
		case kTutorMainPage6:
			[self setTextPosForTutorMainPage6];
			break;
		case kTutorMainPage7:
			[self setTextPosForTutorMainPage7];
			break;
		case kTutorMainPage8:
			[self setTextPosForTutorMainPage8];
			break;
		case kTutorMainPage9:
			[self setTextPosForTutorMainPage9];
			break;
		case kTutorMainPage10:
			[self setTextPosForTutorMainPage10];
			break;
		case kTutorMainPage11:
			[self setTextPosForTutorMainPage11];
			break;
		default:
			break;
	}
	
	return;
}

-(void)setTextPosForTutorMainPage1{
	 
	//UIImageView* mv = (UIImageView*)[(PGTutorPageViewController*)self.resource view3]; 
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	


	//[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, mv.frame.size.width-60, mv.frame.size.height-40)];
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];

	 
}

-(void)setTextPosForTutorMainPage2{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
	
}

-(void)setTextPosForTutorMainPage3{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
	
	
}

-(void)setTextPosForTutorMainPage4{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
	
	
}

-(void)setTextPosForTutorMainPage5{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
	
	
}

-(void)setTextPosForTutorMainPage6{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
	
	
}

-(void)setTextPosForTutorMainPage7{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
	
	
}

-(void)setTextPosForTutorMainPage8{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
	
	
}

-(void)setTextPosForTutorMainPage9{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
	
	
}

-(void)setTextPosForTutorMainPage10{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
	
	
}

-(void)setTextPosForTutorMainPage11{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
	
	
}

-(void)setTextPosForTutorAchi:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorAchiPage1:
			[self setTextPosForTutorAchiPage1];
			break;
		case kTutorAchiPage2:
			[self setTextPosForTutorAchiPage2];
			break;
		case kTutorAchiPage3:
			[self setTextPosForTutorAchiPage3];
			break;
		case kTutorAchiPage4:
			[self setTextPosForTutorAchiPage4];
			break;
		case kTutorAchiPage5:
			[self setTextPosForTutorAchiPage5];
			break;
		case kTutorAchiPage6:
			[self setTextPosForTutorAchiPage6];
			break;
		default:
			nil;
			break;
	}
	
	return;
}

-(void)setTextPosForTutorAchiPage1{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
	
	
}

-(void)setTextPosForTutorAchiPage2{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
	
	
}

-(void)setTextPosForTutorAchiPage3{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
	
	
}

-(void)setTextPosForTutorAchiPage4{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorAchiPage5{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorAchiPage6{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}


-(void)setTextPosForTutorAttr:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorAttrPage1:
			[self setTextPosForTutorAttrPage1];
			break;
		case kTutorAttrPage2:
			[self setTextPosForTutorAttrPage2];
			break;
		case kTutorAttrPage3:
			[self setTextPosForTutorAttrPage3];
			break;
		case kTutorAttrPage4:
			[self setTextPosForTutorAttrPage4];
			break;
		case kTutorAttrPage5:
			[self setTextPosForTutorAttrPage5];
			break;
		case kTutorAttrPage6:
			[self setTextPosForTutorAttrPage6];
			break;
		case kTutorAttrPage7:
			[self setTextPosForTutorAttrPage7];
			break;
		case kTutorAttrPage8:
			[self setTextPosForTutorAttrPage8];
			break;
		case kTutorAttrPage9:
			[self setTextPosForTutorAttrPage9];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setTextPosForTutorAttrPage1{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorAttrPage2{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorAttrPage3{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorAttrPage4{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorAttrPage5{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorAttrPage6{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorAttrPage7{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorAttrPage8{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorAttrPage9{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorDate:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorDatePage1:
			[self setTextPosForTutorDatePage1];
			break;
		case kTutorDatePage2:
			[self setTextPosForTutorDatePage2];
			break;
		case kTutorDatePage3:
			[self setTextPosForTutorDatePage3];
			break;
		case kTutorDatePage4:
			[self setTextPosForTutorDatePage4];
			break;
		case kTutorDatePage5:
			[self setTextPosForTutorDatePage5];
			break;
		case kTutorDatePage6:
			[self setTextPosForTutorDatePage6];
			break;
		case kTutorDatePage7:
			[self setTextPosForTutorDatePage7];
			break;
		case kTutorDatePage8:
			[self setTextPosForTutorDatePage8];
			break;
		case kTutorDatePage9:
			[self setTextPosForTutorDatePage9];
			break;
		case kTutorDatePage10:
			[self setTextPosForTutorDatePage10];
			break;
		case kTutorDatePage11:
			[self setTextPosForTutorDatePage11];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setTextPosForTutorDatePage1{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorDatePage2{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorDatePage3{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorDatePage4{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorDatePage5{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorDatePage6{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorDatePage7{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorDatePage8{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorDatePage9{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorDatePage10{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorDatePage11{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorWalk:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorWalkPage1:
			[self setTextPosForTutorWalkPage1];
			break;
		case kTutorWalkPage2:
			[self setTextPosForTutorWalkPage2];
			break;
		case kTutorWalkPage3:
			[self setTextPosForTutorWalkPage3];
			break;
		case kTutorWalkPage4:
			[self setTextPosForTutorWalkPage4];
			break;
		case kTutorWalkPage5:
			[self setTextPosForTutorWalkPage5];
			break;
		case kTutorWalkPage6:
			[self setTextPosForTutorWalkPage6];
			break;
		case kTutorWalkPage7:
			[self setTextPosForTutorWalkPage7];
			break;
		case kTutorWalkPage8:
			[self setTextPosForTutorWalkPage8];
			break;
		case kTutorWalkPage9:
			[self setTextPosForTutorWalkPage9];
			break;
		case kTutorWalkPage10:
			[self setTextPosForTutorWalkPage10];
			break;
			
		default:
			break;
	}
	return;
}

-(void)setTextPosForTutorWalkPage1{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorWalkPage2{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorWalkPage3{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorWalkPage4{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorWalkPage5{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorWalkPage6{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorWalkPage7{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorWalkPage8{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorWalkPage9{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorWalkPage10{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorEvent:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorEventPage1:
			[self setTextPosForTutorEventPage1];
			break;
		case kTutorEventPage2:
			[self setTextPosForTutorEventPage2];
			break;
		case kTutorEventPage3:
			[self setTextPosForTutorEventPage3];
			break;
		case kTutorEventPage4:
			[self setTextPosForTutorEventPage4];
			break;
		case kTutorEventPage5:
			[self setTextPosForTutorEventPage5];
			break;
		case kTutorEventPage6:
			[self setTextPosForTutorEventPage6];
			break;
		case kTutorEventPage7:
			[self setTextPosForTutorEventPage7];
			break;
		case kTutorEventPage8:
			[self setTextPosForTutorEventPage8];
			break;
		case kTutorEventPage9:
			[self setTextPosForTutorEventPage9];
			break;
		case kTutorEventPage10:
			[self setTextPosForTutorEventPage10];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setTextPosForTutorEventPage1{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorEventPage2{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorEventPage3{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorEventPage4{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorEventPage5{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorEventPage6{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorEventPage7{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorEventPage8{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorEventPage9{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorEventPage10{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorMap:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorMapPage1:
			[self setTextPosForTutorMapPage1];
			break;
		case kTutorMapPage2:
			[self setTextPosForTutorMapPage2];
			break;
		case kTutorMapPage3:
			[self setTextPosForTutorMapPage3];
			break;
		case kTutorMapPage4:
			[self setTextPosForTutorMapPage4];
			break;
		case kTutorMapPage5:
			[self setTextPosForTutorMapPage5];
			break;
		case kTutorMapPage6:
			[self setTextPosForTutorMapPage6];
			break;
		case kTutorMapPage7:
			[self setTextPosForTutorMapPage7];
			break;
		case kTutorMapPage8:
			[self setTextPosForTutorMapPage8];
			break;
		default:
			break;
	}
	
	return;
}

-(void)setTextPosForTutorMapPage1{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorMapPage2{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorMapPage3{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorMapPage4{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorMapPage5{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorMapPage6{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorMapPage7{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorMapPage8{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorArrange:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorArrangePage1:
			[self setTextPosForTutorArrangePage1];
			break;
		case kTutorArrangePage2:
			[self setTextPosForTutorArrangePage2];
			break;
		case kTutorArrangePage3:
			[self setTextPosForTutorArrangePage3];
			break;
		case kTutorArrangePage4:
			[self setTextPosForTutorArrangePage4];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setTextPosForTutorArrangePage1{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorArrangePage2{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorArrangePage3{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorArrangePage4{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorPlace:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorPlacePage1:
			[self setTextPosForTutorPlacePage1];
			break;
		case kTutorPlacePage2:
			[self setTextPosForTutorPlacePage2];
			break;
		case kTutorPlacePage3:
			[self setTextPosForTutorPlacePage3];
			break;
		case kTutorPlacePage4:
			[self setTextPosForTutorPlacePage4];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setTextPosForTutorPlacePage1{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorPlacePage2{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorPlacePage3{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorPlacePage4{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}


-(void)setTextPosForTutorSchedule:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorSchedulePage1:
			[self setTextPosForTutorSchedulePage1];
			break;
		case kTutorSchedulePage2:
			[self setTextPosForTutorSchedulePage2];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setTextPosForTutorSchedulePage1{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorSchedulePage2{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorDetail:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorDetailPage1:
			[self setTextPosForTutorDetailPage1];
			break;
		case kTutorDetailPage2:
			[self setTextPosForTutorDetailPage2];
			break;
		case kTutorDetailPage3:
			[self setTextPosForTutorDetailPage3];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setTextPosForTutorDetailPage1{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorDetailPage2{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorDetailPage3{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorSms:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorSmsPage1:
			[self setTextPosForTutorSmsPage1];
			break;
		case kTutorSmsPage2:
			[self setTextPosForTutorSmsPage2];
			break;
		case kTutorSmsPage3:
			[self setTextPosForTutorSmsPage3];
			break;
		case kTutorSmsPage4:
			[self setTextPosForTutorSmsPage4];
			break;
		case kTutorSmsPage5:
			[self setTextPosForTutorSmsPage5];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setTextPosForTutorSmsPage1{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorSmsPage2{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorSmsPage3{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorSmsPage4{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}

-(void)setTextPosForTutorSmsPage5{
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	lbl.font = font;
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	
	
	
	[lbl setFrame:CGRectMake(kTutorTextPosX1, kTutorTextPosY1, size.width, size.height)];
		
	
}


@end
