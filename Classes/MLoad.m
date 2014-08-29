//
//  MLoad.m
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MLoad.h"

//For Standard
#import "PocketDraftAppDelegate.h"

//Additional
#import "PGMainSVController.h"
#import "PGMainViewController.h"
#import "PGAchiViewController.h"
#import "PGAttrViewController.h"

#import "PGTitleViewController.h"
#import "PGDateViewController.h"
#import "PGWalkViewController.h"

#import "PGMapViewController.h"
#import "PGEventViewController.h"
#import "PGRomanceViewController.h"
#import "PGDetailViewController.h"
#import "PGArrangeViewController.h"
#import "PGPlaceViewController.h"
#import "PGScheduleViewController.h"
#import "PGTalkViewController.h"
#import "PGSMSViewController.h"

//Modal
#import "PGMConfirmViewController.h"
#import "PGMAlertViewController.h"
#import "PGMSelectionViewController.h"



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

//The following Constants are unused
typedef enum{
	pkSVController = 1,
	pkPGMain = 1,
	pkPGAchi = 2,
	pkPGAttr = 3,
	pkPGTitle = 4,
	pkPGDate = 7,
	pkPGMap = 8,
	pkPGEvent = 9,
	pkPGRomance = 10,
	pkPGDetail = 11,
	pkPGArrange = 12,
	pkPGPlace = 13,
	pkPGSchedule = 14,
	pkPGTalk = 15,
	pkPGSMS = 16,
	
	pkPGMConfirm = 31,
	pkPGMAlert = 32,
	pkPGMSelection = 33,

	//dividend for progressView
	pkDividend = 10,
}pk;
//int const pkSVController = 1;
//Test
#import "TestAction.h"



@implementation MLoad

//Standard for (Record Content)
+(NSArray*)getRecordsWithEntity:(NSString*)e{
	//MOC
	NSManagedObjectContext *moc = [(PocketDraftAppDelegate*)[[UIApplication sharedApplication] delegate]managedObjectContext];
	//EntityDescription
	NSEntityDescription *entityDescription = [NSEntityDescription
											  entityForName:e inManagedObjectContext:moc];
	//Request
	NSFetchRequest *request = [[[NSFetchRequest alloc] init] autorelease];
	[request setEntity:entityDescription];
	
	//no predicate
		
	//SortDescriptor
	NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc]
										initWithKey:kGlossarySid ascending:YES];
	[request setSortDescriptors:[NSArray arrayWithObject:sortDescriptor]];
	[sortDescriptor release];

	//Execute
	NSError *error;
	NSArray *array = [[[NSArray alloc] initWithArray:[moc executeFetchRequest:request error:&error]] autorelease];
	if (array == nil)
	{
		// Deal with error...
		NSLog(@"[Method getContentWithEntity] array is nil");
		return nil;
	}
	//Test
	//NSLog(@"%d", [array count]);
	
	if (!array){ 
		NSLog(@"[Method getContentWithEntity] retrieve empty array");
		return nil;
	}
	return array;
	//NSLog(@"%@", e);
	//NSLog(@"%@", [array description]);
	//NSLog(@"[Method getContentWithEntity] not match constraint");
	//return nil;
	

}

+(NSArray*)getRecordsWithAttrName:(NSString*)an attrValue:(NSString*)av Entity:(NSString*)e{
	//MOC
	NSManagedObjectContext *moc = [(PocketDraftAppDelegate*)[[UIApplication sharedApplication] delegate]managedObjectContext];
	//EntityDescription
	NSEntityDescription *entityDescription = [NSEntityDescription
											  entityForName:e inManagedObjectContext:moc];
	//Request
	NSFetchRequest *request = [[[NSFetchRequest alloc] init] autorelease];
	[request setEntity:entityDescription];
	
	//predicate
	NSPredicate* p;
	p = [self getPredicateWithAttrName:an value:av];
	[request setPredicate:p];
	
	//SortDescriptor
	NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc]
										initWithKey:kGlossarySid ascending:YES];
	[request setSortDescriptors:[NSArray arrayWithObject:sortDescriptor]];
	[sortDescriptor release];

	//Execute
	NSError *error;
	NSArray *array = [[[NSArray alloc] initWithArray:[moc executeFetchRequest:request error:&error]] autorelease];
	if (array == nil)
	{
		// Deal with error...
		NSLog(@"[Method getContentWithEntity] array is nil");
		return nil;
	}
	//Test
	//NSLog(@"%d", [array count]);
	
	if (!array){ 
		NSLog(@"[Method getContentWithEntity] retrieve empty array");
		return nil;
	}
	
	//NSLog(@"%@", e);
	//NSLog(@"%@", [array description]);
	return array;
	
	
}

