//
//  PocketDraftAppDelegate.m
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "PocketDraftAppDelegate.h"

//Additional
#import "PGNavController.h"
#import "PGNullViewController.h"
#import "PGMainSVController.h"
#import "PGDateSVController.h"

#import "PGMainViewController.h"
#import "PGAttrViewController.h"
#import "PGAchiViewController.h"

//Method
#import "MEvent.h"
#import "MGame.h"

//Constants
#import "Constants.h"
#import "ConstantsAuditor.h"

//Test
#import "SimTest.h"
#import "PGTitleViewController.h"
#import "PGDateViewController.h"

#import "PGMapViewController.h"
#import "PGEventViewController.h"
#import "PGRomanceViewController.h"
#import "PGDetailViewController.h"

#import "PGArrangeViewController.h"
#import "PGPlaceViewController.h"
#import "PGScheduleViewController.h"
#import "PGTalkViewController.h"
#import "PGSMSViewController.h"

#import "PGTutorPageViewController.h"
#import "PGTutorSVController.h"
#import "PGTutorMenuViewController.h"

#import "PGWeatherViewController.h"
//Modal
#import "PGMConfirmViewController.h"
#import "PGMAlertViewController.h"
#import "PGMSelectionViewController.h"



@implementation PocketDraftAppDelegate

@synthesize window;
@synthesize mainViewController;
@synthesize adBanner;

#define TestNavScrollView 1

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
	
	//iAd
	adBanner = [[ADBannerView alloc] initWithFrame:CGRectZero];
	
	// Set the autoresizing mask so that the banner is pinned to the bottom
	self.adBanner.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleTopMargin;
	
	// Since we support all orientations, support portrait and landscape content sizes.
	// If you only supported landscape or portrait, you could remove the other from this set
	self.adBanner.requiredContentSizeIdentifiers = (&ADBannerContentSizeIdentifierPortrait != nil) ?
	[NSSet setWithObjects:ADBannerContentSizeIdentifierPortrait, ADBannerContentSizeIdentifierLandscape, nil] : 
	[NSSet setWithObjects:ADBannerContentSizeIdentifier320x50, ADBannerContentSizeIdentifier480x32, nil];
	
	
	//Game Center
	if (isGameCenterAPIAvailable()) {
		[MGame authenticateLocalPlayer];
	}
	
	
	//Launch with prefered language
	/*
	NSUserDefaults* defs = [NSUserDefaults standardUserDefaults];
	//Runtime Locale
	NSMutableArray* languages = [defs objectForKey:@"AppleLanguages"];
	//在缺省值中找到AppleLanguages, 返回值是一个数组
	
	NSString* preferredLang = [languages objectAtIndex:0];
	//在得到的数组中的第一个项就是用户的首选语言
	
	
	[defs setValue:preferredLang forKey:@"preferredLang"];

	[[NSUserDefaults standardUserDefaults] 
	 setObject:[NSArray arrayWithObjects:@"en", @"zh_hant", @"zh_hans", nil] forKey:@"AppleLanguages"];
	*/
	
	//[languages replaceObjectAtIndex:0 withObject:@"en"];	
	//[defs setValue:languages forKey:@"AppleLanguages"];
	
	//CFStringRef localeIdent = CFSTR("en");
//	CFLocaleRef localeRef = CFLocaleCreate(kCFAllocatorDefault, localeIdent);
	
	
	
	//Setup View Roles, load from sqlite

	//Pretend sqlite data has loaded into dictionary
	//Set dictionary to defaults
	/*
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSDictionary *appDefaults = [NSDictionary
								 dictionaryWithObject:@"YES" forKey:@"DeleteBackup"];
	
    [defaults registerDefaults:appDefaults];
	
	//NSLog(@"%f",[defaults floatForKey:@"seSlider"]);
	*/
	
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	NSBundle* b = [NSBundle mainBundle];

	[NSUserDefaults resetStandardUserDefaults];
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];

	//init Setting
	
	NSString* p1 = [b pathForResource:kAudInitSettingFileName ofType:kAudInitSettingFileType];
	NSDictionary *d1 = [NSDictionary dictionaryWithContentsOfFile:p1];
	
	
	NSArray *a1 = [NSArray arrayWithArray:[d1 allKeys]];
	for (NSString *e in a1) {
		[defaults registerDefaults:[d1 objectForKey:e]];		
	}
	
	//Init View Role
	//NSBundle* b = [NSBundle mainBundle];
	NSString* p2 = [b pathForResource:kAudInitViewRoleFileName ofType:kAudInitViewRoleFileType];
	NSDictionary *d2 = [NSDictionary dictionaryWithContentsOfFile:p2];
	//[NSUserDefaults resetStandardUserDefaults];
	//NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	//[defaults registerDefaults:d];
	
	NSArray *a2 = [NSArray arrayWithArray:[d2 allKeys]];
	 for (NSString *e in a2) {
	 [defaults registerDefaults:[d2 objectForKey:e]];		
	 }
	[pool release];
	
	//Test Music
	//SimTest* simTest = [[SimTest alloc]init];
