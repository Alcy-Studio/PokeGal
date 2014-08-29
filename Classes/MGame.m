//
//  MGame.m
//  frdfrd
//
//  Created by westbugs on 11-06-19.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "MGame.h"
#import <GameKit/GameKit.h>
#import "MUi.h"
#import "PGNavController.h"

@interface MGame()

+ (void) showLeaderboard:(id)r top:(id)t;

+ (void) showAchievements:(id)r top:(id)t;


@end

@implementation MGame

+ (void) reportScore: (int64_t) score forCategory: (NSString*) category
{
    GKScore *scoreReporter = [[[GKScore alloc] initWithCategory:category] autorelease];
    scoreReporter.value = score;
	
    [scoreReporter reportScoreWithCompletionHandler:^(NSError *error) {
		if (error != nil)
		{
            // handle the reporting error
        }
    }];
}


+ (void) resetAchievements
{
	// Clear all locally saved achievement objects.
    //achievementsDictionary = [[NSMutableDictionary alloc] init];
	// Clear all progress saved on Game Center
	[GKAchievement resetAchievementsWithCompletionHandler:^(NSError *error)
	 {
		 if (error != nil)
			 // handle errors
			 ;
			 }];
}

+(void) showLeaderboard:(id)r{
	
	
	if ([[MUi getCurrentController] modalViewController])
		return;
	
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	
	PGNavController *nc = (PGNavController*)[[[UIApplication sharedApplication] keyWindow] rootViewController];
	
	[self showLeaderboard:r top:[nc topViewController]];
	
	[pool release];
}

+ (void) showLeaderboard:(id)r top:(id)t
{
    GKLeaderboardViewController *leaderboardController = [[GKLeaderboardViewController alloc] init];
    if (leaderboardController != nil)
    {
        leaderboardController.leaderboardDelegate = r;
		//leaderboardController.category = @"PGLC001";
		[leaderboardController setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
        [t presentModalViewController: leaderboardController animated: YES];
    }
	[leaderboardController release];
}


+(void) showAchievements:(id)r{

		
		if ([[MUi getCurrentController] modalViewController])
			return;
		
		NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
		
		PGNavController *nc = (PGNavController*)[[[UIApplication sharedApplication] keyWindow] rootViewController];
		
		
		
		
		[self showAchievements:r top:[nc topViewController]];
		
		[pool release];
		

}

+ (void) showAchievements:(id)r top:(id)t
{
    GKAchievementViewController *achievements = [[GKAchievementViewController alloc] init];
    if (achievements != nil)
    {
        achievements.achievementDelegate = r;
		[achievements setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
        [t presentModalViewController: achievements animated: YES];
    }
    [achievements release];
}

+ (void) reportAchievementIdentifier: (NSString*) identifier percentComplete: (float) percent
{
    GKAchievement *achievement = [[[GKAchievement alloc] initWithIdentifier: identifier] autorelease];
    if (achievement)
    {
		achievement.percentComplete = percent;
		[achievement reportAchievementWithCompletionHandler:^(NSError *error)
		 {
			 if (error != nil)
			 {
				 // Retain the achievement object and try again later (not shown).
			 }
		 }];
    }
}


+ (void) authenticateLocalPlayer
{
    GKLocalPlayer *localPlayer = [GKLocalPlayer localPlayer];
    [localPlayer authenticateWithCompletionHandler:^(NSError *error) {
		if (localPlayer.isAuthenticated)
		{
			// Perform additional tasks for the authenticated player.
		}
	}];
}


BOOL isGameCenterAPIAvailable()
{
    // Check for presence of GKLocalPlayer class.
    BOOL localPlayerClassAvailable = (NSClassFromString(@"GKLocalPlayer")) != nil;
	
    // The device must be running iOS 4.1 or later.
    NSString *reqSysVer = @"4.1";
    NSString *currSysVer = [[UIDevice currentDevice] systemVersion];
    BOOL osVersionSupported = ([currSysVer compare:reqSysVer options:NSNumericSearch] != NSOrderedAscending);
	
    return (localPlayerClassAvailable && osVersionSupported);
}

-(void)dealloc{
	[super dealloc];
}

@end
