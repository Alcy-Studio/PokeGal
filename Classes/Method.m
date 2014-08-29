//
//  Method.m
//  frdfrd
//
//  Created by westbugs on 10-10-08.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "Method.h"

//Additional
#import "PocketDraftAppDelegate.h"

	//Auditor
#import "Auditor.h"
#import "Auditor+Dictionary.h"

//Constants
#import "ConstantsMethodConstraint.h"
	//Auditor
#import "ConstantsAuditor.h"
	//Database Attributes
#import "ConstantsGlossaryDatabase.h"
	//User Default
#import "ConstantsAuditorUserDefaults.h"
	//Scene
#import "ConstantsSceneCode.h"

@implementation Method

@synthesize resource;

-(id)initWithResource:(id)r{
	self = [super init];
	if(!self)
		return self;
	//Implementation
	self.resource = r;
	return self;
}

#pragma mark Event
+(NSPredicate*)getPredicateWithAttrName:(NSString*)an value:(NSString*)av{
	NSString *attributeName1;
	
	NSString *format;
	NSPredicate *predicate;
	
	attributeName1 = an;
	
	
	
	format = @"%K contains[c] %@";
	predicate = [NSPredicate predicateWithFormat:format,
				 attributeName1, av];
	return predicate;

}

+(NSPredicate*)getPredicateWithOutAttrName:(NSString*)an value:(NSString*)av{
	NSString *attributeName1;
	
	NSString *format;
	NSPredicate *predicate;
	
	attributeName1 = an;
	
	
	
	format = @"Not %K contains[c] %@";
	predicate = [NSPredicate predicateWithFormat:format,
				 attributeName1, av];
	return predicate;
	
}

+(NSPredicate*)getPredicateWithAttrName1:(NSString*)an1 attrValue1:(NSString*)av1 attrName2:(NSString*)an2 attrValue2:(NSString*)av2{
	NSString *attributeName1;
	NSString *attributeName2;

	NSString *format;
	NSPredicate *predicate;
	
	attributeName1 = an1;
	attributeName2 = an2;

	
	
	format = @"%K contains[c] %@ && %K contains[c] %@";
	predicate = [NSPredicate predicateWithFormat:format,
				 attributeName1, av1,
				 attributeName2, av2];
	
	return predicate;
	
}

#pragma mark Standard 
+(NSPredicate*)getPredicateWithName:(NSString*)name{
	NSString *attributeName1;
	
	NSString *format;
	NSPredicate *predicate;
	
	attributeName1 = kGlossaryName;
	
	
	
	format = @"%K == %@";
	predicate = [NSPredicate predicateWithFormat:format,
				 attributeName1, name];
	return predicate;
	
}

+(NSPredicate*)getPredicateWithAttr1:(NSNumber*)attributeValue1 Attr2:(NSNumber*)attributeValue2 Attr3:(NSNumber*)attributeValue3 {
	NSString *attributeName1;
	NSString *attributeName2;
	NSString *attributeName3;
	
	NSString *format;
	NSPredicate *predicate;
	
	attributeName1 = kGlossaryScene;
	
	attributeName2 = kGlossaryInfo;
	
	attributeName3 = kGlossaryKind;
	
	format = @"%K == %@ && %K == %@ && %K == %@";
	predicate = [NSPredicate predicateWithFormat:format,
				 attributeName1, attributeValue1, 
				 attributeName2, attributeValue2,
				 attributeName3, attributeValue3];
	return predicate;
	
}

+(NSPredicate*)getPredicateWithAttrName1:(NSString*)an1 attrValue1:(NSString*)av1
							   AttrName2:(NSString*)an2 attrValue2:(NSString*)av2
							   AttrName3:(NSString*)an3 attrValue3:(NSString*)av3{
	NSString *attributeName1;
	NSString *attributeName2;
	NSString *attributeName3;
	
	NSString *format;
	NSPredicate *predicate;
	
	attributeName1 = an1;
	
	attributeName2 = an2;
	
	attributeName3 = an3;
	
	format = @"%K contains[c] %@ && %K contains[c] %@ && %K contains[c] %@";
	predicate = [NSPredicate predicateWithFormat:format,
				 attributeName1, av1, 
				 attributeName2, av2,
				 attributeName3, av3];
	return predicate;
	
}

