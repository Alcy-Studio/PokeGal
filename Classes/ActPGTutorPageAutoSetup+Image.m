//
//  ActPGTutorPageAutoSetup+Image.m
//  frdfrd
//
//  Created by westbugs on 11-05-01.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "ActPGTutorPageAutoSetup+Image.h"

//Additional
#import "PGTutorPageViewController.h"

#import "ConstantsTutorGraphic2D.h"
#import "ConstantsTmpTutor.h"
#import "ConstantsSceneCode.h"
#import "ConstantsFileType.h"

@implementation ActPGTutorPageAutoSetup(Image)

#pragma mark Image
//Add Bubble & Img Only
-(NSString*)getImagePath{
	NSUInteger s = [[NSUserDefaults standardUserDefaults] integerForKey:kTmpTutorScene];
	
	NSUInteger p = [[NSUserDefaults standardUserDefaults] integerForKey:kTmpTutorPage];
	
	NSString* fileName;
	
	NSString* path;
	/*
	 //Test Case
	 fileName = [self getImageForTutorMain:kTutorMainPage2];
	 path = [[NSBundle mainBundle] pathForResource:fileName ofType:kTmpFileTypePng];
	 return path;
	 //Test Case
	 */
	
	//NSLog(@"Scene Code: %i", s);
	
	//Add Text in other method
	switch (s) {
		case kSceneCodePGMain:
			fileName = [self getImageForTutorMain:p];
			break;
		case kSceneCodePGAchi:
			fileName = [self getImageForTutorAchi:p];
			break;
		case kSceneCodePGAttr:
			fileName = [self getImageForTutorAttr:p];
			break;
		case kSceneCodePGDate:
			fileName = [self getImageForTutorDate:p];
			break;
		case kSceneCodePGWalk:
			fileName = [self getImageForTutorWalk:p];
			break;
		case kSceneCodePGEvent:
			fileName = [self getImageForTutorEvent:p];
			break;
		case kSceneCodePGMap:
			fileName = [self getImageForTutorMap:p];
			break;
		case kSceneCodePGArrange:
			fileName = [self getImageForTutorArrange:p];
			break;
		case kSceneCodePGPlace:
			fileName = [self getImageForTutorPlace:p];
			break;
		case kSceneCodePGSchedule:
			fileName = [self getImageForTutorSchedule:p];
			break;
		case kSceneCodePGDetail:
			fileName = [self getImageForTutorDetail:p];
			break;
		case kSceneCodePGSMS:
			fileName = [self getImageForTutorSms:p];
			break;
			
		default:
			fileName = nil;
			break;
	}
	if (!fileName)
		return nil;
	
	NSLog(@"%@", fileName);
	
	path = [[NSBundle mainBundle] pathForResource:fileName ofType:kTmpFileTypePng];
	
	return path;
}

-(NSString*)getImageForTutorMain:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorMainPage1:
			fileName = [self getImageForTutorMainPage1];
			break;
		case kTutorMainPage2:
			fileName = [self getImageForTutorMainPage2];
			break;
		case kTutorMainPage3:
			fileName = [self getImageForTutorMainPage3];
			break;
		case kTutorMainPage4:
			fileName = [self getImageForTutorMainPage4];
			break;
		case kTutorMainPage5:
			fileName = [self getImageForTutorMainPage5];
			break;
		case kTutorMainPage6:
			fileName = [self getImageForTutorMainPage6];
			break;
		case kTutorMainPage7:
			fileName = [self getImageForTutorMainPage7];
			break;
		case kTutorMainPage8:
			fileName = [self getImageForTutorMainPage8];
			break;
		case kTutorMainPage9:
			fileName = [self getImageForTutorMainPage9];
			break;
		case kTutorMainPage10:
			fileName = [self getImageForTutorMainPage10];
			break;
		case kTutorMainPage11:
			fileName = [self getImageForTutorMainPage11];
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

-(NSString*)getImageForTutorMainPage1{
	
	return kUiTutorNoteMainImage1;
	
}

-(NSString*)getImageForTutorMainPage2{
	
	return kUiTutorNoteMainImage2;
	
}