+(NSArray*)getRecordsWithOutAttrName:(NSString*)an attrValue:(NSString*)av Entity:(NSString*)e{
	//MOC
	NSManagedObjectContext *moc = [(PocketDraftAppDelegate*)[[UIApplication sharedApplication] delegate]managedObjectContext];
	//EntityDescription
	NSEntityDescription *entityDescription = [NSEntityDescription
											  entityForName:e inManagedObjectContext:moc];
	//Request
	NSFetchRequest *request = [[[NSFetchRequest alloc] init] autorelease];
	[request setEntity:entityDescription];
	
	//predicate
	NSPredicate* p;
	p = [self getPredicateWithOutAttrName:an value:av];
	[request setPredicate:p];
	
	//SortDescriptor
	NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc]
										initWithKey:kGlossarySid ascending:YES];
	[request setSortDescriptors:[NSArray arrayWithObject:sortDescriptor]];
	[sortDescriptor release];
	//Execute
	NSError *error;
	NSArray *array = [[[NSArray alloc] initWithArray:[moc executeFetchRequest:request error:&error]] autorelease];
	if (array == nil)
	{
		// Deal with error...
		NSLog(@"[Method getContentWithEntity] array is nil");
		return nil;
	}
	//Test
	//NSLog(@"%d", [array count]);
	
	if (!array){ 
		NSLog(@"[Method getContentWithEntity] retrieve empty array");
		return nil;
	}
	
	//NSLog(@"%@", e);
	//NSLog(@"%@", [array description]);
	return array;
	
	
}


+(NSArray*)getRecordsWithAttrName1:(NSString*)an1 attrValue1:(NSString*)av1 AttrName2:(NSString*)an2 attrValue2:(NSString*)av2 Entity:(NSString*)e{
	//MOC
	NSManagedObjectContext *moc = [(PocketDraftAppDelegate*)[[UIApplication sharedApplication] delegate]managedObjectContext];
	//EntityDescription
	NSEntityDescription *entityDescription = [NSEntityDescription
											  entityForName:e inManagedObjectContext:moc];
	//Request
	NSFetchRequest *request = [[[NSFetchRequest alloc] init] autorelease];
	[request setEntity:entityDescription];
	
	//predicate
	NSPredicate* p;
	p = [self getPredicateWithAttrName1:an1 attrValue1:av1 attrName2:an2 attrValue2:av2];
	[request setPredicate:p];
	
	//SortDescriptor
	NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc]
										initWithKey:kGlossarySid ascending:YES];
	[request setSortDescriptors:[NSArray arrayWithObject:sortDescriptor]];
	[sortDescriptor release];
	
	//Execute
	NSError *error;
	NSArray *array = [[[NSArray alloc] initWithArray:[moc executeFetchRequest:request error:&error]] autorelease];
	if (array == nil)
	{
		// Deal with error...
		NSLog(@"[Method getContentWithEntity] array is nil");
		return nil;
	}
	//Test
	//NSLog(@"%d", [array count]);
	
	if (!array){ 
		NSLog(@"[Method getContentWithEntity] retrieve empty array");
		return nil;
	}
	
	//NSLog(@"%@", e);
	//NSLog(@"%@", [array description]);
	return array;
	
	
}

+(NSArray*)getRecordsWithAttrName1:(NSString*)an1 attrValue1:(NSString*)av1 
						 AttrName2:(NSString*)an2 attrValue2:(NSString*)av2 
						 AttrName3:(NSString*)an3 attrValue3:(NSString*)av3 
							Entity:(NSString*)e{
	//MOC
	NSManagedObjectContext *moc = [(PocketDraftAppDelegate*)[[UIApplication sharedApplication] delegate]managedObjectContext];
	//EntityDescription
	NSEntityDescription *entityDescription = [NSEntityDescription
											  entityForName:e inManagedObjectContext:moc];
	//Request
	NSFetchRequest *request = [[[NSFetchRequest alloc] init] autorelease];
	[request setEntity:entityDescription];
	
	//predicate
	NSPredicate* p;
	p = [self getPredicateWithAttrName1:an1 attrValue1:av1 
							  AttrName2:an2 attrValue2:av2 
							  AttrName3:an3 attrValue3:av3];
	[request setPredicate:p];
	
	//SortDescriptor
	NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc]
										initWithKey:kGlossarySid ascending:YES];
	[request setSortDescriptors:[NSArray arrayWithObject:sortDescriptor]];
	[sortDescriptor release];
	
	//Execute
	NSError *error;
	NSArray *array = [[[NSArray alloc] initWithArray:[moc executeFetchRequest:request error:&error]] autorelease];
	if (array == nil)
	{
		// Deal with error...
		NSLog(@"[Method getContentWithEntity] array is nil");
		return nil;
	}
	//Test
	//NSLog(@"%d", [array count]);
	
	if (!array){ 
		NSLog(@"[Method getContentWithEntity] retrieve empty array");
		return nil;
	}
	
	//NSLog(@"%@", e);
	//NSLog(@"%@", [array description]);
	return array;
	
	
}