#pragma mark setViewWithTag
+(id)getContentWithSortKey:(NSString*)k predicate:(NSPredicate*)p constraint:(NSUInteger)c scene:(NSUInteger)s role:(NSUInteger)r{
	Auditor *auditor = [[Auditor alloc]init];
	//NSLog(@"Scene: %d Role: %d", s, r);

	[auditor setDictionaryWithKey:kEntityGlossary target:s];
	NSDictionary *d = [[NSDictionary alloc] initWithDictionary:auditor.dictionary];
	[auditor release];
	//NSLog(@"%@", [d description]);

	NSString* e = [d valueForKey:[NSString stringWithFormat:@"%d",r]];
	//NSLog(@"Entity: %@", e);
	
	if (!e) {
		NSLog(@"%@", [d description]);
	}

	//NSLog(@"Role: %d", r);
	[d release];

	return [self getContentWithEntity:e sortKey:k predicate:p constraint:c];
	
}

+(id)getContentWithEntity:(NSString*)e sortKey:(NSString*)k predicate:(NSPredicate*)p constraint:(NSUInteger)s{
	
	//use entity to predict moc
	NSManagedObjectContext *moc = [(PocketDraftAppDelegate*)[[UIApplication sharedApplication] delegate]managedObjectContext];
	NSEntityDescription *entityDescription = [NSEntityDescription
											  entityForName:e inManagedObjectContext:moc];
	NSFetchRequest *request = [[[NSFetchRequest alloc] init] autorelease];
	[request setEntity:entityDescription];
	

	//NSString *attributeName = @"size";
	//NSString *attributeValue = @"2";
	//NSPredicate *predicate = [NSPredicate predicateWithFormat:@"%K like %@",
	//						  attributeName, attributeValue];
	NSPredicate *predicate = p;
	
	[request setPredicate:predicate];
	
	NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc]
										initWithKey:k ascending:YES];
	[request setSortDescriptors:[NSArray arrayWithObject:sortDescriptor]];
	//NSLog(@"Sort Descriptor");
	//NSLog(@"%@", sortDescriptor.key);
	//NSLog(@"Entity: %@", e);

	[sortDescriptor release];
	
	
	// Set example predicate and sort orderings...
	//	
	//	NSNumber *minimumSalary = ...;
	//	
	//	NSPredicate *predicate = [NSPredicate predicateWithFormat:
	//							  @"(lastName LIKE[c] 'Worsley') AND (salary > %@)", minimumSalary];
	//	[request setPredicate:predicate];
	
		//	
	//NSLog(@"%@", [request description]);

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
	//for(id element in array){
