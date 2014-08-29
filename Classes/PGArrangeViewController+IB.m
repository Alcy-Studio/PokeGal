//
//  PGArrangeViewController+IB.m
//  PocketDraft
//
//  Created by westbugs on 10-08-24.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PGArrangeViewController+IB.h"
#import "Think.h"
#import "Think+Act.h"

#import "MSe.h" //Temp sound, remove once TouchDownAction is completed

//Constants
#import "ConstantsSceneCode.h"
#import "ConstantsEventCode.h"

#import "ActPGArrangeTitleTUpInside.h"
#import "ConstantsPGArrange.h"

@implementation PGArrangeViewController(IB)

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
	Think *think = [[Think alloc] initWithScene:kSceneCodePGArrange tag:[sender tag] event: kEventCodeTouchUpInside];
	if (![think act])
		NSLog(@"[think act] failed");
	[think release];
	
	//Unlock UI
	[self screenUnlock];
	
}

- (IBAction) touchDownRepeat:(id)sender{}
- (IBAction) touchDown:(id)sender{
	[MSe tempPlaySound];
	[timer invalidate];
}
- (IBAction) touchCancel:(id)sender{}

- (IBAction) PGTouchUpInside:(id)sender{
	
	
	
	id action;
	
	if ([sender tag] == kArrangeViewTitleButton) {
		action = [[ActPGArrangeTitleTUpInside alloc] initWithRole:kArrangeViewTitleButton];
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
