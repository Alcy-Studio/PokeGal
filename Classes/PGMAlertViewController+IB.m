//
//  PGMAlertViewController+IB.m
//  PocketDraft
//
//  Created by westbugs on 10-08-24.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PGMAlertViewController+IB.h"
#import "Think.h"
#import "Think+Act.h"

#import "MSe.h" //Temp sound, remove once TouchDownAction is completed

//Constants
#import "ConstantsSceneCode.h"
#import "ConstantsEventCode.h"


@implementation PGMAlertViewController(IB)

- (IBAction) touchUpInside:(id)sender{
	
	
	//lock UI
	if (self.lock) {
		return;
	}
	[self screenLock];
	
	Think *think = [[Think alloc] initWithScene:kSceneCodePGMAlert tag:[sender tag] event: kEventCodeTouchUpInside resource: self];
	
	if (![think act])
		NSLog(@"[think act] failed");
	[think release];
	
	//Unlock UI
	[self screenUnlock];
	
	 //Test Modal
	//[self dismissModalViewControllerAnimated:YES];
	
}

- (IBAction) touchDownRepeat:(id)sender{}
- (IBAction) touchDown:(id)sender{[MSe tempPlaySound];}
- (IBAction) touchCancel:(id)sender{}

#pragma mark ScreenLocking
-(void)screenLock{self.lock = YES;}
-(void)screenUnlock{self.lock = NO;}
@end
