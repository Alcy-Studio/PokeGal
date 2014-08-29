//
//  ActPGTutorPageAutoSetup+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTutorPageAutoSetup+Selector.h"

//Additional
#import "PGTutorPageViewController.h"

#import "ActPGTutorPageAutoSetup+Bubble.h"
#import "ActPGTutorPageAutoSetup+Text.h"
#import "ActPGTutorPageAutoSetup+Image.h"

//Method
#import "MLoad.h"
#import "MUi.h"

//Constants
#import "ConstantsTmpTutor.h"
#import "ConstantsSceneCode.h"

#import "ConstantsTutorBubble.h"
#import "ConstantsTutorGraphic2D.h"

#import "ConstantsModelGeneral.h"
#import "ConstantsModelGraphic2D.h"

#import "ConstantsGlossaryDatabase.h"
#import "ConstantsFileType.h"

@interface ActPGTutorPageAutoSetup()

@end

@implementation ActPGTutorPageAutoSetup(Selector)

-(void)setViewWithTag{
	
	[self setView1]; //Base
	[self setView2]; //Note
	
	[self setView5]; //Text
	//[self setView6]; //Image

	[self setView3]; //Bubble1
	//[self setView4]; //Bubble2

	[self setTextPosition];


	}
-(void)setView1{
	NSString* path = [self getBasePath];
	
	//NSLog(@"%@", path);
	//NSLog(@"%@", [[MUi getMainViewController] description]);

	if(!path){
		NSLog(@"ActPGTutorPageAutoSetup - setView1 failed");
		return;
	}
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view1] 
	 setImage:[UIImage imageWithContentsOfFile:path]];
}
-(void)setView2{
	NSString* path = [self getNotePath];
	
	NSLog(@"%@", path);
	//NSLog(@"%@", [[MUi getMainViewController] description]);
	
	if(!path){
		NSLog(@"ActPGTutorPageAutoSetup - setView2 failed");
		return;
	}
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view2] 
	 setImage:[UIImage imageWithContentsOfFile:path]];
}

-(void)setView3{
	NSString* path = [self getBubble1Path];
	
	//Test
//	path = [[NSBundle mainBundle] pathForResource:@"avatarNpcA" ofType:kTmpFileTypePng];
	//Test
	
	//NSLog(@"%@", path);
	//NSLog(@"%@", [[MUi getMainViewController] description]);
	
	if(!path){
		NSLog(@"ActPGTutorPageAutoSetup - setView3 failed");
		return;
	}
	
	
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view3] 
	 setImage:[[UIImage imageWithContentsOfFile:path] stretchableImageWithLeftCapWidth:kBubbleLeftCapWidth topCapHeight:kBubbleTopCapHeight]];
	
	[self setBubble1Position];
	
}

-(void)setView4{
	NSString* path = [self getBubble2Path];
	
	//Test
	//path = [[NSBundle mainBundle] pathForResource:@"avatarNpcB" ofType:kTmpFileTypePng];
	//Test
	
	//NSLog(@"%@", path);
	//NSLog(@"%@", [[MUi getMainViewController] description]);
	
	if(!path){
		NSLog(@"ActPGTutorPageAutoSetup - setView4 failed");
		return;
	}
	
	//[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
//	 setImage:[UIImage imageWithContentsOfFile:path]];
//	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view4] 
	 setImage:[[UIImage imageWithContentsOfFile:path] stretchableImageWithLeftCapWidth:kBubbleLeftCapWidth topCapHeight:kBubbleTopCapHeight]];
	
	
	[self setBubble2Position];
}

-(void)setView5{
	NSString* path = [self getTextPath];
	
	//Test
	//path = @"Test TextPath";
	//Test
	
	NSLog(@"%@", path);
	//NSLog(@"%@", [[MUi getMainViewController] description]);
	
	if(!path){
		NSLog(@"ActPGTutorPageAutoSetup - setView5 failed");
		return;
	}
	
	[(UILabel*)[(PGTutorPageViewController*)self.resource view5] 
	 setText:[NSString stringWithFormat:@"%@", NSLocalizedString(path, @"Localized")]];
	
	//[self setTextPosition];
	
}

