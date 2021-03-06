//
//  PGMainViewController+IB.m
//  PocketDraft
//
//  Created by westbugs on 10-08-24.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PGMainViewController+IB.h"
//#import "ValidIn.h"
//#import "ValidIn+Touch.h"
#import "Think.h"
#import "Think+Act.h"
//#import "Interpreter.h"

#import "MSystem.h" //Method
#import "MSe.h" //Temp sound, remove once TouchDownAction is completed

#import "ActPGMainTitleTUpInside.h"
#import "ActPGMainDayNightTUpInside.h"

//Constants
#import "ConstantsSceneCode.h"
#import "ConstantsEventCode.h"

#import "ConstantsPGMain.h"

//Testing Modal
#import "PGMAlertViewController.h"


@implementation PGMainViewController(IB)

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
	
	Think *think = [[Think alloc] initWithScene:kSceneCodePGMain tag:[sender tag] event: kEventCodeTouchUpInside];
	if (![think act])
		NSLog(@"[think act] failed");
	[think release];
	
	//Unlock UI
	[self screenUnlock];


	//enable all other buttons
}

- (IBAction) touchDownRepeat:(id)sender{}
- (IBAction) touchDown:(id)sender{
	//NSLog(@"Tag: %i", [sender tag]);
	//[MSystem PGMainDisableButtonsExcept:sender];
	//disable all other buttons
	//self.view.userInteractionEnabled = NO;
	
	//if ([sender isFirstResponder]){
//		NSLog(@"First Responder");
//	} else {
//		NSLog(@"Next Responder");
//
//	}
	
	
	[MSe tempPlaySound];

	
}
- (IBAction) touchCancel:(id)sender{}

#pragma mark ScreenLocking
-(void)screenLock{self.lock = YES;}
-(void)screenUnlock{self.lock = NO;}

#pragma mark Testing
-(void)presentModalVC{
	NSLog(@"PGMainViewController - presentModalVC");

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

- (IBAction) PGTouchUpInside:(id)sender{
	
	
	
	id action;
	
	if ([sender tag] == kMainViewTitleButton) {
		action = [[ActPGMainTitleTUpInside alloc] initWithRole:kMainViewTitleButton];
	} else if ([sender tag] == kMainViewDayNightButton) {
		
		action = [[ActPGMainDayNightTUpInside alloc] initWithRole:kMainViewDayNightButton];
		
	} else {
		return;
	}
	
	
	[action setResource:self];
	[action setCombo];
	[action trigger];
	
	[action release];
	
	
}
@end
