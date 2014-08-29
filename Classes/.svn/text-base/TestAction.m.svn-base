//
//  TestAction.m
//  frdfrd
//
//  Created by westbugs on 10-10-08.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "TestAction.h"

//Additional
/* checkDatabase */
#import "PocketDraftAppDelegate.h"

/* testPredicate */
#import "MUi.h"
//Constants
#import "ConstantsMethodConstraint.h"

/* testViewController */
#import "PGNavController.h"

#import "PGMainSVController.h"
#import "PGMainViewController.h"
@implementation TestAction

//Sample

-(void)switchView:(NSString*)s transition:(UIViewAnimationTransition)t{
	//popAndpushViewControllerWithFlip
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration: 1];
	
	//UIViewAnimationTransitionFlipFromRight
	PGNavController *nc = (PGNavController*)[[[UIApplication sharedApplication] keyWindow] rootViewController];
	//[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:[nc view] cache:YES];
	
	[UIView setAnimationTransition:t forView:[nc view] cache:YES];
	
	[nc popViewControllerAnimated:NO];
	
	Class class = [[NSBundle mainBundle] classNamed:s];	
	id instance = [[class alloc]init];
	
	if (![instance isKindOfClass:class]){
		[instance release];
		return;
	}
	
	[nc pushViewController:instance animated:NO];
	[instance release];
	
	
	//[myAppDelegate navigationController] pushViewController:myViewController animated:NO;
	[UIView commitAnimations];
	[pool release];
	
	//Sample Switch View
	/*
	 //popAndpushViewControllerWithFlip
	 NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	 [UIView beginAnimations:nil context:NULL];
	 [UIView setAnimationDuration: 1];
	 
	 //UIViewAnimationTransitionFlipFromRight
	 PGNavController *nc = (PGNavController*)[[[UIApplication sharedApplication] keyWindow] rootViewController];
	 [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:[nc view] cache:YES];
	 
	 [nc popViewControllerAnimated:NO];
	 
	 PGMainViewController *vc = [[PGMainViewController alloc]init];
	 [nc pushViewController:vc animated:NO];
	 [vc release];
	 
	 
	 //[myAppDelegate navigationController] pushViewController:myViewController animated:NO;
	 [UIView commitAnimations];
	 [pool release];
	 */
	
	
}


-(void)checkDatabase{
	
	
	NSManagedObjectContext *moc = [(PocketDraftAppDelegate*)[[UIApplication sharedApplication] delegate]managedObjectContext];
	NSEntityDescription *entityDescription = [NSEntityDescription
											  entityForName:@"Ui" inManagedObjectContext:moc];
	NSFetchRequest *request = [[[NSFetchRequest alloc] init] autorelease];
	[request setEntity:entityDescription];
	
	NSString *attributeName1 = @"size";
	NSNumber *attributeValue1 = [NSNumber numberWithInteger:2];
	
	NSString *attributeName2 = @"tag";
	NSNumber *attributeValue2 = [NSNumber numberWithInteger:2];
	
	NSString *attributeName3 = @"scene";
	NSNumber *attributeValue3 = [NSNumber numberWithInteger:4];
	
	NSString *format = @"%K == %@ && %K == %@ && %K == %@";
	//NSString *attributeName = @"size";
	//NSString *attributeValue = @"2";
	//NSPredicate *predicate = [NSPredicate predicateWithFormat:@"%K like %@",
	//						  attributeName, attributeValue];
	NSPredicate *predicate = [NSPredicate predicateWithFormat:format,
							  attributeName1, attributeValue1, 
							  attributeName2, attributeValue2,
							  attributeName3, attributeValue3];
	
	[request setPredicate:predicate];
	
	NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc]
										initWithKey:@"sid" ascending:YES];
	[request setSortDescriptors:[NSArray arrayWithObject:sortDescriptor]];
	//NSLog(@"Sort Descriptor");
	//NSLog(@"%@", sortDescriptor.key);
	[sortDescriptor release];
	
	
	// Set example predicate and sort orderings...
	//	
	//	NSNumber *minimumSalary = ...;
	//	
	//	NSPredicate *predicate = [NSPredicate predicateWithFormat:
	//							  @"(lastName LIKE[c] 'Worsley') AND (salary > %@)", minimumSalary];
	//	[request setPredicate:predicate];
	
	//	
	NSError *error;
	NSArray *array = [moc executeFetchRequest:request error:&error];
	if (array == nil)
	{
		// Deal with error...
	}
	//Test
	//NSLog(@"%d", [array count]);
	for(id element in array){
		//		if (![element valueForKey:@"tag"]) {
		//			NSLog(@"NOOOO");
		//		}
		NSLog(@"%@", [element valueForKey:@"sid"]);
	}
	
	
}

-(void)testPredicate{
	//case 1
	/*
	NSString *attributeName = @"size";
	NSString *attributeValue = @"2";
	NSPredicate *predicate = [NSPredicate predicateWithFormat:@"%K like %@",
							  attributeName, attributeValue];
	 
	 NSArray* array = (NSArray*)[MUi getContentWithEntity:@"Ui" sortKey:@"sid" predicate:predicate constraint:kMultiple];
	 for(id element in array){
		NSLog(@"%@", [element valueForKey:@"sid"]);
	 } 
	*/
	//----------------------------------
	//case 2
	NSString *attributeName1 = @"size";
	NSNumber *attributeValue1 = [NSNumber numberWithInteger:2];
	
	NSString *attributeName2 = @"tag";
	NSNumber *attributeValue2 = [NSNumber numberWithInteger:2];
	
	NSString *attributeName3 = @"scene";
	NSNumber *attributeValue3 = [NSNumber numberWithInteger:4];
	
	NSString *format = @"%K == %@ && %K == %@ && %K == %@";
	NSPredicate *predicate = [NSPredicate predicateWithFormat:format,
							  attributeName1, attributeValue1, 
							  attributeName2, attributeValue2,
							  attributeName3, attributeValue3];
	

	NSArray* array = (NSArray*)[MUi getContentWithEntity:@"Ui" sortKey:@"sid" predicate:predicate constraint:kSingleton];
	for(id element in array){
		NSLog(@"%@", [element valueForKey:@"sid"]);
	}
	//----------------------------------

}

-(void)testViewController{
	
	//or scrollView.frame.origin.x
	PGNavController *nc = (PGNavController*)[[[UIApplication sharedApplication] keyWindow] rootViewController];
	[[[(PGMainSVController*)[nc visibleViewController] viewControllers] objectAtIndex:1] setTitle:@"Test"];
	NSLog(@"%d",[[[(PGMainSVController*)[nc visibleViewController] viewControllers] objectAtIndex:1] isKindOfClass:[PGMainViewController class]]);
	NSLog(@"%@",[[[(PGMainSVController*)[nc visibleViewController] viewControllers] objectAtIndex:1] title]);
	

}

@end