//	[simTest testMusic];
	
	
	//NSLog(@"%d",[defaults retainCount]);
	//NSLog(@"%@",[defaults objectForKey:@"s1t3"]);

	//Test Init Value will change or not after sychonize saved
	//NSLog(@"%@",[[NSUserDefaults standardUserDefaults] stringForKey:@"s1t1"]);
	//[[NSUserDefaults standardUserDefaults] setObject:@"Change" forKey:@"s1t1"];

#if TestNavScrollView
	
	//PGNavController * nc = [[PGNavController alloc]initWithRootViewController:svController];
	PGNullViewController *nvc = [[PGNullViewController alloc]init];
	PGNavController * nc = [[PGNavController alloc]initWithRootViewController:nvc];
	[nvc release];
	
	switch (kInterfaceTest) {
		case 0:
		{
			//PGTitleViewController
			PGTitleViewController *svController = [[PGTitleViewController alloc]init];
			[nc pushViewController:svController animated:NO];
			//NavController *nc = [[NavController alloc]initWithRootViewController:svController];
			[svController release];
			break;
		}	
		case 1:
		{
			//PGMainSVController
			PGMainSVController *svController = [[PGMainSVController alloc]init];
			[nc pushViewController:svController animated:NO];
			//NavController *nc = [[NavController alloc]initWithRootViewController:svController];
			[svController release];
			break;
		}
		case 2:
		{
			//PGDateSVController
			PGDateSVController *svController = [[PGDateSVController alloc]init];
			[nc pushViewController:svController animated:NO];
			//NavController *nc = [[NavController alloc]initWithRootViewController:svController];
			[svController release];
			break;
		}
		default:
			break;
	}
	
	
	nc.navigationBarHidden = YES;
	
	[window setRootViewController:nc];
	
	//init with option
	
	[nc release];
	
	

