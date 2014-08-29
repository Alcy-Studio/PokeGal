//
//  PGMapViewController+Ad.h
//  frdfrd
//
//  Created by westbugs on 11-05-29.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "PGMapViewController.h"

#import <iAd/iAd.h>
@interface PGMapViewController(Ad) <ADBannerViewDelegate>
-(void)createADBannerView;
-(void)layoutForCurrentOrientation:(BOOL)animated;


@end