-(void)setView6{
	NSString* path = [self getImagePath];
	
	//Test
	//path = [[NSBundle mainBundle] pathForResource:@"avatarNpcC" ofType:kTmpFileTypePng];
	//Test
	
	//NSLog(@"%@", path);
	//NSLog(@"%@", [[MUi getMainViewController] description]);
	
	if(!path){
		NSLog(@"ActPGTutorPageAutoSetup - setView6 failed");
		return;
	}
	
	[(UIImageView*)[(PGTutorPageViewController*)self.resource view6] 
	 setImage:[UIImage imageWithContentsOfFile:path]];
	
	[self setImagePosition];
}

-(NSString*)getBasePath{
	NSUInteger s = [[NSUserDefaults standardUserDefaults] integerForKey:kTmpTutorScene];
	NSString* fileName;

	NSString* path;
	/*
	//Test Case
	fileName = [self getBaseForTutorAchi];
	//fileName = [self getBaseForTutorAttr];
	//fileName = [self getBaseForTutorDate];
	//fileName = [self getBaseForTutorWalk];
	//fileName = [self getBaseForTutorEvent];
	//fileName = [self getBaseForTutorMap];
	//fileName = [self getBaseForTutorArrange];
	//fileName = [self getBaseForTutorPlace];
	//fileName = [self getBaseForTutorSchedule];
	//fileName = [self getBaseForTutorDetail];
	//fileName = [self getBaseForTutorSms];

	path = [[NSBundle mainBundle] pathForResource:fileName ofType:kTmpFileTypePng];
	return path;
	//Test Case
	*/
	
	switch (s) {
		case kSceneCodePGMain:
			fileName = [self getBaseForTutorMain];
			break;
		case kSceneCodePGAchi:
			fileName = [self getBaseForTutorAchi];
			break;
		case kSceneCodePGAttr:
			fileName = [self getBaseForTutorAttr];
			break;
		case kSceneCodePGDate:
			fileName = [self getBaseForTutorDate];
			break;
		case kSceneCodePGWalk:
			fileName = [self getBaseForTutorWalk];
			break;
		case kSceneCodePGEvent:
			fileName = [self getBaseForTutorEvent];
			break;
		case kSceneCodePGMap:
			fileName = [self getBaseForTutorMap];
			break;
		case kSceneCodePGArrange:
			fileName = [self getBaseForTutorArrange];
			break;
		case kSceneCodePGPlace:
			fileName = [self getBaseForTutorPlace];
			break;
		case kSceneCodePGSchedule:
			fileName = [self getBaseForTutorSchedule];
			break;
		case kSceneCodePGDetail:
			fileName = [self getBaseForTutorDetail];
			break;
		case kSceneCodePGSMS:
			fileName = [self getBaseForTutorSms];
			break;
			 
		default:
			fileName = nil;
			break;
	}
	if (!fileName)
		return nil;
	
	//NSLog(@"%@", fileName);
	path = [[NSBundle mainBundle] pathForResource:fileName ofType:kTmpFileTypePng];
	return path;

}

-(NSString*)getBaseForTutorMain{
	/*
	NSString* s = [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor]
									   Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
									   Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorMainPageBase] 
									  Entity:kGlossaryGraphic2D 
										 Key:kGlossaryFileName];
	
	NSLog(@"getBaseForTutor: %@", s);
	return s;
	*/
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor]
									   Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
									   Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorMainPageBase] 
									  Entity:kGlossaryGraphic2D 
										 Key:kGlossaryFileName];
}

-(NSString*)getBaseForTutorAchi{
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor]
									   Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
									   Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorAchiPageBase] 
									  Entity:kGlossaryGraphic2D 
										 Key:kGlossaryFileName];
	
	
}

-(NSString*)getBaseForTutorAttr{
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor]
									   Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
									   Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorAttrPageBase] 
									  Entity:kGlossaryGraphic2D 
										 Key:kGlossaryFileName];
	
	
}

-(NSString*)getBaseForTutorDate{
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor]
									   Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
									   Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorDatePageBase] 
									  Entity:kGlossaryGraphic2D 
										 Key:kGlossaryFileName];
	
	
}

-(NSString*)getBaseForTutorWalk{
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor]
									   Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
									   Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorWalkPageBase] 
									  Entity:kGlossaryGraphic2D 
										 Key:kGlossaryFileName];
	
}

-(NSString*)getBaseForTutorEvent{
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor]
									   Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
									   Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorEventPageBase] 
									  Entity:kGlossaryGraphic2D 
										 Key:kGlossaryFileName];

	
}

-(NSString*)getBaseForTutorMap{
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor]
									   Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
									   Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorMapPageBase] 
									  Entity:kGlossaryGraphic2D 
										 Key:kGlossaryFileName];

	
}

