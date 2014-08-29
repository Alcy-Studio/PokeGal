//
//  PGAchiViewController+Delegate.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "PGAchiViewController+Delegate.h"
#import "MUi.h"

@implementation PGAchiViewController(Delegate)

- (void)achievementViewControllerDidFinish:(GKAchievementViewController *)viewController{
	[MUi dismissModal];
}


@end
