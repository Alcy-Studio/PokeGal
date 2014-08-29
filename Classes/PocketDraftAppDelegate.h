//
//  PocketDraftAppDelegate.h
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import <iAd/iAd.h>

#define SharedAdBannerView ((PocketDraftAppDelegate *)[[UIApplication sharedApplication] delegate]).adBanner

@interface PocketDraftAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
	UIViewController *mainViewController;
	ADBannerView *adBanner;

@private
    NSManagedObjectContext *managedObjectContext_;
    NSManagedObjectModel *managedObjectModel_;
    NSPersistentStoreCoordinator *persistentStoreCoordinator_;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) UIViewController *mainViewController;

@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property (nonatomic, retain) ADBannerView *adBanner;

-(NSString *)applicationDocumentsDirectory;
-(void)saveMocAppDelegate;
- (void)removeData;

- (void)setPersistentStoreCoordinator;

@end