-(NSString*)getImageForTutorMainPage3{
	
	return kUiTutorNoteMainImage3;
	
}

-(NSString*)getImageForTutorMainPage4{
	
	return kUiTutorNoteMainImage4;
	
}

-(NSString*)getImageForTutorMainPage5{
	
	return kUiTutorNoteMainImage5;
	
}

-(NSString*)getImageForTutorMainPage6{
	
	return kUiTutorNoteMainImage6;
	
}

-(NSString*)getImageForTutorMainPage7{
	
	return kUiTutorNoteMainImage7;
	
}

-(NSString*)getImageForTutorMainPage8{
	
	return kUiTutorNoteMainImage8;
	
}

-(NSString*)getImageForTutorMainPage9{
	
	return kUiTutorNoteMainImage9;
	
}

-(NSString*)getImageForTutorMainPage10{
	
	return kUiTutorNoteMainImage10;
	
}

-(NSString*)getImageForTutorMainPage11{
	
	return kUiTutorNoteMainImage11;
	
}

-(NSString*)getImageForTutorAchi:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorAchiPage1:
			fileName = [self getImageForTutorAchiPage1];
			break;
		case kTutorAchiPage2:
			fileName = [self getImageForTutorAchiPage2];
			break;
		case kTutorAchiPage3:
			fileName = [self getImageForTutorAchiPage3];
			break;
		case kTutorAchiPage4:
			fileName = [self getImageForTutorAchiPage4];
			break;
		case kTutorAchiPage5:
			fileName = [self getImageForTutorAchiPage5];
			break;
		case kTutorAchiPage6:
			fileName = [self getImageForTutorAchiPage6];
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

-(NSString*)getImageForTutorAchiPage1{
	
	return kUiTutorNoteAchiImage1;
	
}

-(NSString*)getImageForTutorAchiPage2{
	
	return kUiTutorNoteAchiImage2;
	
}

-(NSString*)getImageForTutorAchiPage3{
	
	return kUiTutorNoteAchiImage3;
	
}

-(NSString*)getImageForTutorAchiPage4{
	
	return kUiTutorNoteAchiImage4;
	
}

-(NSString*)getImageForTutorAchiPage5{
	
	return kUiTutorNoteAchiImage5;
	
}

-(NSString*)getImageForTutorAchiPage6{
	
	return kUiTutorNoteAchiImage6;
	
}


-(NSString*)getImageForTutorAttr:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorAttrPage1:
			fileName = [self getImageForTutorAttrPage1];
			break;
		case kTutorAttrPage2:
			fileName = [self getImageForTutorAttrPage2];
			break;
		case kTutorAttrPage3:
			fileName = [self getImageForTutorAttrPage3];
			break;
		case kTutorAttrPage4:
			fileName = [self getImageForTutorAttrPage4];
			break;
		case kTutorAttrPage5:
			fileName = [self getImageForTutorAttrPage5];
			break;
		case kTutorAttrPage6:
			fileName = [self getImageForTutorAttrPage6];
			break;
		case kTutorAttrPage7:
			fileName = [self getImageForTutorAttrPage7];
			break;
		case kTutorAttrPage8:
			fileName = [self getImageForTutorAttrPage8];
			break;
		case kTutorAttrPage9:
			fileName = [self getImageForTutorAttrPage9];
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

-(NSString*)getImageForTutorAttrPage1{
	
	return kUiTutorNoteAttrImage1;
	
}

-(NSString*)getImageForTutorAttrPage2{
	
	return kUiTutorNoteAttrImage2;
	
}

-(NSString*)getImageForTutorAttrPage3{
	
	return kUiTutorNoteAttrImage3;
	
}

-(NSString*)getImageForTutorAttrPage4{
	
	return kUiTutorNoteAttrImage4;
	
}

-(NSString*)getImageForTutorAttrPage5{
	
	return kUiTutorNoteAttrImage5;
	
}

-(NSString*)getImageForTutorAttrPage6{
	
	return kUiTutorNoteAttrImage6;
	
}

-(NSString*)getImageForTutorAttrPage7{
	
	return kUiTutorNoteAttrImage7;
	
}

