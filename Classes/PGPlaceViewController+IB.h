//
//  PGPlaceViewController+IB.h
//  PocketDraft
//
//  Created by westbugs on 10-08-24.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PGPlaceViewController.h"
#import "ScreenLocking.h"

@interface PGPlaceViewController(IB) <ScreenLocking>

- (IBAction) touchUpInside:(id)sender;
- (IBAction) touchDownRepeat:(id)sender;
- (IBAction) touchDown:(id)sender;
- (IBAction) touchCancel:(id)sender;

- (IBAction) PGTouchUpInside:(id)sender;

@end
