//
//  ActPGAchiGKButtonTUpInside+Selector.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGAchiGKButtonTUpInside+Selector.h"
#import "PGAchiViewController.h"

//-(void)switchViewToPGScheduleWithTFlipFromR
#import "MUi.h"
#import "MGame.h"
#import <GameKit/GameKit.h>

#import "PGScheduleViewController.h"

#import "ConstantsTmpAction.h"
#import "ConstantsPGAchi.h"


@implementation ActPGAchiGKButtonTUpInside(Selector)

/*
 -(void)directToRating{
 //Full Version
 [[UIApplication sharedApplication] 
 openURL:[NSURL URLWithString: NSLocalizedString(kTitleViewLinkToFull, @"Localized")]];
 
 
 
 }
 */

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0)
    {
        //cancel clicked ...do your action
    }
    else if (buttonIndex == 1)
    {
        //reset clicked
    }
}

-(void)presentModalGameCenter{
	//[MUi presentModal:@"PGMConfirmViewController" transition:UIModalTransitionStylePartialCurl animated:YES];
	NSLog(@"Heart Button");
	if ([[GKLocalPlayer localPlayer] isAuthenticated]) {
		[MGame showAchievements:self.resource];
		return;
	}
	//pop up game center login
	if (isGameCenterAPIAvailable()) {
		//NSLog(@"Available");
		//[MGame authenticateLocalPlayer];
		
		
		
		UIAlertView* av = [[[UIAlertView alloc] 
							initWithTitle:NSLocalizedString(@"GKTitle", @"localized")
							message:NSLocalizedString(@"GkMsg", @"localized")
							delegate:nil 
							cancelButtonTitle:NSLocalizedString(@"Cancel", @"localized")
							otherButtonTitles:nil] autorelease];
		//[av addButtonWithTitle:NSLocalizedString(@"Sign In", @"localized")];
		[av show];	
		//av.delegate = self.resource;
		
		//[(PGTitleViewController*)self.resource setAv:av];
		
		//[[(PGTitleViewController*)self.resource av] show];		
		
		return;
	}
	
	//NSLog(@"Not Available");
	
	
	UIAlertView* av = [[[UIAlertView alloc] 
						initWithTitle:NSLocalizedString(@"GKNotTitle", @"localized")
						message:NSLocalizedString(@"GKNotMsg", @"localized")
						delegate:nil 
						cancelButtonTitle:NSLocalizedString(@"Cancel", @"localized")
						otherButtonTitles:nil] autorelease];
	//[av addButtonWithTitle:NSLocalizedString(@"ActPGMainCallAlertView1_Ok", @"localized")];
	[av show];	
}
//
//-(void)setTmpAction{
//	[MUi modifyUserDefaultWithKey:kTmpAction value:kTmpActionPGAchiGKButton];
//	
//}
//
//-(void)setRoleForConfirm{
//	[MUi modifyTag:kConfirmTitleLabel role:kAudUDNumPGMConfirmTitle7 scene:kSceneCodePGMConfirm];
//	[MUi modifyTag:kConfirmTextView role:kAudUDNumPGMConfirmTextView7 scene:kSceneCodePGMConfirm];
//	
//}

@end