-(NSString*)getImageForTutorAttrPage8{
	
	return kUiTutorNoteAttrImage8;
	
}

-(NSString*)getImageForTutorAttrPage9{
	
	return kUiTutorNoteAttrImage9;
	
}

-(NSString*)getImageForTutorDate:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorDatePage1:
			fileName = [self getImageForTutorDatePage1];
			break;
		case kTutorDatePage2:
			fileName = [self getImageForTutorDatePage2];
			break;
		case kTutorDatePage3:
			fileName = [self getImageForTutorDatePage3];
			break;
		case kTutorDatePage4:
			fileName = [self getImageForTutorDatePage4];
			break;
		case kTutorDatePage5:
			fileName = [self getImageForTutorDatePage5];
			break;
		case kTutorDatePage6:
			fileName = [self getImageForTutorDatePage6];
			break;
		case kTutorDatePage7:
			fileName = [self getImageForTutorDatePage7];
			break;
		case kTutorDatePage8:
			fileName = [self getImageForTutorDatePage8];
			break;
		case kTutorDatePage9:
			fileName = [self getImageForTutorDatePage9];
			break;
		case kTutorDatePage10:
			fileName = [self getImageForTutorDatePage10];
			break;
		case kTutorDatePage11:
			fileName = [self getImageForTutorDatePage11];
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

-(NSString*)getImageForTutorDatePage1{
	
	return kUiTutorNoteDateImage1;
	
}

-(NSString*)getImageForTutorDatePage2{
	
	return kUiTutorNoteDateImage2;
	
}

-(NSString*)getImageForTutorDatePage3{
	
	return kUiTutorNoteDateImage3;
	
}

-(NSString*)getImageForTutorDatePage4{
	
	return kUiTutorNoteDateImage4;
	
}

-(NSString*)getImageForTutorDatePage5{
	
	return kUiTutorNoteDateImage5;
	
}

-(NSString*)getImageForTutorDatePage6{
	
	return kUiTutorNoteDateImage6;
	
}

-(NSString*)getImageForTutorDatePage7{
	
	return kUiTutorNoteDateImage7;
	
}

-(NSString*)getImageForTutorDatePage8{
	
	return kUiTutorNoteDateImage8;
	
}

-(NSString*)getImageForTutorDatePage9{
	
	return kUiTutorNoteDateImage9;
	
}

-(NSString*)getImageForTutorDatePage10{
	
	return kUiTutorNoteDateImage10;
	
}

-(NSString*)getImageForTutorDatePage11{
	
	return kUiTutorNoteDateImage11;
	
}

-(NSString*)getImageForTutorWalk:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorWalkPage1:
			fileName = [self getImageForTutorWalkPage1];
			break;
		case kTutorWalkPage2:
			fileName = [self getImageForTutorWalkPage2];
			break;
		case kTutorWalkPage3:
			fileName = [self getImageForTutorWalkPage3];
			break;
		case kTutorWalkPage4:
			fileName = [self getImageForTutorWalkPage4];
			break;
		case kTutorWalkPage5:
			fileName = [self getImageForTutorWalkPage5];
			break;
		case kTutorWalkPage6:
			fileName = [self getImageForTutorWalkPage6];
			break;
		case kTutorWalkPage7:
			fileName = [self getImageForTutorWalkPage7];
			break;
		case kTutorWalkPage8:
			fileName = [self getImageForTutorWalkPage8];
			break;
		case kTutorWalkPage9:
			fileName = [self getImageForTutorWalkPage9];
			break;
		case kTutorWalkPage10:
			fileName = [self getImageForTutorWalkPage10];
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

-(NSString*)getImageForTutorWalkPage1{
	
	return kUiTutorNoteWalkImage1;
	
}

-(NSString*)getImageForTutorWalkPage2{
	
	return kUiTutorNoteWalkImage2;
	
}

-(NSString*)getImageForTutorWalkPage3{
	
	return kUiTutorNoteWalkImage3;
	
}

-(NSString*)getImageForTutorWalkPage4{
	
	return kUiTutorNoteWalkImage4;
	
}

-(NSString*)getImageForTutorWalkPage5{
	
	return kUiTutorNoteWalkImage5;
	
}

