//
//  PGWalkViewController+IB.m
//  PocketDraft
//
//  Created by westbugs on 10-08-24.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PGWalkViewController+IB.h"
//#import "ValidIn.h"
//#import "ValidIn+Touch.h"
#import "Think.h"
#import "Think+Act.h"
//#import "Interpreter.h"

#import "MSe.h" //Temp sound, remove once TouchDownAction is completed

//Constants
#import "ConstantsSceneCode.h"
#import "ConstantsEventCode.h"

//Testing Modal
//#import "PGMAlertViewController.h"

#import "ActPGWalkTitleTUpInside.h"
#import "ActPGWalkDayNightTUpInside.h"

#import "ConstantsPGWalk.h"

@implementation PGWalkViewController(IB)

- (IBAction) touchUpInside:(id)sender{
	
	//Test Modal 
	//[self presentModalVC];
	
	
	//lock UI
	if (self.lock) {
		return;
	}
	[self screenLock];
	
	//Set individual View Role
	
	//NSLog(@"User Defaults Test");
	//NSLog(@"%@",[[NSUserDefaults standardUserDefaults] objectForKey:@"DeleteBackup"]);
	
	Think *think = [[Think alloc] initWithScene:kSceneCodePGWalk tag:[sender tag] event: kEventCodeTouchUpInside resource: self];

	if (![think act])
		NSLog(@"[think act] failed");
	[think release];
	
	//Unlock UI
	[self screenUnlock];
	
}

- (IBAction) touchDownRepeat:(id)sender{}
- (IBAction) touchDown:(id)sender{[MSe tempPlaySound];}
- (IBAction) touchCancel:(id)sender{}

- (IBAction) PGTouchUpInside:(id)sender{
	
	
	
	id action;
	
	if ([sender tag] == kWalkViewTitleButton) {
		action = [[ActPGWalkTitleTUpInside alloc] initWithRole:kWalkViewTitleButton];
	} else if ([sender tag] == kWalkViewDayNightButton) {
		
		action = [[ActPGWalkDayNightTUpInside alloc] initWithRole:kWalkViewDayNightButton];
		
	} else {
		return;
	}
	
	[action setResource:self];
	[action setCombo];
	[action trigger];
	
	[action release];
	
	
}


#pragma mark ScreenLocking
-(void)screenLock{self.lock = YES;}
-(void)screenUnlock{self.lock = NO;}

/*
#pragma mark Testing
-(void)presentModalVC{
	NSLog(@"PGWalkViewController - presentModalVC");
	
	//Modal Test
	PGMAlertViewController* vc = [[PGMAlertViewController alloc]init];
	[vc setModalTransitionStyle:UIModalTransitionStylePartialCurl];
	//[vc setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
	//[vc setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
	//[vc setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
	
	
	//iPad Only
	//[vc setModalPresentationStyle:UIModalPresentationPageSheet];
	//[vc setModalPresentationStyle:UIModalPresentationCurrentContext];
	//[vc setModalPresentationStyle:UIModalPresentationFormSheet];
	//[vc setModalPresentationStyle:UIModalPresentationFullScreen];
	//[vc setModalPresentationStyle:UIModalPresentationCurrentContext];
	
	
	
	[vc setModalInPopover:YES];
	
	[self presentModalViewController:vc animated:YES];
	[vc release];
}
 */
@end
