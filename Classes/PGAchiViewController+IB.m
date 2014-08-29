//
//  PGAchiViewController+IBAction.m
//  PocketDraft
//
//  Created by westbugs on 10-08-24.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PGAchiViewController+IB.h"
#import "ActPGAchiGKButtonTUpInside.h"

#import "Think.h"
#import "Think+Act.h"

#import "MSe.h" //Temp sound, remove once TouchDownAction is completed

#import "ActPGAchiTitleTUpInside.h"

//Constants
#import "ConstantsSceneCode.h"
#import "ConstantsEventCode.h"

#import "ConstantsPGAchi.h"


@implementation PGAchiViewController(IB)

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
	Think *think = [[Think alloc] initWithScene:kSceneCodePGAchi tag:[sender tag] event: kEventCodeTouchUpInside resource: self];
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
	
	if ([sender tag] == kAchiViewTitleButton) {
		action = [[ActPGAchiTitleTUpInside alloc] initWithRole:kAchiViewTitleButton];
	} else if ([sender tag] == kAchiGKButton) {
		action = [[ActPGAchiGKButtonTUpInside alloc] initWithRole:kAchiGKButton];
	} else {
		return;
	}
	
	[action setResource:self];
	[action setCombo];
	[action trigger];
	
	[action release];
	
	
}
#pragma mark ScreenLocking
-(void)screenLock{}
-(void)screenUnlock{}

@end
