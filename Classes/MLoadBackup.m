//
//  MLoadBackup.m
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MLoadBackup.h"

//Additional
#import "PGMainSVController.h"
#import "PGMainViewController.h"
#import "PGAchiViewController.h"
#import "PGAttrViewController.h"


//Constants
#import "ConstantsPGMain.h"
#import "ConstantsPGSV.h"
//Auditor
#import "ConstantsAuditor.h"
//Method
#import "ConstantsMethodConstraint.h"
//Glossary
#import "ConstantsGlossaryDatabase.h"
//Scene
#import "ConstantsSceneCode.h"

typedef enum{
	pkSVController = 1,
	pkPGMain = 1,
	pkPGAchi = 2,
	pkPGAttr = 3,
	
	//dividend for progressView
	pkDividend = 10,
}pk;
//int const pkSVController = 1;
//Test
#import "TestAction.h"



@implementation MLoadBackup



/* Apply MultiStore
 Modify getContentWithEntity & getContentWithSortKey
 Add moc when they read
 */
+(BOOL)setViewWithTag:(NSUInteger)t controller:(id)c{
	/*
	 int const kMainView = 0;
	 int const kMainWeatherImage = 1;
	 int const kMainAtPointLabel = 2;
	 int const kMainDayNightImage = 3;
	 int const kMainBubbleImage = 4;
	 int const kMainCharacterImage = 5;
	 int const kMainBackgroundImage = 6;
	 int const kMainLeftArrowImage = 7;
	 int const kMainLeftActionButton = 8;
	 int const kMainMidActionButton = 9;
	 int const kMainRightActionButton = 10;
	 int const kMainRightArrowButton = 11;
	 int const kMainHintLabel = 12;
	 */
	//NSLog(@"%d", t);
	
	unsigned int i = t;
	
	//Get from PGNavController, not safe for viewDidLoad
	/*
	 PGNavController* nc = 
	 (PGNavController*)[[[UIApplication sharedApplication] keyWindow] rootViewController];
	 NSLog(@"%@",[[nc class] description]);
	 
	 PGMainSVController* svc = 
	 (PGMainSVController*)[[nc viewControllers] objectAtIndex:pkSVController];
	 NSLog(@"%@",[[svc class] description]);
	 
	 PGMainViewController* vc = (PGMainViewController*)[[svc viewControllers] objectAtIndex:kSVPage2];
	 NSLog(@"%@",[[vc class] description]);
	 
	 if ([vc isEqual:[NSNull null]]) {
	 NSLog(@"ViewController is Not ready");
	 return NO;
	 }
	 
	 id v = [[vc view]viewWithTag:i];
	 
	 [vc release];
	 */
	/*
	 
	 d = GetDefault(view); //role number
	 NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	 
	 //NSLog(@"%@",[defaults objectForKey:@"s1t1"]);
	 
	 */
	
	id v;
	NSUInteger currentScene;
	if ([c isMemberOfClass:[PGAchiViewController class]]){
		v = [[(PGAchiViewController*)c view] viewWithTag:i];
		currentScene = kSceneCodePGAchi;
	}else if ([c isMemberOfClass:[PGMainViewController class]]){
		v = [[(PGMainViewController*)c view] viewWithTag:i];
		currentScene = kSceneCodePGMain;
	}else if ([c isMemberOfClass:[PGAttrViewController class]]){
		v = [[(PGAttrViewController*)c view] viewWithTag:i];
		currentScene = kSceneCodePGAttr;
		
	}else{
		NSLog(@"[MLoadBackup setViewWithTag] is error");
		return NO;
	}
	
	//id v = [[(PGMainViewController*)c view] viewWithTag:i];
	NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
	NSUInteger defaultRole = [self getDefaultRoleWithScene:currentScene tag:i];
	
	
	
	//NSLog(@"Role: %d",dummy);
	NSPredicate* predicate;
	
	//NSLog(@"Predicate: %@", [predicate description]);
	
	NSArray* array;
	//NSLog(@"FileName: %@",[[array objectAtIndex:0] valueForKey:kGlossaryFileName]);
	
	
	//array(NSDict) retrieve from a dictionary, ConstantsRoleToAttr
	
	//predicate retrieve from array(NSDict)
	
	//path retrieve from database based on predicate
	
	NSString *path;
	id output;
	if ([v isMemberOfClass:[UIImageView class]]){
		predicate = [self getPredicateWithScene:currentScene role:defaultRole];
		
		//predicate = [self getPredicateWithScene:currentScene role:defaultRole entity:kGraphic2D];
		array = (NSArray*)[self getContentWithEntity:kGlossaryGraphic2D sortKey:kGlossarySid predicate:predicate constraint:kSingleton];
		path =
		[[NSBundle mainBundle] pathForResource: [[array objectAtIndex:0] valueForKey:kGlossaryFileName]
										ofType: [[array objectAtIndex:0] valueForKey:kGlossaryExtension]];
		//NSLog(@"%@",[array description]);
		if (path)
			[v setImage:[UIImage imageWithContentsOfFile:path]];
		else
			NSLog(@"(UIImageView)[ActAutoSetup setViewWithTag] path does not exist");
		//Button has UIButtonTypeCustom / UIButtonTypeRoundRect and so on, be careful
	}else if ([v isMemberOfClass:[[UIButton buttonWithType:UIButtonTypeCustom] class]] || [v isMemberOfClass:[[UIButton buttonWithType:UIButtonTypeRoundedRect] class]]) {
		predicate = [self getPredicateWithScene:currentScene role:defaultRole];
		array = (NSArray*)[self getContentWithEntity:kGlossaryGraphic2D sortKey:kGlossarySid predicate:predicate constraint:kSingleton];
		path =
		[[NSBundle mainBundle] pathForResource: [[array objectAtIndex:0] valueForKey:kGlossaryFileName]
										ofType: [[array objectAtIndex:0] valueForKey:kGlossaryExtension]];
		
		if (path)
			[(UIButton*)v setImage:[UIImage imageWithContentsOfFile:path] forState:UIControlStateNormal];
		else
			NSLog(@"(UIButton)[ActAutoSetup setViewWithTag] path does not exist");
		
		
	}else if ([v isMemberOfClass:[UILabel class]]) {
		
		/*
		 predicate = [self getPredicateWithScene:currentScene role:defaultRole entity:kTextOut];
		 //int16/int32 are all NSNumber
		 //NSLog(@"%@", [predicate description]);
		 
		 if (predicate) {
		 array = (NSArray*)[self getContentWithEntity:kGlossaryTextOut sortKey:kGlossarySid predicate:predicate constraint:kSingleton];
		 if(array)
		 output = (NSString*)[[array objectAtIndex:0] valueForKey:kGlossaryContent];
		 }else {
		 
		 predicate = [self getPredicateForGirlWithScene:currentScene role:defaultRole];
		 //NSLog(@"%@",predicate);
		 
		 if (predicate){
		 array = (NSArray*)[self getContentWithEntity:kGlossaryGirl sortKey:kGlossarySid predicate:predicate constraint:kSingleton];
		 if(array)
		 output = (NSNumber*)[[array objectAtIndex:0] valueForKey:kGlossaryName];
		 }else {
		 NSLog(@"(UILabel)[ActAutoSetup setViewWithTag] error no predicate");
		 output = [NSString stringWithString:@""];
		 }
		 
		 }
		 NSLog(@"%@",output);
		 if (!output) {
		 NSLog(@"(UILabel)[ActAutoSetup setViewWithTag] content does not exist");
		 }
		 */
		
		
		predicate = [self getPredicateWithScene:currentScene role:defaultRole];
		
		//array = (NSArray*)[self getContentWithEntity:kGlossaryTextOut sortKey:kGlossarySid predicate:predicate constraint:kSingleton];
		array = (NSArray*)[self getContentWithSortKey:kGlossarySid predicate:predicate constraint:kSingleton scene:currentScene role:defaultRole];
		
		if (!array) 
			return NO;
		[self getContentWithRecord:array scene:currentScene role:defaultRole];
		output = [self getContentWithRecord:array scene:currentScene role:defaultRole];
		//output = [[array objectAtIndex:0] valueForKey:kGlossaryContent];
		
		[(UILabel*)v setText:[NSString stringWithFormat:@"%@", output]];
		/* Trial Failed (Diff approach for different class, quite redundant)
		 if ([output isMemberOfClass:[NSString class]]) {
		 [(UILabel*)v setText:[NSString stringWithFormat:@"%@", output]];
		 }else if ([output isMemberOfClass:[NSNumber class]]) {
		 [(UILabel*)v setText:[NSString stringWithFormat:@"%d", [output unsignedIntValue]]];
		 
		 }else{
		 NSLog(@"%@",output);
		 NSLog(@"Text Output error");
		 }
		 */
		
		
		
		//NSLog(@"%@", [array description]);
		//NSLog(@"%@",[array description]);
		//Original
		/*
		 predicate = [self getPredicateWithScene:currentScene role:defaultRole];
		 //array = (NSArray*)[self getContentWithEntity:kGlossaryTextOut sortKey:kGlossarySid predicate:predicate constraint:kSingleton];
		 array = (NSArray*)[self getContentWithSortKey:kGlossarySid predicate:predicate constraint:kSingleton scene:currentScene role:defaultRole];
		 
		 if (array) 
		 [(UILabel*)v setText:[[array objectAtIndex:0] valueForKey:kGlossaryContent]];
		 else
		 NSLog(@"(UILabel)[ActAutoSetup setViewWithTag] content does not exist");
		 */
		/*	
		 }else if ([v isMemberOfClass:[UIProgressView class]]) {
		 predicate = [self getPredicateWithScene:currentScene role:defaultRole entity:kGirl];
		 array = (NSArray*)[self getContentWithEntity:kGlossaryGirl sortKey:kGlossarySid predicate:predicate constraint:kSingleton];
		 
		 if (array) 
		 //[(UIProgressView*)v setText:[[array objectAtIndex:0] valueForKey:kGlossaryContent]];
		 else
		 NSLog(@"(UIProgressView)[ActAutoSetup setViewWithTag] content does not exist");
		 */
	}else if ([v isMemberOfClass:[UIProgressView class]]) {
		predicate = [self getPredicateWithScene:currentScene role:defaultRole];
		
		//array = (NSArray*)[self getContentWithEntity:kGlossaryTextOut sortKey:kGlossarySid predicate:predicate constraint:kSingleton];
		array = (NSArray*)[self getContentWithSortKey:kGlossarySid predicate:predicate constraint:kSingleton scene:currentScene role:defaultRole];
		
		if (!array) 
			return NO;
		[self getContentWithRecord:array scene:currentScene role:defaultRole];
		output = [self getContentWithRecord:array scene:currentScene role:defaultRole];
		//output = [[array objectAtIndex:0] valueForKey:kGlossaryContent];
		//NSLog(@"[MLoadBackup setViewWithTag: Controller]: ProgressView: %.1f", [output floatValue]);
		float f = [output floatValue] / pkDividend;
		//[(UIProgressView*)v setText:[NSString stringWithFormat:@"%@", output]];
		[(UIProgressView*)v setProgress:f];
		
	}else {
		NSLog(@"[MLoadBackup setViewWithTag: Controller]: error when retrieving database.");
		
	}
	
	[pool release];
	return YES;
	//User Default Sample
	/*
	 NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	 //NSDictionary *appDefaults = [NSDictionary dictionaryWithObject:@"YES" forKey:@"DeleteBackup"];
	 
	 NSString* str = [[NSString alloc]initWithFormat:@"s%dt%d",pkPGMain, i];
	 NSUInteger r = [defaults integerForKey:str];
	 [str release];
	 
	 NSLog(@"Role: %d", r);
	 */
	
	/*
	 //set view Images, prefered method as it can customize each view. Use with cautious, initial only
	 switch (i) {
	 //imageView
	 case kMainView:
	 case kMainWeatherImage:
	 case kMainDayNightImage:
	 case kMainBubbleImage:
	 case kMainCharacterImage:
	 case kMainBackgroundImage:
	 [(UIImageView*)[[vc view] viewWithTag:i] setImage:[UIImage imageWithContentsOfFile:path]];
	 break;
	 //button
	 case kMainLeftArrowButton:
	 case kMainLeftActionButton:
	 case kMainMidActionButton:
	 case kMainRightActionButton:
	 case kMainRightArrowButton:
	 [(UIButton*)[[vc view] viewWithTag:i] 
	 setImage:[UIImage imageWithContentsOfFile:path] forState:UIControlStateNormal];
	 break;
	 //label
	 case kMainAtPointLabel:
	 case kMainHintLabel:
	 
	 break;
	 
	 default:
	 break;
	 }
	 */
	//[[[(PGMainViewController*)[[nc viewControllers] objectAtIndex:kSVPage2]view] viewWithTag:i] ]
	
	//[[[(PGMainViewController*)[[nc viewControllers] objectAtIndex:kSVPage2]view] viewWithTag:i] ]
	//NSLog(@"%d",[[[(PGMainViewController*)[[nc viewControllers] objectAtIndex:kSVPage2]view] viewWithTag:i] tag]);
	
	
}


@end
