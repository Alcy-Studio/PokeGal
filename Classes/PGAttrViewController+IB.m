//
//  PGAttrViewController+IB.m
//  PocketDraft
//
//  Created by westbugs on 10-08-24.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PGAttrViewController+IB.h"

//Additional
#import "ActPGAttrTitleTUpInside.h"
#import "ActPGAttrGKButtonTUpInside.h"

//#import "Setting+Application.h"

//#import "ConstantsPGAttr.h"

#import "Think.h"
#import "Think+Act.h"

#import "MSe.h" //Temp sound, remove once TouchDownAction is completed

//Constants
#import "ConstantsSceneCode.h"
#import "ConstantsEventCode.h"


#import "ConstantsPGAttr.h"


@implementation PGAttrViewController(IB)

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
	Think *think = [[Think alloc] initWithScene:kSceneCodePGAttr tag:[sender tag] event: kEventCodeTouchUpInside];
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
	
	if ([sender tag] == kAttrViewTitleButton) {
		action = [[ActPGAttrTitleTUpInside alloc] initWithRole:kAttrViewTitleButton];
	} else if ([sender tag] == kAttrGKButton) {
		action = [[ActPGAttrGKButtonTUpInside alloc] initWithRole:kAttrGKButton];

	}	else {
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
