//
//  ActPGTutorPageAutoSetup+Bubble.m
//  frdfrd
//
//  Created by westbugs on 11-05-01.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "ActPGTutorPageAutoSetup+Bubble.h"
#import "ActPGTutorPageAutoSetup+Text.h"

//Additional
#import "PGTutorPageViewController.h"

//Constants
#import "ConstantsTutorBubble.h"

#import "ConstantsTutorGraphic2D.h"
#import "ConstantsTmpTutor.h"
#import "ConstantsSceneCode.h"
#import "ConstantsFileType.h"

@implementation ActPGTutorPageAutoSetup(Bubble)


//Add Bubble & Img Only
-(NSString*)getBubble1Path{
	NSUInteger s = [[NSUserDefaults standardUserDefaults] integerForKey:kTmpTutorScene];
	
	NSUInteger p = [[NSUserDefaults standardUserDefaults] integerForKey:kTmpTutorPage];
	
	NSString* fileName;
	
	NSString* path;
	/*
	 //Test Case
	 fileName = [self getBubble1ForTutorMain:kTutorMainPage2];
	 path = [[NSBundle mainBundle] pathForResource:fileName ofType:kTmpFileTypePng];
	 return path;
	 //Test Case
	 */
	
	//NSLog(@"Scene Code: %i", s);
	
	//Add Text in other method
	switch (s) {
		case kSceneCodePGMain:
			fileName = [self getBubble1ForTutorMain:p];
			break;
		case kSceneCodePGAchi:
			fileName = [self getBubble1ForTutorAchi:p];
			break;
		case kSceneCodePGAttr:
			fileName = [self getBubble1ForTutorAttr:p];
			break;
		case kSceneCodePGDate:
			fileName = [self getBubble1ForTutorDate:p];
			break;
		case kSceneCodePGWalk:
			fileName = [self getBubble1ForTutorWalk:p];
			break;
		case kSceneCodePGEvent:
			fileName = [self getBubble1ForTutorEvent:p];
			break;
		case kSceneCodePGMap:
			fileName = [self getBubble1ForTutorMap:p];
			break;
		case kSceneCodePGArrange:
			fileName = [self getBubble1ForTutorArrange:p];
			break;
		case kSceneCodePGPlace:
			fileName = [self getBubble1ForTutorPlace:p];
			break;
		case kSceneCodePGSchedule:
			fileName = [self getBubble1ForTutorSchedule:p];
			break;
		case kSceneCodePGDetail:
			fileName = [self getBubble1ForTutorDetail:p];
			break;
		case kSceneCodePGSMS:
			fileName = [self getBubble1ForTutorSms:p];
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

-(NSString*)getBubble1ForTutorMain:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorMainPage1:
			fileName = [self getBubble1ForTutorMainPage1];
			break;
		case kTutorMainPage2:
			fileName = [self getBubble1ForTutorMainPage2];
			break;
		case kTutorMainPage3:
			fileName = [self getBubble1ForTutorMainPage3];
			break;
		case kTutorMainPage4:
			fileName = [self getBubble1ForTutorMainPage4];
			break;
		case kTutorMainPage5:
			fileName = [self getBubble1ForTutorMainPage5];
			break;
		case kTutorMainPage6:
			fileName = [self getBubble1ForTutorMainPage6];
			break;
		case kTutorMainPage7:
			fileName = [self getBubble1ForTutorMainPage7];
			break;
		case kTutorMainPage8:
			fileName = [self getBubble1ForTutorMainPage8];
			break;
		case kTutorMainPage9:
			fileName = [self getBubble1ForTutorMainPage9];
			break;
		case kTutorMainPage10:
			fileName = [self getBubble1ForTutorMainPage10];
			break;
		case kTutorMainPage11:
			fileName = [self getBubble1ForTutorMainPage11];
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

-(NSString*)getBubble1ForTutorMainPage1{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorMainPage2{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorMainPage3{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorMainPage4{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorMainPage5{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorMainPage6{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorMainPage7{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorMainPage8{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorMainPage9{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorMainPage10{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorMainPage11{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorAchi:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorAchiPage1:
			fileName = [self getBubble1ForTutorAchiPage1];
			break;
		case kTutorAchiPage2:
			fileName = [self getBubble1ForTutorAchiPage2];
			break;
		case kTutorAchiPage3:
			fileName = [self getBubble1ForTutorAchiPage3];
			break;
		case kTutorAchiPage4:
			fileName = [self getBubble1ForTutorAchiPage4];
			break;
		case kTutorAchiPage5:
			fileName = [self getBubble1ForTutorAchiPage5];
			break;
		case kTutorAchiPage6:
			fileName = [self getBubble1ForTutorAchiPage6];
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

-(NSString*)getBubble1ForTutorAchiPage1{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorAchiPage2{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorAchiPage3{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorAchiPage4{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorAchiPage5{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorAchiPage6{
	
	return kUiTutorNoteBubble1;
	
}


-(NSString*)getBubble1ForTutorAttr:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorAttrPage1:
			fileName = [self getBubble1ForTutorAttrPage1];
			break;
		case kTutorAttrPage2:
			fileName = [self getBubble1ForTutorAttrPage2];
			break;
		case kTutorAttrPage3:
			fileName = [self getBubble1ForTutorAttrPage3];
			break;
		case kTutorAttrPage4:
			fileName = [self getBubble1ForTutorAttrPage4];
			break;
		case kTutorAttrPage5:
			fileName = [self getBubble1ForTutorAttrPage5];
			break;
		case kTutorAttrPage6:
			fileName = [self getBubble1ForTutorAttrPage6];
			break;
		case kTutorAttrPage7:
			fileName = [self getBubble1ForTutorAttrPage7];
			break;
		case kTutorAttrPage8:
			fileName = [self getBubble1ForTutorAttrPage8];
			break;
		case kTutorAttrPage9:
			fileName = [self getBubble1ForTutorAttrPage9];
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

-(NSString*)getBubble1ForTutorAttrPage1{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorAttrPage2{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorAttrPage3{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorAttrPage4{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorAttrPage5{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorAttrPage6{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorAttrPage7{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorAttrPage8{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorAttrPage9{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorDate:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorDatePage1:
			fileName = [self getBubble1ForTutorDatePage1];
			break;
		case kTutorDatePage2:
			fileName = [self getBubble1ForTutorDatePage2];
			break;
		case kTutorDatePage3:
			fileName = [self getBubble1ForTutorDatePage3];
			break;
		case kTutorDatePage4:
			fileName = [self getBubble1ForTutorDatePage4];
			break;
		case kTutorDatePage5:
			fileName = [self getBubble1ForTutorDatePage5];
			break;
		case kTutorDatePage6:
			fileName = [self getBubble1ForTutorDatePage6];
			break;
		case kTutorDatePage7:
			fileName = [self getBubble1ForTutorDatePage7];
			break;
		case kTutorDatePage8:
			fileName = [self getBubble1ForTutorDatePage8];
			break;
		case kTutorDatePage9:
			fileName = [self getBubble1ForTutorDatePage9];
			break;
		case kTutorDatePage10:
			fileName = [self getBubble1ForTutorDatePage10];
			break;
		case kTutorDatePage11:
			fileName = [self getBubble1ForTutorDatePage11];
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

-(NSString*)getBubble1ForTutorDatePage1{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorDatePage2{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorDatePage3{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorDatePage4{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorDatePage5{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorDatePage6{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorDatePage7{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorDatePage8{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorDatePage9{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorDatePage10{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorDatePage11{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorWalk:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorWalkPage1:
			fileName = [self getBubble1ForTutorWalkPage1];
			break;
		case kTutorWalkPage2:
			fileName = [self getBubble1ForTutorWalkPage2];
			break;
		case kTutorWalkPage3:
			fileName = [self getBubble1ForTutorWalkPage3];
			break;
		case kTutorWalkPage4:
			fileName = [self getBubble1ForTutorWalkPage4];
			break;
		case kTutorWalkPage5:
			fileName = [self getBubble1ForTutorWalkPage5];
			break;
		case kTutorWalkPage6:
			fileName = [self getBubble1ForTutorWalkPage6];
			break;
		case kTutorWalkPage7:
			fileName = [self getBubble1ForTutorWalkPage7];
			break;
		case kTutorWalkPage8:
			fileName = [self getBubble1ForTutorWalkPage8];
			break;
		case kTutorWalkPage9:
			fileName = [self getBubble1ForTutorWalkPage9];
			break;
		case kTutorWalkPage10:
			fileName = [self getBubble1ForTutorWalkPage10];
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

-(NSString*)getBubble1ForTutorWalkPage1{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorWalkPage2{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorWalkPage3{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorWalkPage4{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorWalkPage5{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorWalkPage6{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorWalkPage7{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorWalkPage8{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorWalkPage9{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorWalkPage10{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorEvent:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorEventPage1:
			fileName = [self getBubble1ForTutorEventPage1];
			break;
		case kTutorEventPage2:
			fileName = [self getBubble1ForTutorEventPage2];
			break;
		case kTutorEventPage3:
			fileName = [self getBubble1ForTutorEventPage3];
			break;
		case kTutorEventPage4:
			fileName = [self getBubble1ForTutorEventPage4];
			break;
		case kTutorEventPage5:
			fileName = [self getBubble1ForTutorEventPage5];
			break;
		case kTutorEventPage6:
			fileName = [self getBubble1ForTutorEventPage6];
			break;
		case kTutorEventPage7:
			fileName = [self getBubble1ForTutorEventPage7];
			break;
		case kTutorEventPage8:
			fileName = [self getBubble1ForTutorEventPage8];
			break;
		case kTutorEventPage9:
			fileName = [self getBubble1ForTutorEventPage9];
			break;
		case kTutorEventPage10:
			fileName = [self getBubble1ForTutorEventPage10];
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

-(NSString*)getBubble1ForTutorEventPage1{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorEventPage2{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorEventPage3{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorEventPage4{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorEventPage5{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorEventPage6{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorEventPage7{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorEventPage8{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorEventPage9{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorEventPage10{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorMap:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorMapPage1:
			fileName = [self getBubble1ForTutorMapPage1];
			break;
		case kTutorMapPage2:
			fileName = [self getBubble1ForTutorMapPage2];
			break;
		case kTutorMapPage3:
			fileName = [self getBubble1ForTutorMapPage3];
			break;
		case kTutorMapPage4:
			fileName = [self getBubble1ForTutorMapPage4];
			break;
		case kTutorMapPage5:
			fileName = [self getBubble1ForTutorMapPage5];
			break;
		case kTutorMapPage6:
			fileName = [self getBubble1ForTutorMapPage6];
			break;
		case kTutorMapPage7:
			fileName = [self getBubble1ForTutorMapPage7];
			break;
		case kTutorMapPage8:
			fileName = [self getBubble1ForTutorMapPage8];
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

-(NSString*)getBubble1ForTutorMapPage1{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorMapPage2{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorMapPage3{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorMapPage4{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorMapPage5{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorMapPage6{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorMapPage7{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorMapPage8{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorArrange:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorArrangePage1:
			fileName = [self getBubble1ForTutorArrangePage1];
			break;
		case kTutorArrangePage2:
			fileName = [self getBubble1ForTutorArrangePage2];
			break;
		case kTutorArrangePage3:
			fileName = [self getBubble1ForTutorArrangePage3];
			break;
		case kTutorArrangePage4:
			fileName = [self getBubble1ForTutorArrangePage4];
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

-(NSString*)getBubble1ForTutorArrangePage1{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorArrangePage2{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorArrangePage3{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorArrangePage4{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorPlace:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorPlacePage1:
			fileName = [self getBubble1ForTutorPlacePage1];
			break;
		case kTutorPlacePage2:
			fileName = [self getBubble1ForTutorPlacePage2];
			break;
		case kTutorPlacePage3:
			fileName = [self getBubble1ForTutorPlacePage3];
			break;
		case kTutorPlacePage4:
			fileName = [self getBubble1ForTutorPlacePage4];
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

-(NSString*)getBubble1ForTutorPlacePage1{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorPlacePage2{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorPlacePage3{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorPlacePage4{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorSchedule:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorSchedulePage1:
			fileName = [self getBubble1ForTutorSchedulePage1];
			break;
		case kTutorSchedulePage2:
			fileName = [self getBubble1ForTutorSchedulePage2];
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

-(NSString*)getBubble1ForTutorSchedulePage1{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorSchedulePage2{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorDetail:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorDetailPage1:
			fileName = [self getBubble1ForTutorDetailPage1];
			break;
		case kTutorDetailPage2:
			fileName = [self getBubble1ForTutorDetailPage2];
			break;
		case kTutorDetailPage3:
			fileName = [self getBubble1ForTutorDetailPage3];
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

-(NSString*)getBubble1ForTutorDetailPage1{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorDetailPage2{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorDetailPage3{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorSms:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorSmsPage1:
			fileName = [self getBubble1ForTutorSmsPage1];
			break;
		case kTutorSmsPage2:
			fileName = [self getBubble1ForTutorSmsPage2];
			break;
		case kTutorSmsPage3:
			fileName = [self getBubble1ForTutorSmsPage3];
			break;
		case kTutorSmsPage4:
			fileName = [self getBubble1ForTutorSmsPage4];
			break;
		case kTutorSmsPage5:
			fileName = [self getBubble1ForTutorSmsPage5];
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

-(NSString*)getBubble1ForTutorSmsPage1{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorSmsPage2{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorSmsPage3{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorSmsPage4{
	
	return kUiTutorNoteBubble1;
	
}

-(NSString*)getBubble1ForTutorSmsPage5{
	
	return kUiTutorNoteBubble1;
	
}

#pragma mark bubble2
//Add Bubble & Img Only
-(NSString*)getBubble2Path{
	NSUInteger s = [[NSUserDefaults standardUserDefaults] integerForKey:kTmpTutorScene];
	
	NSUInteger p = [[NSUserDefaults standardUserDefaults] integerForKey:kTmpTutorPage];
	
	NSString* fileName;
	
	NSString* path;
	/*
	 //Test Case
	 fileName = [self getBubble2ForTutorMain:kTutorMainPage2];
	 path = [[NSBundle mainBundle] pathForResource:fileName ofType:kTmpFileTypePng];
	 return path;
	 //Test Case
	 */
	
	//NSLog(@"Scene Code: %i", s);
	
	//Add Text in other method
	switch (s) {
		case kSceneCodePGMain:
			fileName = [self getBubble2ForTutorMain:p];
			break;
		case kSceneCodePGAchi:
			fileName = [self getBubble2ForTutorAchi:p];
			break;
		case kSceneCodePGAttr:
			fileName = [self getBubble2ForTutorAttr:p];
			break;
		case kSceneCodePGDate:
			fileName = [self getBubble2ForTutorDate:p];
			break;
		case kSceneCodePGWalk:
			fileName = [self getBubble2ForTutorWalk:p];
			break;
		case kSceneCodePGEvent:
			fileName = [self getBubble2ForTutorEvent:p];
			break;
		case kSceneCodePGMap:
			fileName = [self getBubble2ForTutorMap:p];
			break;
		case kSceneCodePGArrange:
			fileName = [self getBubble2ForTutorArrange:p];
			break;
		case kSceneCodePGPlace:
			fileName = [self getBubble2ForTutorPlace:p];
			break;
		case kSceneCodePGSchedule:
			fileName = [self getBubble2ForTutorSchedule:p];
			break;
		case kSceneCodePGDetail:
			fileName = [self getBubble2ForTutorDetail:p];
			break;
		case kSceneCodePGSMS:
			fileName = [self getBubble2ForTutorSms:p];
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

-(NSString*)getBubble2ForTutorMain:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorMainPage1:
			fileName = [self getBubble2ForTutorMainPage1];
			break;
		case kTutorMainPage2:
			fileName = [self getBubble2ForTutorMainPage2];
			break;
		case kTutorMainPage3:
			fileName = [self getBubble2ForTutorMainPage3];
			break;
		case kTutorMainPage4:
			fileName = [self getBubble2ForTutorMainPage4];
			break;
		case kTutorMainPage5:
			fileName = [self getBubble2ForTutorMainPage5];
			break;
		case kTutorMainPage6:
			fileName = [self getBubble2ForTutorMainPage6];
			break;
		case kTutorMainPage7:
			fileName = [self getBubble2ForTutorMainPage7];
			break;
		case kTutorMainPage8:
			fileName = [self getBubble2ForTutorMainPage8];
			break;
		case kTutorMainPage9:
			fileName = [self getBubble2ForTutorMainPage9];
			break;
		case kTutorMainPage10:
			fileName = [self getBubble2ForTutorMainPage10];
			break;
		case kTutorMainPage11:
			fileName = [self getBubble2ForTutorMainPage11];
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

-(NSString*)getBubble2ForTutorMainPage1{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorMainPage2{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorMainPage3{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorMainPage4{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorMainPage5{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorMainPage6{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorMainPage7{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorMainPage8{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorMainPage9{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorMainPage10{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorMainPage11{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorAchi:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorAchiPage1:
			fileName = [self getBubble2ForTutorAchiPage1];
			break;
		case kTutorAchiPage2:
			fileName = [self getBubble2ForTutorAchiPage2];
			break;
		case kTutorAchiPage3:
			fileName = [self getBubble2ForTutorAchiPage3];
			break;
		case kTutorAchiPage4:
			fileName = [self getBubble2ForTutorAchiPage4];
			break;
		case kTutorAchiPage5:
			fileName = [self getBubble2ForTutorAchiPage5];
			break;
		case kTutorAchiPage6:
			fileName = [self getBubble2ForTutorAchiPage6];
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

-(NSString*)getBubble2ForTutorAchiPage1{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorAchiPage2{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorAchiPage3{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorAchiPage4{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorAchiPage5{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorAchiPage6{
	
	return kUiTutorNoteBubble2;
	
}


-(NSString*)getBubble2ForTutorAttr:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorAttrPage1:
			fileName = [self getBubble2ForTutorAttrPage1];
			break;
		case kTutorAttrPage2:
			fileName = [self getBubble2ForTutorAttrPage2];
			break;
		case kTutorAttrPage3:
			fileName = [self getBubble2ForTutorAttrPage3];
			break;
		case kTutorAttrPage4:
			fileName = [self getBubble2ForTutorAttrPage4];
			break;
		case kTutorAttrPage5:
			fileName = [self getBubble2ForTutorAttrPage5];
			break;
		case kTutorAttrPage6:
			fileName = [self getBubble2ForTutorAttrPage6];
			break;
		case kTutorAttrPage7:
			fileName = [self getBubble2ForTutorAttrPage7];
			break;
		case kTutorAttrPage8:
			fileName = [self getBubble2ForTutorAttrPage8];
			break;
		case kTutorAttrPage9:
			fileName = [self getBubble2ForTutorAttrPage9];
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

-(NSString*)getBubble2ForTutorAttrPage1{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorAttrPage2{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorAttrPage3{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorAttrPage4{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorAttrPage5{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorAttrPage6{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorAttrPage7{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorAttrPage8{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorAttrPage9{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorDate:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorDatePage1:
			fileName = [self getBubble2ForTutorDatePage1];
			break;
		case kTutorDatePage2:
			fileName = [self getBubble2ForTutorDatePage2];
			break;
		case kTutorDatePage3:
			fileName = [self getBubble2ForTutorDatePage3];
			break;
		case kTutorDatePage4:
			fileName = [self getBubble2ForTutorDatePage4];
			break;
		case kTutorDatePage5:
			fileName = [self getBubble2ForTutorDatePage5];
			break;
		case kTutorDatePage6:
			fileName = [self getBubble2ForTutorDatePage6];
			break;
		case kTutorDatePage7:
			fileName = [self getBubble2ForTutorDatePage7];
			break;
		case kTutorDatePage8:
			fileName = [self getBubble2ForTutorDatePage8];
			break;
		case kTutorDatePage9:
			fileName = [self getBubble2ForTutorDatePage9];
			break;
		case kTutorDatePage10:
			fileName = [self getBubble2ForTutorDatePage10];
			break;
		case kTutorDatePage11:
			fileName = [self getBubble2ForTutorDatePage11];
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

-(NSString*)getBubble2ForTutorDatePage1{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorDatePage2{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorDatePage3{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorDatePage4{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorDatePage5{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorDatePage6{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorDatePage7{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorDatePage8{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorDatePage9{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorDatePage10{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorDatePage11{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorWalk:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorWalkPage1:
			fileName = [self getBubble2ForTutorWalkPage1];
			break;
		case kTutorWalkPage2:
			fileName = [self getBubble2ForTutorWalkPage2];
			break;
		case kTutorWalkPage3:
			fileName = [self getBubble2ForTutorWalkPage3];
			break;
		case kTutorWalkPage4:
			fileName = [self getBubble2ForTutorWalkPage4];
			break;
		case kTutorWalkPage5:
			fileName = [self getBubble2ForTutorWalkPage5];
			break;
		case kTutorWalkPage6:
			fileName = [self getBubble2ForTutorWalkPage6];
			break;
		case kTutorWalkPage7:
			fileName = [self getBubble2ForTutorWalkPage7];
			break;
		case kTutorWalkPage8:
			fileName = [self getBubble2ForTutorWalkPage8];
			break;
		case kTutorWalkPage9:
			fileName = [self getBubble2ForTutorWalkPage9];
			break;
		case kTutorWalkPage10:
			fileName = [self getBubble2ForTutorWalkPage10];
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

-(NSString*)getBubble2ForTutorWalkPage1{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorWalkPage2{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorWalkPage3{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorWalkPage4{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorWalkPage5{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorWalkPage6{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorWalkPage7{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorWalkPage8{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorWalkPage9{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorWalkPage10{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorEvent:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorEventPage1:
			fileName = [self getBubble2ForTutorEventPage1];
			break;
		case kTutorEventPage2:
			fileName = [self getBubble2ForTutorEventPage2];
			break;
		case kTutorEventPage3:
			fileName = [self getBubble2ForTutorEventPage3];
			break;
		case kTutorEventPage4:
			fileName = [self getBubble2ForTutorEventPage4];
			break;
		case kTutorEventPage5:
			fileName = [self getBubble2ForTutorEventPage5];
			break;
		case kTutorEventPage6:
			fileName = [self getBubble2ForTutorEventPage6];
			break;
		case kTutorEventPage7:
			fileName = [self getBubble2ForTutorEventPage7];
			break;
		case kTutorEventPage8:
			fileName = [self getBubble2ForTutorEventPage8];
			break;
		case kTutorEventPage9:
			fileName = [self getBubble2ForTutorEventPage9];
			break;
		case kTutorEventPage10:
			fileName = [self getBubble2ForTutorEventPage10];
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

-(NSString*)getBubble2ForTutorEventPage1{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorEventPage2{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorEventPage3{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorEventPage4{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorEventPage5{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorEventPage6{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorEventPage7{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorEventPage8{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorEventPage9{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorEventPage10{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorMap:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorMapPage1:
			fileName = [self getBubble2ForTutorMapPage1];
			break;
		case kTutorMapPage2:
			fileName = [self getBubble2ForTutorMapPage2];
			break;
		case kTutorMapPage3:
			fileName = [self getBubble2ForTutorMapPage3];
			break;
		case kTutorMapPage4:
			fileName = [self getBubble2ForTutorMapPage4];
			break;
		case kTutorMapPage5:
			fileName = [self getBubble2ForTutorMapPage5];
			break;
		case kTutorMapPage6:
			fileName = [self getBubble2ForTutorMapPage6];
			break;
		case kTutorMapPage7:
			fileName = [self getBubble2ForTutorMapPage7];
			break;
		case kTutorMapPage8:
			fileName = [self getBubble2ForTutorMapPage8];
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

-(NSString*)getBubble2ForTutorMapPage1{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorMapPage2{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorMapPage3{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorMapPage4{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorMapPage5{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorMapPage6{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorMapPage7{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorMapPage8{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorArrange:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorArrangePage1:
			fileName = [self getBubble2ForTutorArrangePage1];
			break;
		case kTutorArrangePage2:
			fileName = [self getBubble2ForTutorArrangePage2];
			break;
		case kTutorArrangePage3:
			fileName = [self getBubble2ForTutorArrangePage3];
			break;
		case kTutorArrangePage4:
			fileName = [self getBubble2ForTutorArrangePage4];
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

-(NSString*)getBubble2ForTutorArrangePage1{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorArrangePage2{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorArrangePage3{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorArrangePage4{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorPlace:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorPlacePage1:
			fileName = [self getBubble2ForTutorPlacePage1];
			break;
		case kTutorPlacePage2:
			fileName = [self getBubble2ForTutorPlacePage2];
			break;
		case kTutorPlacePage3:
			fileName = [self getBubble2ForTutorPlacePage3];
			break;
		case kTutorPlacePage4:
			fileName = [self getBubble2ForTutorPlacePage4];
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

-(NSString*)getBubble2ForTutorPlacePage1{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorPlacePage2{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorPlacePage3{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorPlacePage4{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorSchedule:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorSchedulePage1:
			fileName = [self getBubble2ForTutorSchedulePage1];
			break;
		case kTutorSchedulePage2:
			fileName = [self getBubble2ForTutorSchedulePage2];
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

-(NSString*)getBubble2ForTutorSchedulePage1{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorSchedulePage2{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorDetail:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorDetailPage1:
			fileName = [self getBubble2ForTutorDetailPage1];
			break;
		case kTutorDetailPage2:
			fileName = [self getBubble2ForTutorDetailPage2];
			break;
		case kTutorDetailPage3:
			fileName = [self getBubble2ForTutorDetailPage3];
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

-(NSString*)getBubble2ForTutorDetailPage1{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorDetailPage2{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorDetailPage3{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorSms:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorSmsPage1:
			fileName = [self getBubble2ForTutorSmsPage1];
			break;
		case kTutorSmsPage2:
			fileName = [self getBubble2ForTutorSmsPage2];
			break;
		case kTutorSmsPage3:
			fileName = [self getBubble2ForTutorSmsPage3];
			break;
		case kTutorSmsPage4:
			fileName = [self getBubble2ForTutorSmsPage4];
			break;
		case kTutorSmsPage5:
			fileName = [self getBubble2ForTutorSmsPage5];
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

-(NSString*)getBubble2ForTutorSmsPage1{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorSmsPage2{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorSmsPage3{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorSmsPage4{
	
	return kUiTutorNoteBubble2;
	
}

-(NSString*)getBubble2ForTutorSmsPage5{
	
	return kUiTutorNoteBubble2;
	
}

//Add Bubble & Img Only
-(void)setBubble1Position{
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
			[self setBubble1PosForTutorMain:p];
			break;
		case kSceneCodePGAchi:
			[self setBubble1PosForTutorAchi:p];
			break;
		case kSceneCodePGAttr:
			[self setBubble1PosForTutorAttr:p];
			break;
		case kSceneCodePGDate:
			[self setBubble1PosForTutorDate:p];
			break;
		case kSceneCodePGWalk:
			[self setBubble1PosForTutorWalk:p];
			break;
		case kSceneCodePGEvent:
			[self setBubble1PosForTutorEvent:p];
			break;
		case kSceneCodePGMap:
			[self setBubble1PosForTutorMap:p];
			break;
		case kSceneCodePGArrange:
			[self setBubble1PosForTutorArrange:p];
			break;
		case kSceneCodePGPlace:
			[self setBubble1PosForTutorPlace:p];
			break;
		case kSceneCodePGSchedule:
			[self setBubble1PosForTutorSchedule:p];
			break;
		case kSceneCodePGDetail:
			[self setBubble1PosForTutorDetail:p];
			break;
		case kSceneCodePGSMS:
			[self setBubble1PosForTutorSms:p];
			break;
			
		default:
			break;
	}
	return;
	
	
	
}


-(void)setBubble1PosForTutorMain:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorMainPage1:
			[self setBubble1PosForTutorMainPage1];
			break;
		case kTutorMainPage2:
			[self setBubble1PosForTutorMainPage2];
			break;
		case kTutorMainPage3:
			[self setBubble1PosForTutorMainPage3];
			break;
		case kTutorMainPage4:
			[self setBubble1PosForTutorMainPage4];
			break;
		case kTutorMainPage5:
			[self setBubble1PosForTutorMainPage5];
			break;
		case kTutorMainPage6:
			[self setBubble1PosForTutorMainPage6];
			break;
		case kTutorMainPage7:
			[self setBubble1PosForTutorMainPage7];
			break;
		case kTutorMainPage8:
			[self setBubble1PosForTutorMainPage8];
			break;
		case kTutorMainPage9:
			[self setBubble1PosForTutorMainPage9];
			break;
		case kTutorMainPage10:
			[self setBubble1PosForTutorMainPage10];
			break;
		case kTutorMainPage11:
			[self setBubble1PosForTutorMainPage11];
			break;
		default:
			break;
	}
	
	return;
}

-(void)setBubble1PosForTutorMainPage1{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	//NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];
	
}

-(void)setBubble1PosForTutorMainPage2{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	//NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];
	
	
}

-(void)setBubble1PosForTutorMainPage3{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];
	
	
	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	//NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
}

-(void)setBubble1PosForTutorMainPage4{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];
	
}

-(void)setBubble1PosForTutorMainPage5{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];
	
}

-(void)setBubble1PosForTutorMainPage6{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];
	
}

-(void)setBubble1PosForTutorMainPage7{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];
	
}

-(void)setBubble1PosForTutorMainPage8{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];
	
}

-(void)setBubble1PosForTutorMainPage9{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];
	
}

-(void)setBubble1PosForTutorMainPage10{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];
	
}

-(void)setBubble1PosForTutorMainPage11{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];
	
}

-(void)setBubble1PosForTutorAchi:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorAchiPage1:
			[self setBubble1PosForTutorAchiPage1];
			break;
		case kTutorAchiPage2:
			[self setBubble1PosForTutorAchiPage2];
			break;
		case kTutorAchiPage3:
			[self setBubble1PosForTutorAchiPage3];
			break;
		case kTutorAchiPage4:
			[self setBubble1PosForTutorAchiPage4];
			break;
		case kTutorAchiPage5:
			[self setBubble1PosForTutorAchiPage5];
			break;
		case kTutorAchiPage6:
			[self setBubble1PosForTutorAchiPage6];
			break;
		default:
			nil;
			break;
	}
	
	return;
}

-(void)setBubble1PosForTutorAchiPage1{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorAchiPage2{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorAchiPage3{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorAchiPage4{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorAchiPage5{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorAchiPage6{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}


-(void)setBubble1PosForTutorAttr:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorAttrPage1:
			[self setBubble1PosForTutorAttrPage1];
			break;
		case kTutorAttrPage2:
			[self setBubble1PosForTutorAttrPage2];
			break;
		case kTutorAttrPage3:
			[self setBubble1PosForTutorAttrPage3];
			break;
		case kTutorAttrPage4:
			[self setBubble1PosForTutorAttrPage4];
			break;
		case kTutorAttrPage5:
			[self setBubble1PosForTutorAttrPage5];
			break;
		case kTutorAttrPage6:
			[self setBubble1PosForTutorAttrPage6];
			break;
		case kTutorAttrPage7:
			[self setBubble1PosForTutorAttrPage7];
			break;
		case kTutorAttrPage8:
			[self setBubble1PosForTutorAttrPage8];
			break;
		case kTutorAttrPage9:
			[self setBubble1PosForTutorAttrPage9];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setBubble1PosForTutorAttrPage1{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorAttrPage2{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorAttrPage3{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorAttrPage4{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorAttrPage5{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorAttrPage6{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorAttrPage7{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorAttrPage8{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorAttrPage9{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorDate:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorDatePage1:
			[self setBubble1PosForTutorDatePage1];
			break;
		case kTutorDatePage2:
			[self setBubble1PosForTutorDatePage2];
			break;
		case kTutorDatePage3:
			[self setBubble1PosForTutorDatePage3];
			break;
		case kTutorDatePage4:
			[self setBubble1PosForTutorDatePage4];
			break;
		case kTutorDatePage5:
			[self setBubble1PosForTutorDatePage5];
			break;
		case kTutorDatePage6:
			[self setBubble1PosForTutorDatePage6];
			break;
		case kTutorDatePage7:
			[self setBubble1PosForTutorDatePage7];
			break;
		case kTutorDatePage8:
			[self setBubble1PosForTutorDatePage8];
			break;
		case kTutorDatePage9:
			[self setBubble1PosForTutorDatePage9];
			break;
		case kTutorDatePage10:
			[self setBubble1PosForTutorDatePage10];
			break;
		case kTutorDatePage11:
			[self setBubble1PosForTutorDatePage11];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setBubble1PosForTutorDatePage1{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorDatePage2{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorDatePage3{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorDatePage4{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorDatePage5{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorDatePage6{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorDatePage7{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorDatePage8{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorDatePage9{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorDatePage10{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorDatePage11{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorWalk:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorWalkPage1:
			[self setBubble1PosForTutorWalkPage1];
			break;
		case kTutorWalkPage2:
			[self setBubble1PosForTutorWalkPage2];
			break;
		case kTutorWalkPage3:
			[self setBubble1PosForTutorWalkPage3];
			break;
		case kTutorWalkPage4:
			[self setBubble1PosForTutorWalkPage4];
			break;
		case kTutorWalkPage5:
			[self setBubble1PosForTutorWalkPage5];
			break;
		case kTutorWalkPage6:
			[self setBubble1PosForTutorWalkPage6];
			break;
		case kTutorWalkPage7:
			[self setBubble1PosForTutorWalkPage7];
			break;
		case kTutorWalkPage8:
			[self setBubble1PosForTutorWalkPage8];
			break;
		case kTutorWalkPage9:
			[self setBubble1PosForTutorWalkPage9];
			break;
		case kTutorWalkPage10:
			[self setBubble1PosForTutorWalkPage10];
			break;
			
		default:
			break;
	}
	return;
}

-(void)setBubble1PosForTutorWalkPage1{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorWalkPage2{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorWalkPage3{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorWalkPage4{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorWalkPage5{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorWalkPage6{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorWalkPage7{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorWalkPage8{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorWalkPage9{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorWalkPage10{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorEvent:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorEventPage1:
			[self setBubble1PosForTutorEventPage1];
			break;
		case kTutorEventPage2:
			[self setBubble1PosForTutorEventPage2];
			break;
		case kTutorEventPage3:
			[self setBubble1PosForTutorEventPage3];
			break;
		case kTutorEventPage4:
			[self setBubble1PosForTutorEventPage4];
			break;
		case kTutorEventPage5:
			[self setBubble1PosForTutorEventPage5];
			break;
		case kTutorEventPage6:
			[self setBubble1PosForTutorEventPage6];
			break;
		case kTutorEventPage7:
			[self setBubble1PosForTutorEventPage7];
			break;
		case kTutorEventPage8:
			[self setBubble1PosForTutorEventPage8];
			break;
		case kTutorEventPage9:
			[self setBubble1PosForTutorEventPage9];
			break;
		case kTutorEventPage10:
			[self setBubble1PosForTutorEventPage10];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setBubble1PosForTutorEventPage1{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorEventPage2{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorEventPage3{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorEventPage4{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorEventPage5{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorEventPage6{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorEventPage7{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorEventPage8{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorEventPage9{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorEventPage10{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorMap:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorMapPage1:
			[self setBubble1PosForTutorMapPage1];
			break;
		case kTutorMapPage2:
			[self setBubble1PosForTutorMapPage2];
			break;
		case kTutorMapPage3:
			[self setBubble1PosForTutorMapPage3];
			break;
		case kTutorMapPage4:
			[self setBubble1PosForTutorMapPage4];
			break;
		case kTutorMapPage5:
			[self setBubble1PosForTutorMapPage5];
			break;
		case kTutorMapPage6:
			[self setBubble1PosForTutorMapPage6];
			break;
		case kTutorMapPage7:
			[self setBubble1PosForTutorMapPage7];
			break;
		case kTutorMapPage8:
			[self setBubble1PosForTutorMapPage8];
			break;
		default:
			break;
	}
	
	return;
}

-(void)setBubble1PosForTutorMapPage1{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorMapPage2{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorMapPage3{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorMapPage4{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorMapPage5{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorMapPage6{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorMapPage7{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorMapPage8{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorArrange:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorArrangePage1:
			[self setBubble1PosForTutorArrangePage1];
			break;
		case kTutorArrangePage2:
			[self setBubble1PosForTutorArrangePage2];
			break;
		case kTutorArrangePage3:
			[self setBubble1PosForTutorArrangePage3];
			break;
		case kTutorArrangePage4:
			[self setBubble1PosForTutorArrangePage4];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setBubble1PosForTutorArrangePage1{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorArrangePage2{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorArrangePage3{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorArrangePage4{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorPlace:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorPlacePage1:
			[self setBubble1PosForTutorPlacePage1];
			break;
		case kTutorPlacePage2:
			[self setBubble1PosForTutorPlacePage2];
			break;
		case kTutorPlacePage3:
			[self setBubble1PosForTutorPlacePage3];
			break;
		case kTutorPlacePage4:
			[self setBubble1PosForTutorPlacePage4];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setBubble1PosForTutorPlacePage1{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorPlacePage2{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorPlacePage3{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorPlacePage4{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}


-(void)setBubble1PosForTutorSchedule:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorSchedulePage1:
			[self setBubble1PosForTutorSchedulePage1];
			break;
		case kTutorSchedulePage2:
			[self setBubble1PosForTutorSchedulePage2];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setBubble1PosForTutorSchedulePage1{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorSchedulePage2{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorDetail:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorDetailPage1:
			[self setBubble1PosForTutorDetailPage1];
			break;
		case kTutorDetailPage2:
			[self setBubble1PosForTutorDetailPage2];
			break;
		case kTutorDetailPage3:
			[self setBubble1PosForTutorDetailPage3];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setBubble1PosForTutorDetailPage1{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorDetailPage2{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorDetailPage3{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorSms:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorSmsPage1:
			[self setBubble1PosForTutorSmsPage1];
			break;
		case kTutorSmsPage2:
			[self setBubble1PosForTutorSmsPage2];
			break;
		case kTutorSmsPage3:
			[self setBubble1PosForTutorSmsPage3];
			break;
		case kTutorSmsPage4:
			[self setBubble1PosForTutorSmsPage4];
			break;
		case kTutorSmsPage5:
			[self setBubble1PosForTutorSmsPage5];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setBubble1PosForTutorSmsPage1{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorSmsPage2{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorSmsPage3{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorSmsPage4{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

-(void)setBubble1PosForTutorSmsPage5{
	
	UIFont *font = [UIFont systemFontOfSize:kBubbleFontSize];
	
	UILabel* lbl = (UILabel*)[(PGTutorPageViewController*)self.resource view5];

	//NSString* text = [NSString stringWithString:NSLocalizedString([self getTextPath], @"Localized")];

	CGSize size = [lbl.text sizeWithFont:font 
					   constrainedToSize:CGSizeMake([[NSNumber numberWithInt:kBubbleFontTextSizeWidth] floatValue], 
													[[NSNumber numberWithInt:kBubbleFontTextSizeHeight] floatValue]) lineBreakMode:UILineBreakModeWordWrap];
	
	NSLog(@"%f", size.height);
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setFrame:CGRectMake(kTutorBubblePosX1, kTutorBubblePosY1, size.width+60, size.height+40.0f)];	
	
}

//set Bubble2 Position
-(void)setBubble2Position{
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
			[self setBubble2PosForTutorMain:p];
			break;
		case kSceneCodePGAchi:
			[self setBubble2PosForTutorAchi:p];
			break;
		case kSceneCodePGAttr:
			[self setBubble2PosForTutorAttr:p];
			break;
		case kSceneCodePGDate:
			[self setBubble2PosForTutorDate:p];
			break;
		case kSceneCodePGWalk:
			[self setBubble2PosForTutorWalk:p];
			break;
		case kSceneCodePGEvent:
			[self setBubble2PosForTutorEvent:p];
			break;
		case kSceneCodePGMap:
			[self setBubble2PosForTutorMap:p];
			break;
		case kSceneCodePGArrange:
			[self setBubble2PosForTutorArrange:p];
			break;
		case kSceneCodePGPlace:
			[self setBubble2PosForTutorPlace:p];
			break;
		case kSceneCodePGSchedule:
			[self setBubble2PosForTutorSchedule:p];
			break;
		case kSceneCodePGDetail:
			[self setBubble2PosForTutorDetail:p];
			break;
		case kSceneCodePGSMS:
			[self setBubble2PosForTutorSms:p];
			break;
			
		default:
			break;
	}
	return;
	
	
	
}


-(void)setBubble2PosForTutorMain:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorMainPage1:
			[self setBubble2PosForTutorMainPage1];
			break;
		case kTutorMainPage2:
			[self setBubble2PosForTutorMainPage2];
			break;
		case kTutorMainPage3:
			[self setBubble2PosForTutorMainPage3];
			break;
		case kTutorMainPage4:
			[self setBubble2PosForTutorMainPage4];
			break;
		case kTutorMainPage5:
			[self setBubble2PosForTutorMainPage5];
			break;
		case kTutorMainPage6:
			[self setBubble2PosForTutorMainPage6];
			break;
		case kTutorMainPage7:
			[self setBubble2PosForTutorMainPage7];
			break;
		case kTutorMainPage8:
			[self setBubble2PosForTutorMainPage8];
			break;
		case kTutorMainPage9:
			[self setBubble2PosForTutorMainPage9];
			break;
		case kTutorMainPage10:
			[self setBubble2PosForTutorMainPage10];
			break;
		case kTutorMainPage11:
			[self setBubble2PosForTutorMainPage11];
			break;
		default:
			break;
	}
	
	return;
}

-(void)setBubble2PosForTutorMainPage1{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
	//UIImageView* iv = (UIImageView*)[(PGTutorPageViewController*)self.resource view6]; 	
//	CGSize size = iv.frame.size;
//	
//	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
//	 setFrame:CGRectMake(320-size.width-60, kTutorBubblePosY6-kBubbleTopCapHeight, size.width+60, size.height+40.0f)];
//	
}

-(void)setBubble2PosForTutorMainPage2{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];
	
}

-(void)setBubble2PosForTutorMainPage3{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];
	
}

-(void)setBubble2PosForTutorMainPage4{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];
	
}

-(void)setBubble2PosForTutorMainPage5{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];
	
}

-(void)setBubble2PosForTutorMainPage6{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];
	
}

-(void)setBubble2PosForTutorMainPage7{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];
	
}

-(void)setBubble2PosForTutorMainPage8{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];
	
}

-(void)setBubble2PosForTutorMainPage9{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];
	
}

-(void)setBubble2PosForTutorMainPage10{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];
	
}

-(void)setBubble2PosForTutorMainPage11{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];
	
}

-(void)setBubble2PosForTutorAchi:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorAchiPage1:
			[self setBubble2PosForTutorAchiPage1];
			break;
		case kTutorAchiPage2:
			[self setBubble2PosForTutorAchiPage2];
			break;
		case kTutorAchiPage3:
			[self setBubble2PosForTutorAchiPage3];
			break;
		case kTutorAchiPage4:
			[self setBubble2PosForTutorAchiPage4];
			break;
		case kTutorAchiPage5:
			[self setBubble2PosForTutorAchiPage5];
			break;
		case kTutorAchiPage6:
			[self setBubble2PosForTutorAchiPage6];
			break;
		default:
			nil;
			break;
	}
	
	return;
}

-(void)setBubble2PosForTutorAchiPage1{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorAchiPage2{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorAchiPage3{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorAchiPage4{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorAchiPage5{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorAchiPage6{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}


-(void)setBubble2PosForTutorAttr:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorAttrPage1:
			[self setBubble2PosForTutorAttrPage1];
			break;
		case kTutorAttrPage2:
			[self setBubble2PosForTutorAttrPage2];
			break;
		case kTutorAttrPage3:
			[self setBubble2PosForTutorAttrPage3];
			break;
		case kTutorAttrPage4:
			[self setBubble2PosForTutorAttrPage4];
			break;
		case kTutorAttrPage5:
			[self setBubble2PosForTutorAttrPage5];
			break;
		case kTutorAttrPage6:
			[self setBubble2PosForTutorAttrPage6];
			break;
		case kTutorAttrPage7:
			[self setBubble2PosForTutorAttrPage7];
			break;
		case kTutorAttrPage8:
			[self setBubble2PosForTutorAttrPage8];
			break;
		case kTutorAttrPage9:
			[self setBubble2PosForTutorAttrPage9];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setBubble2PosForTutorAttrPage1{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorAttrPage2{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorAttrPage3{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorAttrPage4{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorAttrPage5{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorAttrPage6{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorAttrPage7{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorAttrPage8{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorAttrPage9{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorDate:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorDatePage1:
			[self setBubble2PosForTutorDatePage1];
			break;
		case kTutorDatePage2:
			[self setBubble2PosForTutorDatePage2];
			break;
		case kTutorDatePage3:
			[self setBubble2PosForTutorDatePage3];
			break;
		case kTutorDatePage4:
			[self setBubble2PosForTutorDatePage4];
			break;
		case kTutorDatePage5:
			[self setBubble2PosForTutorDatePage5];
			break;
		case kTutorDatePage6:
			[self setBubble2PosForTutorDatePage6];
			break;
		case kTutorDatePage7:
			[self setBubble2PosForTutorDatePage7];
			break;
		case kTutorDatePage8:
			[self setBubble2PosForTutorDatePage8];
			break;
		case kTutorDatePage9:
			[self setBubble2PosForTutorDatePage9];
			break;
		case kTutorDatePage10:
			[self setBubble2PosForTutorDatePage10];
			break;
		case kTutorDatePage11:
			[self setBubble2PosForTutorDatePage11];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setBubble2PosForTutorDatePage1{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorDatePage2{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorDatePage3{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorDatePage4{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorDatePage5{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorDatePage6{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorDatePage7{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorDatePage8{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorDatePage9{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorDatePage10{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorDatePage11{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorWalk:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorWalkPage1:
			[self setBubble2PosForTutorWalkPage1];
			break;
		case kTutorWalkPage2:
			[self setBubble2PosForTutorWalkPage2];
			break;
		case kTutorWalkPage3:
			[self setBubble2PosForTutorWalkPage3];
			break;
		case kTutorWalkPage4:
			[self setBubble2PosForTutorWalkPage4];
			break;
		case kTutorWalkPage5:
			[self setBubble2PosForTutorWalkPage5];
			break;
		case kTutorWalkPage6:
			[self setBubble2PosForTutorWalkPage6];
			break;
		case kTutorWalkPage7:
			[self setBubble2PosForTutorWalkPage7];
			break;
		case kTutorWalkPage8:
			[self setBubble2PosForTutorWalkPage8];
			break;
		case kTutorWalkPage9:
			[self setBubble2PosForTutorWalkPage9];
			break;
		case kTutorWalkPage10:
			[self setBubble2PosForTutorWalkPage10];
			break;
			
		default:
			break;
	}
	return;
}

-(void)setBubble2PosForTutorWalkPage1{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorWalkPage2{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorWalkPage3{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorWalkPage4{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorWalkPage5{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorWalkPage6{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorWalkPage7{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorWalkPage8{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorWalkPage9{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorWalkPage10{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorEvent:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorEventPage1:
			[self setBubble2PosForTutorEventPage1];
			break;
		case kTutorEventPage2:
			[self setBubble2PosForTutorEventPage2];
			break;
		case kTutorEventPage3:
			[self setBubble2PosForTutorEventPage3];
			break;
		case kTutorEventPage4:
			[self setBubble2PosForTutorEventPage4];
			break;
		case kTutorEventPage5:
			[self setBubble2PosForTutorEventPage5];
			break;
		case kTutorEventPage6:
			[self setBubble2PosForTutorEventPage6];
			break;
		case kTutorEventPage7:
			[self setBubble2PosForTutorEventPage7];
			break;
		case kTutorEventPage8:
			[self setBubble2PosForTutorEventPage8];
			break;
		case kTutorEventPage9:
			[self setBubble2PosForTutorEventPage9];
			break;
		case kTutorEventPage10:
			[self setBubble2PosForTutorEventPage10];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setBubble2PosForTutorEventPage1{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorEventPage2{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorEventPage3{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorEventPage4{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorEventPage5{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorEventPage6{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorEventPage7{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorEventPage8{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorEventPage9{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorEventPage10{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorMap:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorMapPage1:
			[self setBubble2PosForTutorMapPage1];
			break;
		case kTutorMapPage2:
			[self setBubble2PosForTutorMapPage2];
			break;
		case kTutorMapPage3:
			[self setBubble2PosForTutorMapPage3];
			break;
		case kTutorMapPage4:
			[self setBubble2PosForTutorMapPage4];
			break;
		case kTutorMapPage5:
			[self setBubble2PosForTutorMapPage5];
			break;
		case kTutorMapPage6:
			[self setBubble2PosForTutorMapPage6];
			break;
		case kTutorMapPage7:
			[self setBubble2PosForTutorMapPage7];
			break;
		case kTutorMapPage8:
			[self setBubble2PosForTutorMapPage8];
			break;
		default:
			break;
	}
	
	return;
}

-(void)setBubble2PosForTutorMapPage1{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorMapPage2{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorMapPage3{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorMapPage4{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorMapPage5{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorMapPage6{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorMapPage7{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorMapPage8{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorArrange:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorArrangePage1:
			[self setBubble2PosForTutorArrangePage1];
			break;
		case kTutorArrangePage2:
			[self setBubble2PosForTutorArrangePage2];
			break;
		case kTutorArrangePage3:
			[self setBubble2PosForTutorArrangePage3];
			break;
		case kTutorArrangePage4:
			[self setBubble2PosForTutorArrangePage4];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setBubble2PosForTutorArrangePage1{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorArrangePage2{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorArrangePage3{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorArrangePage4{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorPlace:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorPlacePage1:
			[self setBubble2PosForTutorPlacePage1];
			break;
		case kTutorPlacePage2:
			[self setBubble2PosForTutorPlacePage2];
			break;
		case kTutorPlacePage3:
			[self setBubble2PosForTutorPlacePage3];
			break;
		case kTutorPlacePage4:
			[self setBubble2PosForTutorPlacePage4];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setBubble2PosForTutorPlacePage1{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorPlacePage2{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorPlacePage3{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorPlacePage4{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}


-(void)setBubble2PosForTutorSchedule:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorSchedulePage1:
			[self setBubble2PosForTutorSchedulePage1];
			break;
		case kTutorSchedulePage2:
			[self setBubble2PosForTutorSchedulePage2];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setBubble2PosForTutorSchedulePage1{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorSchedulePage2{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorDetail:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorDetailPage1:
			[self setBubble2PosForTutorDetailPage1];
			break;
		case kTutorDetailPage2:
			[self setBubble2PosForTutorDetailPage2];
			break;
		case kTutorDetailPage3:
			[self setBubble2PosForTutorDetailPage3];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setBubble2PosForTutorDetailPage1{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorDetailPage2{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorDetailPage3{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorSms:(NSUInteger)page{
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorSmsPage1:
			[self setBubble2PosForTutorSmsPage1];
			break;
		case kTutorSmsPage2:
			[self setBubble2PosForTutorSmsPage2];
			break;
		case kTutorSmsPage3:
			[self setBubble2PosForTutorSmsPage3];
			break;
		case kTutorSmsPage4:
			[self setBubble2PosForTutorSmsPage4];
			break;
		case kTutorSmsPage5:
			[self setBubble2PosForTutorSmsPage5];
			break;
			
		default:
			break;
	}
	
	return;
}

-(void)setBubble2PosForTutorSmsPage1{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorSmsPage2{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorSmsPage3{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorSmsPage4{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

-(void)setBubble2PosForTutorSmsPage5{
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setFrame:CGRectMake(kTutorBubblePosX2, kTutorBubblePosY2, kTutorBubblePosW2, kTutorBubblePosH2)];	
	
}

@end
