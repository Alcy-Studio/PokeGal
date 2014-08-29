//
//  PGAttrViewController+Delegate.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "PGAttrViewController+Delegate.h"
#import "MUi.h"

@implementation PGAttrViewController(Delegate)

- (void)leaderboardViewControllerDidFinish:(GKLeaderboardViewController *)viewController
{
//    [self dismissModalViewControllerAnimated:YES];
	[MUi dismissModal];

}

@end