-(NSString*)getImageForTutorWalkPage6{
	
	return kUiTutorNoteWalkImage6;
	
}

-(NSString*)getImageForTutorWalkPage7{
	
	return kUiTutorNoteWalkImage7;
	
}

-(NSString*)getImageForTutorWalkPage8{
	
	return kUiTutorNoteWalkImage8;
	
}

-(NSString*)getImageForTutorWalkPage9{
	
	return kUiTutorNoteWalkImage9;
	
}

-(NSString*)getImageForTutorWalkPage10{
	
	return kUiTutorNoteWalkImage10;
	
}

-(NSString*)getImageForTutorEvent:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorEventPage1:
			fileName = [self getImageForTutorEventPage1];
			break;
		case kTutorEventPage2:
			fileName = [self getImageForTutorEventPage2];
			break;
		case kTutorEventPage3:
			fileName = [self getImageForTutorEventPage3];
			break;
		case kTutorEventPage4:
			fileName = [self getImageForTutorEventPage4];
			break;
		case kTutorEventPage5:
			fileName = [self getImageForTutorEventPage5];
			break;
		case kTutorEventPage6:
			fileName = [self getImageForTutorEventPage6];
			break;
		case kTutorEventPage7:
			fileName = [self getImageForTutorEventPage7];
			break;
		case kTutorEventPage8:
			fileName = [self getImageForTutorEventPage8];
			break;
		case kTutorEventPage9:
			fileName = [self getImageForTutorEventPage9];
			break;
		case kTutorEventPage10:
			fileName = [self getImageForTutorEventPage10];
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

-(NSString*)getImageForTutorEventPage1{
	
	return kUiTutorNoteEventImage1;
	
}

-(NSString*)getImageForTutorEventPage2{
	
	return kUiTutorNoteEventImage2;
	
}

-(NSString*)getImageForTutorEventPage3{
	
	return kUiTutorNoteEventImage3;
	
}

-(NSString*)getImageForTutorEventPage4{
	
	return kUiTutorNoteEventImage4;
	
}

-(NSString*)getImageForTutorEventPage5{
	
	return kUiTutorNoteEventImage5;
	
}

-(NSString*)getImageForTutorEventPage6{
	
	return kUiTutorNoteEventImage6;
	
}

-(NSString*)getImageForTutorEventPage7{
	
	return kUiTutorNoteEventImage7;
	
}

-(NSString*)getImageForTutorEventPage8{
	
	return kUiTutorNoteEventImage8;
	
}

-(NSString*)getImageForTutorEventPage9{
	
	return kUiTutorNoteEventImage9;
	
}

-(NSString*)getImageForTutorEventPage10{
	
	return kUiTutorNoteEventImage10;
	
}

-(NSString*)getImageForTutorMap:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorMapPage1:
			fileName = [self getImageForTutorMapPage1];
			break;
		case kTutorMapPage2:
			fileName = [self getImageForTutorMapPage2];
			break;
		case kTutorMapPage3:
			fileName = [self getImageForTutorMapPage3];
			break;
		case kTutorMapPage4:
			fileName = [self getImageForTutorMapPage4];
			break;
		case kTutorMapPage5:
			fileName = [self getImageForTutorMapPage5];
			break;
		case kTutorMapPage6:
			fileName = [self getImageForTutorMapPage6];
			break;
		case kTutorMapPage7:
			fileName = [self getImageForTutorMapPage7];
			break;
		case kTutorMapPage8:
			fileName = [self getImageForTutorMapPage8];
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

-(NSString*)getImageForTutorMapPage1{
	
	return kUiTutorNoteMapImage1;
	
}

-(NSString*)getImageForTutorMapPage2{
	
	return kUiTutorNoteMapImage2;
	
}

-(NSString*)getImageForTutorMapPage3{
	
	return kUiTutorNoteMapImage3;
	
}

-(NSString*)getImageForTutorMapPage4{
	
	return kUiTutorNoteMapImage4;
	
}

-(NSString*)getImageForTutorMapPage5{
	
	return kUiTutorNoteMapImage5;
	
}

