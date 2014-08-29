//
//  PGMainViewController+Ad.h
//  frdfrd
//
//  Created by westbugs on 11-05-29.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "PGMainViewController.h"

#import <iAd/iAd.h>
@interface PGMainViewController(Ad) <ADBannerViewDelegate>
-(void)createADBannerView;
- (void)layoutForCurrentOrientation:(BOOL)animated;


@end
