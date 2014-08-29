//
//  PGDateViewController+IB.h
//  PocketDraft
//
//  Created by westbugs on 10-08-24.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PGDateViewController.h"
#import "ScreenLocking.h"

@interface PGDateViewController(IB) <ScreenLocking>

- (IBAction) touchUpInside:(id)sender;
- (IBAction) touchDownRepeat:(id)sender;
- (IBAction) touchDown:(id)sender;
- (IBAction) touchCancel:(id)sender;

- (IBAction) PGTouchUpInside:(id)sender;

@end