-(NSString*)getImageForTutorMapPage6{
	
	return kUiTutorNoteMapImage6;
	
}

-(NSString*)getImageForTutorMapPage7{
	
	return kUiTutorNoteMapImage7;
	
}

-(NSString*)getImageForTutorMapPage8{
	
	return kUiTutorNoteMapImage8;
	
}

-(NSString*)getImageForTutorArrange:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorArrangePage1:
			fileName = [self getImageForTutorArrangePage1];
			break;
		case kTutorArrangePage2:
			fileName = [self getImageForTutorArrangePage2];
			break;
		case kTutorArrangePage3:
			fileName = [self getImageForTutorArrangePage3];
			break;
		case kTutorArrangePage4:
			fileName = [self getImageForTutorArrangePage4];
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

-(NSString*)getImageForTutorArrangePage1{
	
	return kUiTutorNoteArrangeImage1;
	
}

-(NSString*)getImageForTutorArrangePage2{
	
	return kUiTutorNoteArrangeImage2;
	
}

-(NSString*)getImageForTutorArrangePage3{
	
	return kUiTutorNoteArrangeImage3;
	
}

-(NSString*)getImageForTutorArrangePage4{
	
	return kUiTutorNoteArrangeImage4;
	
}

-(NSString*)getImageForTutorPlace:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorPlacePage1:
			fileName = [self getImageForTutorPlacePage1];
			break;
		case kTutorPlacePage2:
			fileName = [self getImageForTutorPlacePage2];
			break;
		case kTutorPlacePage3:
			fileName = [self getImageForTutorPlacePage3];
			break;
		case kTutorPlacePage4:
			fileName = [self getImageForTutorPlacePage4];
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

-(NSString*)getImageForTutorPlacePage1{
	
	return kUiTutorNotePlaceImage1;
	
}

-(NSString*)getImageForTutorPlacePage2{
	
	return kUiTutorNotePlaceImage2;
	
}

-(NSString*)getImageForTutorPlacePage3{
	
	return kUiTutorNotePlaceImage3;
	
}

-(NSString*)getImageForTutorPlacePage4{
	
	return kUiTutorNotePlaceImage4;
	
}

-(NSString*)getImageForTutorSchedule:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorSchedulePage1:
			fileName = [self getImageForTutorSchedulePage1];
			break;
		case kTutorSchedulePage2:
			fileName = [self getImageForTutorSchedulePage2];
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

-(NSString*)getImageForTutorSchedulePage1{
	
	return kUiTutorNoteScheduleImage1;
	
}

-(NSString*)getImageForTutorSchedulePage2{
	
	return kUiTutorNoteScheduleImage2;
	
}

-(NSString*)getImageForTutorDetail:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorDetailPage1:
			fileName = [self getImageForTutorDetailPage1];
			break;
		case kTutorDetailPage2:
			fileName = [self getImageForTutorDetailPage2];
			break;
		case kTutorDetailPage3:
			fileName = [self getImageForTutorDetailPage3];
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

-(NSString*)getImageForTutorDetailPage1{
	
	return kUiTutorNoteDetailImage1;
	
}

-(NSString*)getImageForTutorDetailPage2{
	
	return kUiTutorNoteDetailImage2;
	
}

-(NSString*)getImageForTutorDetailPage3{
	
	return kUiTutorNoteDetailImage3;
	
}

-(NSString*)getImageForTutorSms:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorSmsPage1:
			fileName = [self getImageForTutorSmsPage1];
			break;
		case kTutorSmsPage2:
			fileName = [self getImageForTutorSmsPage2];
			break;
		case kTutorSmsPage3:
			fileName = [self getImageForTutorSmsPage3];
			break;
		case kTutorSmsPage4:
			fileName = [self getImageForTutorSmsPage4];
			break;
		case kTutorSmsPage5:
			fileName = [self getImageForTutorSmsPage5];
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

-(NSString*)getImageForTutorSmsPage1{
	
	return kUiTutorNoteSmsImage1;
	
}

-(NSString*)getImageForTutorSmsPage2{
	
	return kUiTutorNoteSmsImage2;
	
}

