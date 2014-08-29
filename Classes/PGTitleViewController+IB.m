//
//  PGTitleViewController+IB.m
//  PocketDraft
//
//  Created by westbugs on 10-08-24.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PGTitleViewController+IB.h"

#import "ActPGTitleBottomButtonTUpInside.h"
#import "ActPGTitleHeartButtonTUpInside.h"

#import "Think.h"
#import "Think+Act.h"

#import "MSe.h" //Temp sound, remove once TouchDownAction is completed

//Constants
#import "ConstantsSceneCode.h"
#import "ConstantsEventCode.h"
#import "ConstantsPGTitle.h"

@implementation PGTitleViewController(IB)

- (IBAction) touchUpInside:(id)sender{
	
	//lock UI
	if (self.lock) {
		return;
	}
	[self screenLock];
	
	//Set individual View Role
	/*
	 NSLog(@"User Defaults Test");
	 NSLog(@"%@",[[NSUserDefaults standardUserDefaults] objectForKey:@"DeleteBackup"]);
	 */
	Think *think = [[Think alloc] initWithScene:kSceneCodePGTitle tag:[sender tag] event: kEventCodeTouchUpInside];
	if (![think act])
		NSLog(@"[think act] failed");
	[think release];
	
	//Unlock UI
	[self screenUnlock];
	
}

- (IBAction) touchDownRepeat:(id)sender{}
- (IBAction) touchDown:(id)sender{[MSe tempPlaySound];}
- (IBAction) touchCancel:(id)sender{}

#pragma mark ScreenLocking
-(void)screenLock{self.lock = YES;}
-(void)screenUnlock{self.lock = NO;}

- (IBAction) PGTouchUpInside:(id)sender{
	
	
	
	id action;
	
	if ([sender tag] == kTitleBottomButton) {
		action = [[ActPGTitleBottomButtonTUpInside alloc] initWithRole:kTitleBottomButton];
	} else if ([sender tag] == kTitleHeartButton) {
		action = [[ActPGTitleHeartButtonTUpInside alloc] initWithRole:kTitleHeartButton];
	} else {
		return;
	}
	
	
	[action setResource:self];
	[action setCombo];
	[action trigger];
	
	[action release];
	
	
}
@end
