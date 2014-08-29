//
//  PGAttrViewController+Ad.h
//  frdfrd
//
//  Created by westbugs on 11-05-29.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "PGAttrViewController.h"

#import <iAd/iAd.h>
@interface PGAttrViewController(Ad) <ADBannerViewDelegate>
-(void)createADBannerView;
-(void)layoutForCurrentOrientation:(BOOL)animated;


@end