-(NSString*)getImageForTutorSmsPage3{
	
	return kUiTutorNoteSmsImage3;
	
}

-(NSString*)getImageForTutorSmsPage4{
	
	return kUiTutorNoteSmsImage4;
	
}

-(NSString*)getImageForTutorSmsPage5{
	
	return kUiTutorNoteSmsImage5;
	
}

//Set Image Position
//Add Bubble & Img Only
-(void)setImagePosition{
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
			[self setImagePosForTutorMain:p];
			break;
		case kSceneCodePGAchi:
			[self setImagePosForTutorAchi:p];
			break;
		case kSceneCodePGAttr:
			[self setImagePosForTutorAttr:p];
			break;
		case kSceneCodePGDate:
			[self setImagePosForTutorDate:p];
			break;
		case kSceneCodePGWalk:
			[self setImagePosForTutorWalk:p];
			break;
		case kSceneCodePGEvent:
			[self setImagePosForTutorEvent:p];
			break;
		case kSceneCodePGMap:
			[self setImagePosForTutorMap:p];
			break;
		case kSceneCodePGArrange:
			[self setImagePosForTutorArrange:p];
			break;
		case kSceneCodePGPlace:
			[self setImagePosForTutorPlace:p];
			break;
		case kSceneCodePGSchedule:
			[self setImagePosForTutorSchedule:p];
			break;
		case kSceneCodePGDetail:
			[self setImagePosForTutorDetail:p];
			break;
		case kSceneCodePGSMS:
			[self setImagePosForTutorSms:p];
			break;
			
		default:
			break;
	}
	return;
	
	
	
}


-(void)setImagePosForTutorMain:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorMainPage1:
			[self setImagePosForTutorMainPage1];
			break;
		case kTutorMainPage2:
			[self setImagePosForTutorMainPage2];
			break;
		case kTutorMainPage3:
			[self setImagePosForTutorMainPage3];
			break;
		case kTutorMainPage4:
			[self setImagePosForTutorMainPage4];
			break;
		case kTutorMainPage5:
			[self setImagePosForTutorMainPage5];
			break;
		case kTutorMainPage6:
			[self setImagePosForTutorMainPage6];
			break;
		case kTutorMainPage7:
			[self setImagePosForTutorMainPage7];
			break;
		case kTutorMainPage8:
			[self setImagePosForTutorMainPage8];
			break;
		case kTutorMainPage9:
			[self setImagePosForTutorMainPage9];
			break;
		case kTutorMainPage10:
			[self setImagePosForTutorMainPage10];
			break;
		case kTutorMainPage11:
			[self setImagePosForTutorMainPage11];
			break;
		default:
			break;
	}
	
	return;
}

-(void)setImagePosForTutorMainPage1{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];
}

-(void)setImagePosForTutorMainPage2{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];
	
}

-(void)setImagePosForTutorMainPage3{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];
	
}

-(void)setImagePosForTutorMainPage4{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];
	
}

-(void)setImagePosForTutorMainPage5{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];
	
}

-(void)setImagePosForTutorMainPage6{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];
	
}

-(void)setImagePosForTutorMainPage7{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];
	
}

-(void)setImagePosForTutorMainPage8{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];
	
}

-(void)setImagePosForTutorMainPage9{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];
	
}

-(void)setImagePosForTutorMainPage10{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];
	
}

-(void)setImagePosForTutorMainPage11{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];
	
}

-(void)setImagePosForTutorAchi:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorAchiPage1:
			[self setImagePosForTutorAchiPage1];
			break;
		case kTutorAchiPage2:
			[self setImagePosForTutorAchiPage2];
			break;
		case kTutorAchiPage3:
			[self setImagePosForTutorAchiPage3];
			break;
		case kTutorAchiPage4:
			[self setImagePosForTutorAchiPage4];
			break;
		case kTutorAchiPage5:
			[self setImagePosForTutorAchiPage5];
			break;
		case kTutorAchiPage6:
			[self setImagePosForTutorAchiPage6];
			break;
		default:
			nil;
			break;
	}
	
	return;
}

