//
//  PGMainViewController.h
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

//@class ADBannerView;

@interface PGMainViewController : UIViewController {
	id          view1, view2, view3, view4, view5, view6,
	view7, view8, view9, view10, view11, view12,
	view13; 
	Boolean lock;
	NSTimer* timer;
	//	NSRunLoop* runloop;
	//unsigned int pageNumber;
	
	UIView* contentView;
	//ADBannerView *banner;
}
#pragma mark IBOutlet
@property (nonatomic, retain) IBOutlet id view1;
@property (nonatomic, retain) IBOutlet id view2;
@property (nonatomic, retain) IBOutlet id view3;
@property (nonatomic, retain) IBOutlet id view4;
@property (nonatomic, retain) IBOutlet id view5;
@property (nonatomic, retain) IBOutlet id view6;

@property (nonatomic, retain) IBOutlet id view7;
@property (nonatomic, retain) IBOutlet id view8;
@property (nonatomic, retain) IBOutlet id view9;
@property (nonatomic, retain) IBOutlet id view10;
@property (nonatomic, retain) IBOutlet id view11;
@property (nonatomic, retain) IBOutlet id view12;

@property (nonatomic, retain) IBOutlet id view13;


#pragma mark ScreenLock
@property (nonatomic)Boolean lock;

@property (nonatomic, assign)NSTimer* timer;


//#pragma mark PageNumberForSV
//- (id)initWithPageNumber:(int)page;

@property (nonatomic, retain) IBOutlet UIView *contentView;

#pragma mark iAd
//@property (nonatomic, retain) ADBannerView *banner;



@end