#else
    // Override point for customization after application launch.
	switch (kInterfaceTest) {
		case 0:
		{
			PGMainViewController *tempPGMainViewController = [[PGMainViewController alloc] init];
			self.mainViewController = tempPGMainViewController;
			[tempPGMainViewController release];
			break;
		}
		case 1:
		{
			PGAttrViewController *tempPGAttrViewController = [[PGAttrViewController alloc] init];
			self.mainViewController = tempPGAttrViewController;
			[tempPGAttrViewController release];
			break;
		}
		case 2:
		{
			PGAchiViewController *tempPGAchiViewController = [[PGAchiViewController alloc] init];
			self.mainViewController = tempPGAchiViewController;
			[tempPGAchiViewController release];
			break;
		}
		case 3:
		{
			PGArrangeViewController *tempPGArrangeViewController = [[PGArrangeViewController alloc] init];
			self.mainViewController = tempPGArrangeViewController;
			[tempPGArrangeViewController release];
			break;
		}
		case 4:
		{
			PGTitleViewController *tempPGTitleViewController = [[PGTitleViewController alloc] init];
			self.mainViewController = tempPGTitleViewController;
			[tempPGTitleViewController release];
			break;
		}
		case 7:
		{
			PGDateViewController *tempPGDateViewController = [[PGDateViewController alloc] init];
			self.mainViewController = tempPGDateViewController;
			[tempPGDateViewController release];
			break;
		}
		case 8:
		{
			PGMapViewController *tempPGMapViewController = [[PGMapViewController alloc] init];
			self.mainViewController = tempPGMapViewController;
			[tempPGMapViewController release];
			break;
		}
		case 9:
		{
			PGEventViewController *tempPGEventViewController = [[PGEventViewController alloc] init];
			self.mainViewController = tempPGEventViewController;
			[tempPGEventViewController release];
			break;
		}
		case 10:
		{
			PGRomanceViewController *tempPGRomanceViewController = [[PGRomanceViewController alloc] init];
			self.mainViewController = tempPGRomanceViewController;
			[tempPGRomanceViewController release];
			break;
		}
		case 11:
		{
			PGDetailViewController *tempPGDetailViewController = [[PGDetailViewController alloc] init];
			self.mainViewController = tempPGDetailViewController;
			[tempPGDetailViewController release];
			break;
		}
		case 12:
		{
			PGArrangeViewController *tempPGArrangeViewController = [[PGArrangeViewController alloc] init];
			self.mainViewController = tempPGArrangeViewController;
			[tempPGArrangeViewController release];
			break;
		}
		case 13:
		{
			PGPlaceViewController *tempPGPlaceViewController = [[PGPlaceViewController alloc] init];
			self.mainViewController = tempPGPlaceViewController;
			[tempPGPlaceViewController release];
			break;
		}
		
		case 14:
		{
			PGScheduleViewController *tempPGScheduleViewController = [[PGScheduleViewController alloc] init];
			self.mainViewController = tempPGScheduleViewController;
			[tempPGScheduleViewController release];
			break;
		}
		
		case 15:
		{
			PGTalkViewController *tempPGTalkViewController = [[PGTalkViewController alloc] init];
			self.mainViewController = tempPGTalkViewController;
			[tempPGTalkViewController release];
			break;
		}
		case 16:
		{
			PGSMSViewController *tempPGSMSViewController = [[PGSMSViewController alloc] init];
			self.mainViewController = tempPGSMSViewController;
			[tempPGSMSViewController release];
			break;
		}
			
		case 18:
		{
			PGTutorPageViewController *tempPGTutorPageViewController = [[PGTutorPageViewController alloc] init];
			self.mainViewController = tempPGTutorPageViewController;
			[tempPGTutorPageViewController release];
			break;
		}
			
		case 19:
		{
			PGTutorSVController *tempPGTutorSVController = [[PGTutorSVController alloc] init];
			self.mainViewController = tempPGTutorSVController;
			[tempPGTutorSVController release];
			break;
		}
			
		case 20:
		{
			PGTutorMenuViewController *tempPGTutorMenuViewController = [[PGTutorMenuViewController alloc] init];
			self.mainViewController = tempPGTutorMenuViewController;
			[tempPGTutorMenuViewController release];
			break;
		}
		case 21:
		{
			PGWeatherViewController *tempPGWeatherViewController = [[PGWeatherViewController alloc] init];
			self.mainViewController = tempPGWeatherViewController;
			[tempPGWeatherViewController release];
			break;
		}
			
		case 31:
		{
			PGMConfirmViewController *tempPGMConfirmViewController = [[PGMConfirmViewController alloc] init];
			self.mainViewController = tempPGMConfirmViewController;
			[tempPGMConfirmViewController release];
			break;
		}
		case 32:
		{
			PGMAlertViewController *tempPGMAlertViewController = [[PGMAlertViewController alloc] init];
			self.mainViewController = tempPGMAlertViewController;
			[tempPGMAlertViewController release];
			break;
		}
		case 33:
		{
			PGMSelectionViewController *tempPGMSelectionViewController = [[PGMSelectionViewController alloc] init];
			self.mainViewController = tempPGMSelectionViewController;
			[tempPGMSelectionViewController release];
			break;
		}
		default:
			break;
	}
	
	//NSLog(@"%d",[self.mainViewController retainCount]);
	
	
	[window addSubview:[mainViewController view]];
		
		