-(NSString*)getBaseForTutorArrange{
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor]
									   Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
									   Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorArrangePageBase] 
									  Entity:kGlossaryGraphic2D 
										 Key:kGlossaryFileName];

	
}

-(NSString*)getBaseForTutorPlace{
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor]
									   Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
									   Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorPlacePageBase] 
									  Entity:kGlossaryGraphic2D 
										 Key:kGlossaryFileName];
	
	
}

-(NSString*)getBaseForTutorSchedule{
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor]
									   Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
									   Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorSchedulePageBase] 
									  Entity:kGlossaryGraphic2D 
										 Key:kGlossaryFileName];
	
	
}

-(NSString*)getBaseForTutorDetail{
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor]
									   Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
									   Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorDetailPageBase] 
									  Entity:kGlossaryGraphic2D 
										 Key:kGlossaryFileName];
	
	
}

-(NSString*)getBaseForTutorSms{
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor]
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorSmsPageBase] 
							   Entity:kGlossaryGraphic2D 
								  Key:kGlossaryFileName];
	
	
}

//Add Bubble & Img Only
-(NSString*)getNotePath{
	NSUInteger s = [[NSUserDefaults standardUserDefaults] integerForKey:kTmpTutorScene];
	
	NSUInteger p = [[NSUserDefaults standardUserDefaults] integerForKey:kTmpTutorPage];
	
	NSString* fileName;

	NSString* path;
	/*
	//Test Case
	fileName = [self getNoteForTutorMain:kTutorMainPage2];
	path = [[NSBundle mainBundle] pathForResource:fileName ofType:kTmpFileTypePng];
	return path;
	//Test Case
	*/
	
	//NSLog(@"Scene Code: %i", s);

	//Add Text in other method
	switch (s) {
		case kSceneCodePGMain:
			fileName = [self getNoteForTutorMain:p];
			break;
		case kSceneCodePGAchi:
			fileName = [self getNoteForTutorAchi:p];
			break;
		case kSceneCodePGAttr:
			fileName = [self getNoteForTutorAttr:p];
			break;
		case kSceneCodePGDate:
			fileName = [self getNoteForTutorDate:p];
			break;
		case kSceneCodePGWalk:
			fileName = [self getNoteForTutorWalk:p];
			break;
		case kSceneCodePGEvent:
			fileName = [self getNoteForTutorEvent:p];
			break;
		case kSceneCodePGMap:
			fileName = [self getNoteForTutorMap:p];
			break;
		case kSceneCodePGArrange:
			fileName = [self getNoteForTutorArrange:p];
			break;
		case kSceneCodePGPlace:
			fileName = [self getNoteForTutorPlace:p];
			break;
		case kSceneCodePGSchedule:
			fileName = [self getNoteForTutorSchedule:p];
			break;
		case kSceneCodePGDetail:
			fileName = [self getNoteForTutorDetail:p];
			break;
		case kSceneCodePGSMS:
			fileName = [self getNoteForTutorSms:p];
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

-(NSString*)getNoteForTutorMain:(NSUInteger)page{
	NSString* fileName;
	
	//NSLog(@"Page Code: %i", page);
	switch (page) {
		case kTutorMainPage1:
			fileName = [self getNoteForTutorMainPage1];
			break;
		case kTutorMainPage2:
			fileName = [self getNoteForTutorMainPage2];
			break;
		case kTutorMainPage3:
			fileName = [self getNoteForTutorMainPage3];
			break;
		case kTutorMainPage4:
			fileName = [self getNoteForTutorMainPage4];
			break;
		case kTutorMainPage5:
			fileName = [self getNoteForTutorMainPage5];
			break;
		case kTutorMainPage6:
			fileName = [self getNoteForTutorMainPage6];
			break;
		case kTutorMainPage7:
			fileName = [self getNoteForTutorMainPage7];
			break;
		case kTutorMainPage8:
			fileName = [self getNoteForTutorMainPage8];
			break;
		case kTutorMainPage9:
			fileName = [self getNoteForTutorMainPage9];
			break;
		case kTutorMainPage10:
			fileName = [self getNoteForTutorMainPage10];
			break;
		case kTutorMainPage11:
			fileName = [self getNoteForTutorMainPage11];
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

-(NSString*)getNoteForTutorAchi:(NSUInteger)page{
	NSString* fileName;
	switch (page) {
		case kTutorAchiPage1:
			fileName = [self getNoteForTutorAchiPage1];
			break;
		case kTutorAchiPage2:
			fileName = [self getNoteForTutorAchiPage2];
			break;
		case kTutorAchiPage3:
			fileName = [self getNoteForTutorAchiPage3];
			break;
		case kTutorAchiPage4:
			fileName = [self getNoteForTutorAchiPage4];
			break;
		case kTutorAchiPage5:
			fileName = [self getNoteForTutorAchiPage5];
			break;
		case kTutorAchiPage6:
			fileName = [self getNoteForTutorAchiPage6];
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

-(NSString*)getNoteForTutorAttr:(NSUInteger)page{
	NSString* fileName;
	switch (page) {
		case kTutorAttrPage1:
			fileName = [self getNoteForTutorAttrPage1];
			break;
		case kTutorAttrPage2:
			fileName = [self getNoteForTutorAttrPage2];
			break;
		case kTutorAttrPage3:
			fileName = [self getNoteForTutorAttrPage3];
			break;
		case kTutorAttrPage4:
			fileName = [self getNoteForTutorAttrPage4];
			break;
		case kTutorAttrPage5:
			fileName = [self getNoteForTutorAttrPage5];
			break;
		case kTutorAttrPage6:
			fileName = [self getNoteForTutorAttrPage6];
			break;
		case kTutorAttrPage7:
			fileName = [self getNoteForTutorAttrPage7];
			break;
		case kTutorAttrPage8:
			fileName = [self getNoteForTutorAttrPage8];
			break;
		case kTutorAttrPage9:
			fileName = [self getNoteForTutorAttrPage9];
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

-(NSString*)getNoteForTutorDate:(NSUInteger)page{
	NSString* fileName;
	switch (page) {
		case kTutorDatePage1:
			fileName = [self getNoteForTutorDatePage1];
			break;
		case kTutorDatePage2:
			fileName = [self getNoteForTutorDatePage2];
			break;
		case kTutorDatePage3:
			fileName = [self getNoteForTutorDatePage3];
			break;
		case kTutorDatePage4:
			fileName = [self getNoteForTutorDatePage4];
			break;
		case kTutorDatePage5:
			fileName = [self getNoteForTutorDatePage5];
			break;
		case kTutorDatePage6:
			fileName = [self getNoteForTutorDatePage6];
			break;
		case kTutorDatePage7:
			fileName = [self getNoteForTutorDatePage7];
			break;
		case kTutorDatePage8:
			fileName = [self getNoteForTutorDatePage8];
			break;
		case kTutorDatePage9:
			fileName = [self getNoteForTutorDatePage9];
			break;
		case kTutorDatePage10:
			fileName = [self getNoteForTutorDatePage10];
			break;
		case kTutorDatePage11:
			fileName = [self getNoteForTutorDatePage11];
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

-(NSString*)getNoteForTutorWalk:(NSUInteger)page{
	NSString* fileName;
	switch (page) {
		case kTutorWalkPage1:
			fileName = [self getNoteForTutorWalkPage1];
			break;
		case kTutorWalkPage2:
			fileName = [self getNoteForTutorWalkPage2];
			break;
		case kTutorWalkPage3:
			fileName = [self getNoteForTutorWalkPage3];
			break;
		case kTutorWalkPage4:
			fileName = [self getNoteForTutorWalkPage4];
			break;
		case kTutorWalkPage5:
			fileName = [self getNoteForTutorWalkPage5];
			break;
		case kTutorWalkPage6:
			fileName = [self getNoteForTutorWalkPage6];
			break;
		case kTutorWalkPage7:
			fileName = [self getNoteForTutorWalkPage7];
			break;
		case kTutorWalkPage8:
			fileName = [self getNoteForTutorWalkPage8];
			break;
		case kTutorWalkPage9:
			fileName = [self getNoteForTutorWalkPage9];
			break;
		case kTutorWalkPage10:
			fileName = [self getNoteForTutorWalkPage10];
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

-(NSString*)getNoteForTutorEvent:(NSUInteger)page{
	NSString* fileName;
	switch (page) {
		case kTutorEventPage1:
			fileName = [self getNoteForTutorEventPage1];
			break;
		case kTutorEventPage2:
			fileName = [self getNoteForTutorEventPage2];
			break;
		case kTutorEventPage3:
			fileName = [self getNoteForTutorEventPage3];
			break;
		case kTutorEventPage4:
			fileName = [self getNoteForTutorEventPage4];
			break;
		case kTutorEventPage5:
			fileName = [self getNoteForTutorEventPage5];
			break;
		case kTutorEventPage6:
			fileName = [self getNoteForTutorEventPage6];
			break;
		case kTutorEventPage7:
			fileName = [self getNoteForTutorEventPage7];
			break;
		case kTutorEventPage8:
			fileName = [self getNoteForTutorEventPage8];
			break;
		case kTutorEventPage9:
			fileName = [self getNoteForTutorEventPage9];
			break;
		case kTutorEventPage10:
			fileName = [self getNoteForTutorEventPage10];
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

-(NSString*)getNoteForTutorMap:(NSUInteger)page{
	NSString* fileName;
	switch (page) {
		case kTutorMapPage1:
			fileName = [self getNoteForTutorMapPage1];
			break;
		case kTutorMapPage2:
			fileName = [self getNoteForTutorMapPage2];
			break;
		case kTutorMapPage3:
			fileName = [self getNoteForTutorMapPage3];
			break;
		case kTutorMapPage4:
			fileName = [self getNoteForTutorMapPage4];
			break;
		case kTutorMapPage5:
			fileName = [self getNoteForTutorMapPage5];
			break;
		case kTutorMapPage6:
			fileName = [self getNoteForTutorMapPage6];
			break;
		case kTutorMapPage7:
			fileName = [self getNoteForTutorMapPage7];
			break;
		case kTutorMapPage8:
			fileName = [self getNoteForTutorMapPage8];
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

-(NSString*)getNoteForTutorArrange:(NSUInteger)page{
	NSString* fileName;
	switch (page) {
		case kTutorArrangePage1:
			fileName = [self getNoteForTutorArrangePage1];
			break;
		case kTutorArrangePage2:
			fileName = [self getNoteForTutorArrangePage2];
			break;
		case kTutorArrangePage3:
			fileName = [self getNoteForTutorArrangePage3];
			break;
		case kTutorArrangePage4:
			fileName = [self getNoteForTutorArrangePage4];
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

-(NSString*)getNoteForTutorPlace:(NSUInteger)page{
	NSString* fileName;
	switch (page) {
		case kTutorPlacePage1:
			fileName = [self getNoteForTutorPlacePage1];
			break;
		case kTutorPlacePage2:
			fileName = [self getNoteForTutorPlacePage2];
			break;
		case kTutorPlacePage3:
			fileName = [self getNoteForTutorPlacePage3];
			break;
		case kTutorPlacePage4:
			fileName = [self getNoteForTutorPlacePage4];
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

-(NSString*)getNoteForTutorSchedule:(NSUInteger)page{
	NSString* fileName;
	switch (page) {
		case kTutorSchedulePage1:
			fileName = [self getNoteForTutorSchedulePage1];
			break;
		case kTutorSchedulePage2:
			fileName = [self getNoteForTutorSchedulePage2];
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

-(NSString*)getNoteForTutorDetail:(NSUInteger)page{
	NSString* fileName;
	switch (page) {
		case kTutorDetailPage1:
			fileName = [self getNoteForTutorDetailPage1];
			break;
		case kTutorDetailPage2:
			fileName = [self getNoteForTutorDetailPage2];
			break;
		case kTutorDetailPage3:
			fileName = [self getNoteForTutorDetailPage3];
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

-(NSString*)getNoteForTutorSms:(NSUInteger)page{
	NSString* fileName;
	switch (page) {
		case kTutorSmsPage1:
			fileName = [self getNoteForTutorSmsPage1];
			break;
		case kTutorSmsPage2:
			fileName = [self getNoteForTutorSmsPage2];
			break;
		case kTutorSmsPage3:
			fileName = [self getNoteForTutorSmsPage3];
			break;
		case kTutorSmsPage4:
			fileName = [self getNoteForTutorSmsPage4];
			break;
		case kTutorSmsPage5:
			fileName = [self getNoteForTutorSmsPage5];
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

-(NSString*)getNoteForTutorMainPage1{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
									   Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
									   Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorMainPage1] 
									  Entity:kGlossaryGraphic2D
										 Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorMainPage2{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
									   Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
									   Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorMainPage2] 
									  Entity:kGlossaryGraphic2D
										 Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorMainPage3{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
									   Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
									   Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorMainPage3] 
									  Entity:kGlossaryGraphic2D
										 Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorMainPage4{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
									   Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
									   Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorMainPage4] 
									  Entity:kGlossaryGraphic2D
										 Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorMainPage5{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
									   Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
									   Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorMainPage5] 
									  Entity:kGlossaryGraphic2D
										 Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorMainPage6{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
									   Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
									   Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorMainPage6] 
									  Entity:kGlossaryGraphic2D
										 Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorMainPage7{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
									   Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
									   Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorMainPage7] 
									  Entity:kGlossaryGraphic2D
										 Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorMainPage8{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
									   Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
									   Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorMainPage8] 
									  Entity:kGlossaryGraphic2D
										 Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorMainPage9{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
									   Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
									   Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorMainPage9] 
									  Entity:kGlossaryGraphic2D
										 Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorMainPage10{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
									   Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
									   Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorMainPage10] 
									  Entity:kGlossaryGraphic2D
										 Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorMainPage11{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
									   Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
									   Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorMainPage11] 
									  Entity:kGlossaryGraphic2D
										 Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorAchiPage1{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorAchiPage1] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}
-(NSString*)getNoteForTutorAchiPage2{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorAchiPage2] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}
-(NSString*)getNoteForTutorAchiPage3{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorAchiPage3] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}
-(NSString*)getNoteForTutorAchiPage4{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorAchiPage4] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}
-(NSString*)getNoteForTutorAchiPage5{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorAchiPage5] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}
-(NSString*)getNoteForTutorAchiPage6{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorAchiPage6] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorAttrPage1{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorAttrPage1] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorAttrPage2{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorAttrPage2] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorAttrPage3{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorAttrPage3] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorAttrPage4{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorAttrPage4] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorAttrPage5{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorAttrPage5] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorAttrPage6{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorAttrPage6] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorAttrPage7{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorAttrPage7] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorAttrPage8{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorAttrPage8] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorAttrPage9{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorAttrPage9] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}
-(NSString*)getNoteForTutorDatePage1{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorDatePage1] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorDatePage2{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorDatePage2] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorDatePage3{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorDatePage3] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorDatePage4{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorDatePage4] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorDatePage5{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorDatePage5] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorDatePage6{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorDatePage6] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorDatePage7{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorDatePage7] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorDatePage8{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorDatePage8] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorDatePage9{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorDatePage9] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorDatePage10{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorDatePage10] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorDatePage11{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorDatePage11] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorWalkPage1{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorWalkPage1] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorWalkPage2{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorWalkPage2] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorWalkPage3{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorWalkPage3] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorWalkPage4{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorWalkPage4] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorWalkPage5{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorWalkPage5] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorWalkPage6{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorWalkPage6] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorWalkPage7{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorWalkPage7] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorWalkPage8{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorWalkPage8] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorWalkPage9{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorWalkPage9] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorWalkPage10{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorWalkPage10] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorEventPage1{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorEventPage1] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorEventPage2{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorEventPage2] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorEventPage3{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorEventPage3] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorEventPage4{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorEventPage4] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorEventPage5{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorEventPage5] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorEventPage6{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorEventPage6] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorEventPage7{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorEventPage7] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorEventPage8{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorEventPage8] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorEventPage9{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorEventPage9] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorEventPage10{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorEventPage10] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorMapPage1{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorMapPage1] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorMapPage2{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorMapPage2] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorMapPage3{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorMapPage3] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorMapPage4{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorMapPage4] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorMapPage5{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorMapPage5] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorMapPage6{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorMapPage6] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorMapPage7{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorMapPage7] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorMapPage8{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorMapPage8] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorArrangePage1{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorArrangePage1] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorArrangePage2{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorArrangePage2] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorArrangePage3{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorArrangePage3] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorArrangePage4{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorArrangePage4] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorPlacePage1{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorPlacePage1] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorPlacePage2{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorPlacePage2] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorPlacePage3{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorPlacePage3] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorPlacePage4{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorPlacePage4] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorSchedulePage1{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorSchedulePage1] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorSchedulePage2{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorSchedulePage2] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorDetailPage1{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorDetailPage1] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorDetailPage2{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorDetailPage2] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorDetailPage3{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorDetailPage3] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorSmsPage1{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorSmsPage1] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorSmsPage2{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorSmsPage2] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorSmsPage3{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorSmsPage3] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorSmsPage4{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorSmsPage4] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}

-(NSString*)getNoteForTutorSmsPage5{
	
	
	
	return [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
								Attr2:[NSNumber numberWithInt:kModelG2DInfoTransition] 
								Attr3:[NSNumber numberWithInt:kModelG2DKindUiTutorSmsPage5] 
							   Entity:kGlossaryGraphic2D
								  Key:kGlossaryFileName];
	
}
@end