+(NSArray*)getRecordsWithName:(NSString*)name Entity:(NSString*)e{
	//MOC
	NSManagedObjectContext *moc = [(PocketDraftAppDelegate*)[[UIApplication sharedApplication] delegate]managedObjectContext];
	//EntityDescription
	NSEntityDescription *entityDescription = [NSEntityDescription
											  entityForName:e inManagedObjectContext:moc];
	//Request
	NSFetchRequest *request = [[[NSFetchRequest alloc] init] autorelease];
	[request setEntity:entityDescription];
	
	//predicate
	NSPredicate* p;
	p = [self getPredicateWithName:name];
	[request setPredicate:p];
	
	//SortDescriptor
	NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc]
										initWithKey:kGlossarySid ascending:YES];
	[request setSortDescriptors:[NSArray arrayWithObject:sortDescriptor]];
	[sortDescriptor release];
	
	//Execute
	NSError *error;
	NSArray *array = [[[NSArray alloc] initWithArray:[moc executeFetchRequest:request error:&error]] autorelease];
	if (array == nil)
	{
		// Deal with error...
		NSLog(@"[Method getContentWithEntity] array is nil");
		return nil;
	}
	//Test
	//NSLog(@"%d", [array count]);
	
	if (!array){ 
		NSLog(@"[Method getContentWithEntity] retrieve empty array");
		return nil;
	}
	
	//NSLog(@"%@", e);
	//NSLog(@"%@", [array description]);
	//NSLog(@"[Method getContentWithEntity] not match constraint");
	return array;
	

}
//Standard get record
//Standard for TextOut(Non-Record Content)
+(NSArray*)getRecordWithAttr1:(NSNumber*)a1 Attr2:(NSNumber*)a2 Attr3:(NSNumber*)a3 Entity:(NSString*)e{
	
	//MOC
	NSManagedObjectContext *moc = [(PocketDraftAppDelegate*)[[UIApplication sharedApplication] delegate]managedObjectContext];
	//EntityDescription
	NSEntityDescription *entityDescription = [NSEntityDescription
											  entityForName:e inManagedObjectContext:moc];
	//Request
	NSFetchRequest *request = [[[NSFetchRequest alloc] init] autorelease];
	[request setEntity:entityDescription];
	
	//predicate
	NSPredicate* p;
	p = [self getPredicateWithAttr1:a1 Attr2:a2 Attr3:a3];
	[request setPredicate:p];
	
	//SortDescriptor
	NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc]
										initWithKey:kGlossarySid ascending:YES];
	[request setSortDescriptors:[NSArray arrayWithObject:sortDescriptor]];
	[sortDescriptor release];
	//Execute
	NSError *error;
	NSArray *array = [[[NSArray alloc] initWithArray:[moc executeFetchRequest:request error:&error]] autorelease];
	if (array == nil)
	{
		// Deal with error...
		NSLog(@"[Method getRecordWithAttr1] array is nil");
		return nil;
	}
	//Test
	//NSLog(@"%d", [array count]);
	
	if (!array){ 
		NSLog(@"[Method getRecordWithAttr1] retrieve empty array");
		return nil;
	}
	if ([array count] == 1) 
		//return [array lastObject];
		return array;
	//NSLog(@"%@", e);
	//NSLog(@"%@", [array description]);
	NSLog(@"[Method getRecordWithAttr1] not match constraint");
	return nil;
	
}



