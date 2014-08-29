//
//  PGTitleViewController+Delegate.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "PGTitleViewController+Delegate.h"


@implementation PGTitleViewController(Delegate)

- (void)achievementViewControllerDidFinish:(GKAchievementViewController *)viewController{
	[self dismissModalViewControllerAnimated:YES];
	
	
}


@end