-(void)setImagePosForTutorAchiPage1{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorAchiPage2{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorAchiPage3{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorAchiPage4{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorAchiPage5{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorAchiPage6{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}


-(void)setImagePosForTutorAttr:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorAttrPage1:
			[self setImagePosForTutorAttrPage1];
			break;
		case kTutorAttrPage2:
			[self setImagePosForTutorAttrPage2];
			break;
		case kTutorAttrPage3:
			[self setImagePosForTutorAttrPage3];
			break;
		case kTutorAttrPage4:
			[self setImagePosForTutorAttrPage4];
			break;
		case kTutorAttrPage5:
			[self setImagePosForTutorAttrPage5];
			break;
		case kTutorAttrPage6:
			[self setImagePosForTutorAttrPage6];
			break;
		case kTutorAttrPage7:
			[self setImagePosForTutorAttrPage7];
			break;
		case kTutorAttrPage8:
			[self setImagePosForTutorAttrPage8];
			break;
		case kTutorAttrPage9:
			[self setImagePosForTutorAttrPage9];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setImagePosForTutorAttrPage1{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorAttrPage2{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorAttrPage3{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorAttrPage4{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorAttrPage5{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorAttrPage6{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorAttrPage7{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorAttrPage8{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorAttrPage9{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorDate:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorDatePage1:
			[self setImagePosForTutorDatePage1];
			break;
		case kTutorDatePage2:
			[self setImagePosForTutorDatePage2];
			break;
		case kTutorDatePage3:
			[self setImagePosForTutorDatePage3];
			break;
		case kTutorDatePage4:
			[self setImagePosForTutorDatePage4];
			break;
		case kTutorDatePage5:
			[self setImagePosForTutorDatePage5];
			break;
		case kTutorDatePage6:
			[self setImagePosForTutorDatePage6];
			break;
		case kTutorDatePage7:
			[self setImagePosForTutorDatePage7];
			break;
		case kTutorDatePage8:
			[self setImagePosForTutorDatePage8];
			break;
		case kTutorDatePage9:
			[self setImagePosForTutorDatePage9];
			break;
		case kTutorDatePage10:
			[self setImagePosForTutorDatePage10];
			break;
		case kTutorDatePage11:
			[self setImagePosForTutorDatePage11];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setImagePosForTutorDatePage1{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorDatePage2{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorDatePage3{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorDatePage4{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorDatePage5{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorDatePage6{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorDatePage7{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorDatePage8{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorDatePage9{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorDatePage10{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorDatePage11{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorWalk:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorWalkPage1:
			[self setImagePosForTutorWalkPage1];
			break;
		case kTutorWalkPage2:
			[self setImagePosForTutorWalkPage2];
			break;
		case kTutorWalkPage3:
			[self setImagePosForTutorWalkPage3];
			break;
		case kTutorWalkPage4:
			[self setImagePosForTutorWalkPage4];
			break;
		case kTutorWalkPage5:
			[self setImagePosForTutorWalkPage5];
			break;
		case kTutorWalkPage6:
			[self setImagePosForTutorWalkPage6];
			break;
		case kTutorWalkPage7:
			[self setImagePosForTutorWalkPage7];
			break;
		case kTutorWalkPage8:
			[self setImagePosForTutorWalkPage8];
			break;
		case kTutorWalkPage9:
			[self setImagePosForTutorWalkPage9];
			break;
		case kTutorWalkPage10:
			[self setImagePosForTutorWalkPage10];
			break;
			
		default:
			break;
	}
	return;
}

-(void)setImagePosForTutorWalkPage1{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorWalkPage2{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorWalkPage3{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorWalkPage4{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorWalkPage5{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorWalkPage6{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorWalkPage7{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorWalkPage8{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorWalkPage9{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorWalkPage10{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorEvent:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorEventPage1:
			[self setImagePosForTutorEventPage1];
			break;
		case kTutorEventPage2:
			[self setImagePosForTutorEventPage2];
			break;
		case kTutorEventPage3:
			[self setImagePosForTutorEventPage3];
			break;
		case kTutorEventPage4:
			[self setImagePosForTutorEventPage4];
			break;
		case kTutorEventPage5:
			[self setImagePosForTutorEventPage5];
			break;
		case kTutorEventPage6:
			[self setImagePosForTutorEventPage6];
			break;
		case kTutorEventPage7:
			[self setImagePosForTutorEventPage7];
			break;
		case kTutorEventPage8:
			[self setImagePosForTutorEventPage8];
			break;
		case kTutorEventPage9:
			[self setImagePosForTutorEventPage9];
			break;
		case kTutorEventPage10:
			[self setImagePosForTutorEventPage10];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setImagePosForTutorEventPage1{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorEventPage2{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorEventPage3{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorEventPage4{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorEventPage5{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorEventPage6{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorEventPage7{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorEventPage8{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorEventPage9{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorEventPage10{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorMap:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorMapPage1:
			[self setImagePosForTutorMapPage1];
			break;
		case kTutorMapPage2:
			[self setImagePosForTutorMapPage2];
			break;
		case kTutorMapPage3:
			[self setImagePosForTutorMapPage3];
			break;
		case kTutorMapPage4:
			[self setImagePosForTutorMapPage4];
			break;
		case kTutorMapPage5:
			[self setImagePosForTutorMapPage5];
			break;
		case kTutorMapPage6:
			[self setImagePosForTutorMapPage6];
			break;
		case kTutorMapPage7:
			[self setImagePosForTutorMapPage7];
			break;
		case kTutorMapPage8:
			[self setImagePosForTutorMapPage8];
			break;
		default:
			break;
	}
	
	return;
}

-(void)setImagePosForTutorMapPage1{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorMapPage2{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorMapPage3{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorMapPage4{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorMapPage5{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorMapPage6{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorMapPage7{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorMapPage8{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorArrange:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorArrangePage1:
			[self setImagePosForTutorArrangePage1];
			break;
		case kTutorArrangePage2:
			[self setImagePosForTutorArrangePage2];
			break;
		case kTutorArrangePage3:
			[self setImagePosForTutorArrangePage3];
			break;
		case kTutorArrangePage4:
			[self setImagePosForTutorArrangePage4];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setImagePosForTutorArrangePage1{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorArrangePage2{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorArrangePage3{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorArrangePage4{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorPlace:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorPlacePage1:
			[self setImagePosForTutorPlacePage1];
			break;
		case kTutorPlacePage2:
			[self setImagePosForTutorPlacePage2];
			break;
		case kTutorPlacePage3:
			[self setImagePosForTutorPlacePage3];
			break;
		case kTutorPlacePage4:
			[self setImagePosForTutorPlacePage4];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setImagePosForTutorPlacePage1{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorPlacePage2{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorPlacePage3{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorPlacePage4{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}


-(void)setImagePosForTutorSchedule:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorSchedulePage1:
			[self setImagePosForTutorSchedulePage1];
			break;
		case kTutorSchedulePage2:
			[self setImagePosForTutorSchedulePage2];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setImagePosForTutorSchedulePage1{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorSchedulePage2{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorDetail:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorDetailPage1:
			[self setImagePosForTutorDetailPage1];
			break;
		case kTutorDetailPage2:
			[self setImagePosForTutorDetailPage2];
			break;
		case kTutorDetailPage3:
			[self setImagePosForTutorDetailPage3];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setImagePosForTutorDetailPage1{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorDetailPage2{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorDetailPage3{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorSms:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorSmsPage1:
			[self setImagePosForTutorSmsPage1];
			break;
		case kTutorSmsPage2:
			[self setImagePosForTutorSmsPage2];
			break;
		case kTutorSmsPage3:
			[self setImagePosForTutorSmsPage3];
			break;
		case kTutorSmsPage4:
			[self setImagePosForTutorSmsPage4];
			break;
		case kTutorSmsPage5:
			[self setImagePosForTutorSmsPage5];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setImagePosForTutorSmsPage1{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorSmsPage2{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorSmsPage3{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorSmsPage4{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}

-(void)setImagePosForTutorSmsPage5{
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view6] 
	 setFrame:CGRectMake(kTutorImagePosX6, kTutorImagePosY6, kTutorImagePosW6, kTutorImagePosH6)];	
	
}



@end