//Standard for TextOut(Non-Record Content)
+(NSString*)getContentWithAttr1:(NSNumber*)a1 Attr2:(NSNumber*)a2 Attr3:(NSNumber*)a3 Entity:(NSString*)e Key:(NSString*)k{
	
	//MOC
	NSManagedObjectContext *moc = [(PocketDraftAppDelegate*)[[UIApplication sharedApplication] delegate]managedObjectContext];
	//EntityDescription
	NSEntityDescription *entityDescription = [NSEntityDescription
											  entityForName:e inManagedObjectContext:moc];
	//Request
	NSFetchRequest *request = [[[NSFetchRequest alloc] init] autorelease];
	[request setEntity:entityDescription];
	
	//predicate
	NSPredicate* p;
	p = [self getPredicateWithAttr1:a1 Attr2:a2 Attr3:a3];
	[request setPredicate:p];
	
	//SortDescriptor
	NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc]
										initWithKey:kGlossarySid ascending:YES];
	[request setSortDescriptors:[NSArray arrayWithObject:sortDescriptor]];
	[sortDescriptor release];
	//Execute
	NSError *error;
	NSArray *array = [[[NSArray alloc] initWithArray:[moc executeFetchRequest:request error:&error]] autorelease];
	if (array == nil)
	{
		// Deal with error...
		NSLog(@"[Method getContentWithAttr1...] array is nil");
		return nil;
	}
	//Test
	//NSLog(@"%d", [array count]);
		
	if (!array){ 
		NSLog(@"[Method getContentWithAttr1...] retrieve empty array");
		return nil;
	}
	if ([array count] == 1) 
		//return [array lastObject];
		return [[array objectAtIndex:0] valueForKey:k];
	//NSLog(@"%@", e);
	//NSLog(@"%@", [array description]);
	NSLog(@"[Method getContentWithAttr1...] not match constraint");
	return nil;

}


/* Apply MultiStore
 Modify getContentWithEntity & getContentWithSortKey
 Add moc when they read
 */

