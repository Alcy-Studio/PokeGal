//
//  PGWeatherViewController+IB.m
//  PocketDraft
//
//  Created by westbugs on 10-08-24.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PGWeatherViewController+IB.h"
#import "Think.h"
#import "Think+Act.h"

#import "MSe.h" //Temp sound, remove once TouchDownAction is completed

//Constants
#import "ConstantsSceneCode.h"
#import "ConstantsEventCode.h"

#import "ActPGWeatherTitleTUpInside.h"
#import "ActPGWeatherBackTUpInside.h"

#import "ConstantsPGWeather.h"
#import "ConstantsAuditorUserDefaults.h"

@implementation PGWeatherViewController(IB)

- (IBAction) touchUpInside:(id)sender{}

- (IBAction) touchDownRepeat:(id)sender{}
- (IBAction) touchDown:(id)sender{[MSe tempPlaySound];}
- (IBAction) touchCancel:(id)sender{}

- (IBAction) PGTouchUpInside:(id)sender{
	
	id action;
	
	if ([sender tag] == kWeatherViewTitleButton) {
		action = [[ActPGWeatherTitleTUpInside alloc] initWithRole:kWeatherViewTitleButton];
		
	} else if ([sender tag] == kWeatherViewBackButton) {
		action = [[ActPGWeatherBackTUpInside alloc] initWithRole:kAudUDNumPGWeatherBack];

	} else {
		return;
	}
	
	[action setResource:self];
	[action setCombo];
	[action trigger];
	
	[action release];
	
}
#pragma mark ScreenLocking
//-(void)screenLock{self.lock = YES;}
//-(void)screenUnlock{self.lock = NO;}
@end
