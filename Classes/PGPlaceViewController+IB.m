//
//  PGPlaceViewController+IB.m
//  PocketDraft
//
//  Created by westbugs on 10-08-24.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PGPlaceViewController+IB.h"
#import "Think.h"
#import "Think+Act.h"

#import "MSe.h" //Temp sound, remove once TouchDownAction is completed

//Constants
#import "ConstantsSceneCode.h"
#import "ConstantsEventCode.h"

#import "ActPGPlaceTitleTUpInside.h"
#import "ConstantsPGPlace.h"

@implementation PGPlaceViewController(IB)

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
	Think *think = [[Think alloc] initWithScene:kSceneCodePGPlace tag:[sender tag] event: kEventCodeTouchUpInside];
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
	
	if ([sender tag] == kPlaceViewTitleButton) {
		action = [[ActPGPlaceTitleTUpInside alloc] initWithRole:kPlaceViewTitleButton];
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
@end
