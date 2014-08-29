//
//  MGame.h
//  frdfrd
//
//  Created by westbugs on 11-06-19.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "Method.h"

@interface MGame : Method {
}

+ (void) reportScore: (int64_t) score forCategory: (NSString*) category;

+ (void) resetAchievements;

+(void) showLeaderboard:(id)r;

+(void) showAchievements:(id)r;


+(void)reportAchievementIdentifier: (NSString*) identifier percentComplete: (float) percent;

+(void)authenticateLocalPlayer;

BOOL isGameCenterAPIAvailable();

@end