//Based on Role
+(BOOL)setViewWithTag:(NSUInteger)t controller:(id)c{
		
	unsigned int i = t;
	
	//Set View for the correct Scene 
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
	// 4
	}else if ([c isMemberOfClass:[PGTitleViewController class]]){
		v = [[(PGTitleViewController*)c view] viewWithTag:i];
		currentScene = kSceneCodePGTitle;
	// 7
	}else if ([c isMemberOfClass:[PGDateViewController class]]){
		v = [[(PGDateViewController*)c view] viewWithTag:i];
		currentScene = kSceneCodePGDate;
	}else if ([c isMemberOfClass:[PGMapViewController class]]){
		v = [[(PGMapViewController*)c view] viewWithTag:i];
		currentScene = kSceneCodePGMap;
	}else if ([c isMemberOfClass:[PGEventViewController class]]){
		v = [[(PGEventViewController*)c view] viewWithTag:i];
		currentScene = kSceneCodePGEvent;
	}else if ([c isMemberOfClass:[PGRomanceViewController class]]){
		v = [[(PGRomanceViewController*)c view] viewWithTag:i];
		currentScene = kSceneCodePGRomance;
	}else if ([c isMemberOfClass:[PGDetailViewController class]]){
		v = [[(PGDetailViewController*)c view] viewWithTag:i];
		currentScene = kSceneCodePGDetail;
	}else if ([c isMemberOfClass:[PGArrangeViewController class]]){
		v = [[(PGArrangeViewController*)c view] viewWithTag:i];
		currentScene = kSceneCodePGArrange;
	// 13
	}else if ([c isMemberOfClass:[PGPlaceViewController class]]){
		v = [[(PGPlaceViewController*)c view] viewWithTag:i];
		currentScene = kSceneCodePGPlace;
	}else if ([c isMemberOfClass:[PGScheduleViewController class]]){
		v = [[(PGScheduleViewController*)c view] viewWithTag:i];
		currentScene = kSceneCodePGSchedule;
	// 14
	}else if ([c isMemberOfClass:[PGTalkViewController class]]){
		v = [[(PGTalkViewController*)c view] viewWithTag:i];
		currentScene = kSceneCodePGTalk;
	// 16
	}else if ([c isMemberOfClass:[PGSMSViewController class]]){
		v = [[(PGSMSViewController*)c view] viewWithTag:i];
		currentScene = kSceneCodePGSMS;
	// 17
	}else if ([c isMemberOfClass:[PGWalkViewController class]]){
		v = [[(PGWalkViewController*)c view] viewWithTag:i];
		currentScene = kSceneCodePGWalk;
		// 31
	}else if ([c isMemberOfClass:[PGMConfirmViewController class]]){
		v = [[(PGMConfirmViewController*)c view] viewWithTag:i];
		currentScene = kSceneCodePGMConfirm;
		// 32
	}else if ([c isMemberOfClass:[PGMAlertViewController class]]){
		v = [[(PGMAlertViewController*)c view] viewWithTag:i];
		currentScene = kSceneCodePGMAlert;
		// 33
	}else if ([c isMemberOfClass:[PGMSelectionViewController class]]){
		v = [[(PGMSelectionViewController*)c view] viewWithTag:i];
		currentScene = kSceneCodePGMSelection;
	}else{
		NSLog(@"[MLoad setViewWithTag] is error");
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
	}else if ([v isMemberOfClass:[[UIButton buttonWithType:UIButtonTypeCustom] class]]/* || [v isMemberOfClass:[[UIButton buttonWithType:UIButtonTypeRoundedRect] class]]*/) {
		predicate = [self getPredicateWithScene:currentScene role:defaultRole];
		//NSLog(@"Scene: %d Role: %d tag: %d", currentScene, defaultRole, t);

		array = (NSArray*)[self getContentWithEntity:kGlossaryGraphic2D sortKey:kGlossarySid predicate:predicate constraint:kSingleton];
		path =
		[[NSBundle mainBundle] pathForResource: [[array objectAtIndex:0] valueForKey:kGlossaryFileName]
										ofType: [[array objectAtIndex:0] valueForKey:kGlossaryExtension]];

		//NSLog(@"Path: %@", path);

		if (path)
			[(UIButton*)v setImage:[UIImage imageWithContentsOfFile:path] forState:UIControlStateNormal];
		else
			NSLog(@"(UIButton)[ActAutoSetup setViewWithTag] path does not exist");
		
	}else if ([v isMemberOfClass:[[UIButton buttonWithType:UIButtonTypeRoundedRect] class]]){
		//NSLog(@"CurrentScene: %d; DefaultRole: %d; UI: RoundedRect", currentScene, defaultRole);
		
		
	}else if ([v isMemberOfClass:[UILabel class]] || [v isMemberOfClass:[UITextView class]]) {
		
		
		
		predicate = [self getPredicateWithScene:currentScene role:defaultRole];
		
		//array = (NSArray*)[self getContentWithEntity:kGlossaryTextOut sortKey:kGlossarySid predicate:predicate constraint:kSingleton];
		array = (NSArray*)[self getContentWithSortKey:kGlossarySid predicate:predicate constraint:kSingleton scene:currentScene role:defaultRole];
		
		if (!array) 
			return NO;
		//       [self getContentWithRecord:array scene:currentScene role:defaultRole];
		output = [self getContentWithRecord:array scene:currentScene role:defaultRole];
		//output = [[array objectAtIndex:0] valueForKey:kGlossaryContent];
		
		//Without Localized
		//[(UILabel*)v setText:[NSString stringWithFormat:@"%@", output]];
		//With Localized
		[(UILabel*)v setText:[NSString stringWithFormat:@"%@", NSLocalizedString(output, @"Localized")]];

		
		
			}else if ([v isMemberOfClass:[UIProgressView class]]) {
		predicate = [self getPredicateWithScene:currentScene role:defaultRole];
		
		//array = (NSArray*)[self getContentWithEntity:kGlossaryTextOut sortKey:kGlossarySid predicate:predicate constraint:kSingleton];
		array = (NSArray*)[self getContentWithSortKey:kGlossarySid predicate:predicate constraint:kSingleton scene:currentScene role:defaultRole];
		
		if (!array) 
			return NO;
		//       [self getContentWithRecord:array scene:currentScene role:defaultRole];
		output = [self getContentWithRecord:array scene:currentScene role:defaultRole];
		//output = [[array objectAtIndex:0] valueForKey:kGlossaryContent];
		//NSLog(@"[MLoad setViewWithTag: Controller]: ProgressView: %.1f", [output floatValue]);
		float f = [output floatValue] / pkDividend;
		//[(UIProgressView*)v setText:[NSString stringWithFormat:@"%@", output]];
		[(UIProgressView*)v setProgress:f];

	}else {
		NSLog(@"Scene: %d Role: %d tag: %d", currentScene, defaultRole, t);

		NSLog(@"[MLoad setViewWithTag: Controller]: error when retrieving database.");

	}

	[pool release];
	return YES;
		
}


@end