//				if (![element valueForKey:@"tag"]) {
//					NSLog(@"NOOOO");
//				}
//		NSLog(@"%@", [element valueForKey:@"sid"]);
//	}
	
	if (!array){ 
		NSLog(@"[Method getContentWithEntity] retrieve empty array");
		return nil;
	}
	
	switch (s) {
		//case kNil:
		case kSingleton:
			if ([array count] == 1) 
				//return [array lastObject];
				return array;

			break;
		case kMultiple:
			return array;
			break;
		default:
			break;
	}
	/*
	switch (s) {
		case 0:
			return array;
			break;
		case 1:
			if ([array count] == 1) 
				return [array lastObject];
			break;
		default:
			break;
	}
	*/
	//NSLog(@"%@", e);
	//NSLog(@"%@", [array description]);
	NSLog(@"[Method getContentWithEntity] not match constraint");
	return nil;
	
}
+(NSUInteger)getDefaultRoleWithScene:(NSUInteger)s tag:(NSUInteger)t{
	//NSLog(@"%d, %d", s, t);
	NSString* str = [[NSString alloc]initWithFormat:@"s%dt%d",s, t];
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	NSUInteger i = [defaults integerForKey:str];
	[str release];
	//NSLog(@"Default Role: %d", i);
	return i;
}
+(NSPredicate*)getPredicateWithScene:(NSUInteger)s role:(NSUInteger)r{
	Auditor *auditor = [[Auditor alloc]init];
	[auditor setDictionaryWithKey:kEntity target:s];
	NSDictionary *d = [[NSDictionary alloc] initWithDictionary:auditor.dictionary];
	[auditor release];
	NSUInteger e = [[d valueForKey:[NSString stringWithFormat:@"%d",r]]intValue];
	[d release];
	//NSLog(@"Entity: %d", e);
	//NSLog(@"Scene: %d", s);
	//NSLog(@"Role: %d", r);

	return [self getPredicateWithScene:s role:r entity:e];
}
+(NSPredicate*)getPredicateWithScene:(NSUInteger)s role:(NSUInteger)r entity:(NSUInteger)e{
	Auditor *auditor = [[Auditor alloc]init];
	[auditor setDictionaryWithKey:e target:s];
	NSDictionary *d1 = [[NSDictionary alloc] initWithDictionary:auditor.dictionary];
	[auditor release];
	
	//NSLog(@"%@",[d1 description]);

	NSDictionary *d2 = (NSDictionary*)[d1 valueForKey:[NSString stringWithFormat:@"%d", r]];

	if (!d2) {
		/*
		//NSLog(@"Show something: %d",r);
		NSLog(@"[Method getPredicateWithScene...] d2 is not existed.");
		NSLog(@"Scene: %d, Role: %d, Entity: %d",s, r, e);
		NSLog(@"Role: %d",r);
		
		NSLog(@"Entity: %d",e);
		NSLog(@"d1: %@",[d1 description]);
		NSLog(@"d2: %@",[d2 description]);
		*/
		[d1 release];
		return nil;
	}
	[d1 release];
	
	
	
	
	//NSLog(@"%@", [d2 description]);
	//[self test];
	return [self getPredicateWithRecord:d2 entity:e];
	
	/*
	//Set Predicate
	NSString *attributeName1 = kGlossaryScene;
	NSNumber *attributeValue1 = (NSNumber*)[d2 objectForKey:kGlossaryScene];
	
	NSString *attributeName2 = kGlossaryInfo;
	NSNumber *attributeValue2 = (NSNumber*)[d2 objectForKey:kGlossaryInfo];
	
	NSString *attributeName3 = kGlossaryKind;
	NSNumber *attributeValue3 = (NSNumber*)[d2 objectForKey:kGlossaryKind];
	
	NSString *format = @"%K == %@ && %K == %@ && %K == %@";
	NSPredicate *predicate = [NSPredicate predicateWithFormat:format,
							  attributeName1, attributeValue1, 
							  attributeName2, attributeValue2,
							  attributeName3, attributeValue3];
	*/
	/*
	NSArray* array = (NSArray*)[MUi getContentWithEntity:@"Ui" sortKey:@"sid" predicate:predicate constraint:kSingleton];
	for(id element in array){
		NSLog(@"%@", [element valueForKey:@"sid"]);
	}
	*/
	//return predicate;
}
/*
+(NSPredicate*)getPredicateForGirlWithScene:(NSUInteger)s role:(NSUInteger)r{
	Auditor *auditor = [[Auditor alloc]init];
	[auditor setDictionaryWithKey:kGirl target:s];
	NSDictionary *d1 = [[NSDictionary alloc] initWithDictionary:auditor.dictionary];
	[auditor release];
	
	//NSLog(@"%@",[d1 description]);
	
	NSDictionary *d2 = (NSDictionary*)[d1 valueForKey:[NSString stringWithFormat:@"%d", r]];
	[d1 release];
	
	if (!d2) {
		//NSLog(@"Show something: %d",r);
		return nil;
	}
	//NSLog(@"%@", [d2 description]);
	
	//Set Predicate
	NSString *attributeName1 = kGlossaryName;
	NSString *attributeValue1 = (NSString*)[d2 objectForKey:kGlossaryName];
	
	NSString *format = @"%K like %@";
	
	NSPredicate *predicate = [NSPredicate predicateWithFormat:format,
							  attributeName1, attributeValue1];
	
	
	 //NSArray* array = (NSArray*)[MUi getContentWithEntity:@"Ui" sortKey:@"sid" predicate:predicate constraint:kSingleton];
//	 for(id element in array){
//	 NSLog(@"%@", [element valueForKey:@"sid"]);
//	 }
	 
	return predicate;
}
*/
+(NSString*)getColumnWithScene:(NSUInteger)s role:(NSUInteger)r{
	switch (s) {
		case kSceneCodePGMain:
			switch (r) {
				//Action Point - should change sqlite...
				case kAudUDNumPGAttrSportAttrValue:
					;
					break;
				default:
					break;
			}
			break;
		case kSceneCodePGAchi:
			switch (r) {
				//Gift Amount
				case kAudUDNumPGAttrSportAttrValue:
					;
					break;
				default:
					break;
			}
			break;
		case kSceneCodePGAttr:
			switch (r) {
				case kAudUDNumPGAttrSportAttrValue:
					return kGlossarySportLv;
					break;
				case kAudUDNumPGAttrMovieAttrValue:
					return kGlossaryMovieLv;
					break;
				case kAudUDNumPGAttrMusicAttrValue:
					return kGlossaryMusicLv;
					break;
				
				default:
					break;
			}
			break;
		default:
			break;
	}
	NSLog(@"getColumnWithScene:role: Failed");
	return nil;

}
+(NSString*)checkEntityWithScene:(NSUInteger)s role:(NSUInteger)r{return nil;}

