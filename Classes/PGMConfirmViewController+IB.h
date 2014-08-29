//
//  PGMConfirmViewController+IB.h
//  PocketDraft
//
//  Created by westbugs on 10-08-24.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PGMConfirmViewController.h"
#import "ScreenLocking.h"

@interface PGMConfirmViewController(IB) <ScreenLocking>

- (IBAction) touchUpInside:(id)sender;
- (IBAction) touchDownRepeat:(id)sender;
- (IBAction) touchDown:(id)sender;
- (IBAction) touchCancel:(id)sender;

@end