#endif
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
	[self applicationWillTerminate:[UIApplication sharedApplication]];

}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
	
	//Save UserDefaults
	
	[[NSUserDefaults standardUserDefaults] synchronize];

	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	NSDictionary *d = [NSDictionary dictionaryWithDictionary:[defaults dictionaryRepresentation]];
	
	[NSUserDefaults resetStandardUserDefaults];
	[[NSUserDefaults standardUserDefaults] registerDefaults:d];
	
	//NSLog(@"%@",[defaults objectForKey:@"s9t1"]);
	//NSLog(@"%@",[d description]);

	NSString *p = [[NSBundle mainBundle] pathForResource:kAudViewRoleFileName ofType:kAudViewRoleFileType];
	NSLog(@"%@",p);

	[d writeToFile:p atomically:NO];
	[pool release];
	 
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


/**
 applicationWillTerminate: saves changes in the application's managed object context before the application terminates.
 */
- (void)applicationWillTerminate:(UIApplication *)application {
	[self removeData];
    [self saveMocAppDelegate];
}

- (void)removeData{
	[MEvent resetEvent];
}

-(void)saveMocAppDelegate{
	NSError *error = nil;
    if (managedObjectContext_ != nil) {
        if ([managedObjectContext_ hasChanges] && ![managedObjectContext_ save:&error]) {
            /*
             Replace this implementation with code to handle the error appropriately.
             
             abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development. If it is not possible to recover from the error, display an alert panel that instructs the user to quit the application by pressing the Home button.
             */
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            abort();
        } 
    }
}

#pragma mark -
#pragma mark Core Data stack

/**
 Returns the managed object context for the application.
 If the context doesn't already exist, it is created and bound to the persistent store coordinator for the application.
 */
- (NSManagedObjectContext *)managedObjectContext {
    
    if (managedObjectContext_ != nil) {
        return managedObjectContext_;
    }
    
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (coordinator != nil) {
        managedObjectContext_ = [[NSManagedObjectContext alloc] init];
        [managedObjectContext_ setPersistentStoreCoordinator:coordinator];
    }
    return managedObjectContext_;
}


/**
 Returns the managed object model for the application.
 If the model doesn't already exist, it is created from the application's model.
 */
- (NSManagedObjectModel *)managedObjectModel {
    
    if (managedObjectModel_ != nil) {
        return managedObjectModel_;
    }
    NSString *modelPath = [[NSBundle mainBundle] pathForResource:@"PocketDraft" ofType:@"momd"];
    NSURL *modelURL = [NSURL fileURLWithPath:modelPath];
    managedObjectModel_ = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];    
    return managedObjectModel_;
}


- (void)setPersistentStoreCoordinator {
	//1. remove storeURL file
	//2. paste storeURLBackup file to storeURL
	//3. clear & release psc
	//4. clear & release moc
	//5. paste new psc to moc
	
	NSError *error = nil;

	if (persistentStoreCoordinator_ == nil) {
		NSLog(@"Reset nil PersistentStoreCoordinator_");
		return;
    }
	for (unsigned int i = 0; i < [[persistentStoreCoordinator_ persistentStores] count]; i++) {
		[persistentStoreCoordinator_ removePersistentStore:[[persistentStoreCoordinator_ persistentStores]objectAtIndex:i] error:&error];

	}
	
	[persistentStoreCoordinator_ release];
	
    persistentStoreCoordinator_ = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];

	NSDictionary *options = [NSDictionary dictionaryWithObjectsAndKeys:
							 [NSNumber numberWithBool:YES], NSMigratePersistentStoresAutomaticallyOption,
							 [NSNumber numberWithBool:YES], NSInferMappingModelAutomaticallyOption, nil];
	
	
	
	
	NSURL *storeURL = [NSURL fileURLWithPath: [[self applicationDocumentsDirectory] stringByAppendingPathComponent: @"PocketDraft.sqlite"]];
	//NSLog(@"%@", storeURL);	
		
	NSFileManager* fm = [[NSFileManager alloc] init];
	
	//Store exist
	NSURL *storeURLBackup = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"PocketDraft" ofType:@"sqlite"]];
	
	if(![fm removeItemAtURL:storeURL error:&error]){
		[fm release];
		NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
		abort();
	}
	
	if (![fm copyItemAtURL:storeURLBackup toURL:storeURL error:&error]) {
		[fm release];
		NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
		abort();
	}
	[fm release];
	
	
	
	if (![persistentStoreCoordinator_ addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:options error:&error]){
		NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
	}
	
	[managedObjectContext_ release];
	managedObjectContext_ = [[NSManagedObjectContext alloc] init];
	[managedObjectContext_ setPersistentStoreCoordinator:persistentStoreCoordinator_];
}	