+(NSPredicate*)getPredicateWithRecord:(NSDictionary*)d entity:(NSUInteger)e{
	NSString *attributeName1;
	NSNumber *attributeValue1;
	
	NSString *attributeName2;
	NSNumber *attributeValue2;
	
	NSString *attributeName3;
	NSNumber *attributeValue3;
	
	NSString *format;
	NSPredicate *predicate;
	switch (e) {
		case kGirl:
			attributeName1 = kGlossaryName;
			attributeValue1 = (NSNumber*)[d objectForKey:kGlossaryName];
			//NSLog(@"attribute Value: %@", attributeValue1);
			format = @"%K == %@";
			predicate = [NSPredicate predicateWithFormat:format,
						 attributeName1, attributeValue1];
			//NSLog(@"Pred Value: %@", predicate);

			return predicate;
			
			break;
		case kRegion:
			attributeName1 = kGlossaryName;
			attributeValue1 = (NSNumber*)[d objectForKey:kGlossaryName];
			//NSLog(@"attribute Value: %@", attributeValue1);
			format = @"%K == %@";
			predicate = [NSPredicate predicateWithFormat:format,
						 attributeName1, attributeValue1];
			//NSLog(@"Pred Value: %@", predicate);
			
			return predicate;
			
			break;
		default:
			attributeName1 = kGlossaryScene;
			attributeValue1 = (NSNumber*)[d objectForKey:kGlossaryScene];
			
			attributeName2 = kGlossaryInfo;
			attributeValue2 = (NSNumber*)[d objectForKey:kGlossaryInfo];
			
			attributeName3 = kGlossaryKind;
			attributeValue3 = (NSNumber*)[d objectForKey:kGlossaryKind];
			
			format = @"%K == %@ && %K == %@ && %K == %@";
			predicate = [NSPredicate predicateWithFormat:format,
									  attributeName1, attributeValue1, 
									  attributeName2, attributeValue2,
									  attributeName3, attributeValue3];
			return predicate;
			break;
	}

}

+(NSString*)getContentWithRecord:(NSArray*)a scene:(NSUInteger)s role:(NSUInteger)r{
	Auditor *auditor = [[Auditor alloc]init];
	[auditor setDictionaryWithKey:kRecord target:s];
	NSDictionary *d = [[NSDictionary alloc] initWithDictionary:auditor.dictionary];
	[auditor release];
	//NSLog(@"Scene: %d; role %d", s, r);
	//NSLog(@"Dictionary: %@", [d description]);

	NSString* c = (NSString*)[d valueForKey:[NSString stringWithFormat:@"%d",r]];
	[d release];
	
	
	return [[a objectAtIndex:0] valueForKey:c];
}

@end