/**
 Returns the persistent store coordinator for the application.
 If the coordinator doesn't already exist, it is created and the application's store added to it.
 */
- (NSPersistentStoreCoordinator *)persistentStoreCoordinator {
    
    if (persistentStoreCoordinator_ != nil) {
        return persistentStoreCoordinator_;
    }
    // -> Check if sqlite exist, (update storage problem solved)
	/*
	if exist
	 use exist one from documents directory
	else
	 use default one from nsbundle
	 */
	
    NSURL *storeURL = [NSURL fileURLWithPath: [[self applicationDocumentsDirectory] stringByAppendingPathComponent: @"PocketDraft.sqlite"]];
	//NSLog(@"%@", storeURL);	
	
    NSError *error = nil;
	[persistentStoreCoordinator_ autorelease];
    persistentStoreCoordinator_ = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
	
	NSFileManager* fm = [[NSFileManager alloc] init];
	
	//Store Exists
	if ([fm fileExistsAtPath:[storeURL path]]) {
		[fm release];
		NSDictionary *options = [NSDictionary dictionaryWithObjectsAndKeys:
								 [NSNumber numberWithBool:YES], NSMigratePersistentStoresAutomaticallyOption,
								 [NSNumber numberWithBool:YES], NSInferMappingModelAutomaticallyOption, nil];
		if (![persistentStoreCoordinator_ addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:options error:&error]) {
			NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
			abort();
		}    
		
		return persistentStoreCoordinator_;
	}
    
	//Store not exist
	NSURL *storeURLBackup = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"PocketDraft" ofType:@"sqlite"]];
	if (![fm copyItemAtURL:storeURLBackup toURL:storeURL error:&error]) {
		[fm release];
		NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
		abort();
	}
	[fm release];
	
	NSDictionary *options = [NSDictionary dictionaryWithObjectsAndKeys:
							 [NSNumber numberWithBool:YES], NSMigratePersistentStoresAutomaticallyOption,
							 [NSNumber numberWithBool:YES], NSInferMappingModelAutomaticallyOption, nil];
	if (![persistentStoreCoordinator_ addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:options error:&error]) {
        /*
         Replace this implementation with code to handle the error appropriately.
         
         abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development. If it is not possible to recover from the error, display an alert panel that instructs the user to quit the application by pressing the Home button.
         
         Typical reasons for an error here include:
         * The persistent store is not accessible;
         * The schema for the persistent store is incompatible with current managed object model.
         Check the error message to determine what the actual problem was.
         
         
         If the persistent store is not accessible, there is typically something wrong with the file path. Often, a file URL is pointing into the application's resources directory instead of a writeable directory.
         
         If you encounter schema incompatibility errors during development, you can reduce their frequency by:
         * Simply deleting the existing store:
         [[NSFileManager defaultManager] removeItemAtURL:storeURL error:nil]
         
         * Performing automatic lightweight migration by passing the following dictionary as the options parameter: 
         [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithBool:YES],NSMigratePersistentStoresAutomaticallyOption, [NSNumber numberWithBool:YES], NSInferMappingModelAutomaticallyOption, nil];
         
         Lightweight migration will only work for a limited set of schema changes; consult "Core Data Model Versioning and Data Migration Programming Guide" for details.
         
         */
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }    
    
    return persistentStoreCoordinator_;
	
}
#pragma mark -
#pragma mark Notification
- (void)application:(UIApplication *)app didReceiveLocalNotification:(UILocalNotification *)notif {
    // Handle thes notificaton when the app is running
    NSLog(@"Received Notification %@",notif);
	
	//Miss too many dating, very angry
//	if ([UIApplication sharedApplication].applicationIconBadgeNumber > 0)
//		[UIApplication sharedApplication].applicationIconBadgeNumber -= 1;
}

#pragma mark -
#pragma mark Application's Documents directory

/**
 Returns the path to the application's Documents directory.
 */
- (NSString *)applicationDocumentsDirectory {
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
	[adBanner release];

    [managedObjectContext_ release];
    [managedObjectModel_ release];
    [persistentStoreCoordinator_ release];
    
    [window release];
    [super dealloc];
}


@end

