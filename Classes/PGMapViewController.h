//
//  PGMapViewController.h
//  PocketDraft
//
//  Created by westbugs on 10-12-10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <MapKit/MapKit.h>

//@class ADBannerView;
@interface PGMapViewController : UIViewController <MKMapViewDelegate> {
	UIScrollView* sv;
	
	id          view1, view2, view3, view4, view5, view6,
				view7, view8, view9, view10, view11, view12, 
				view13, view14, view15, view16, view17, 
				view18, view19, view20, view21, view22, 
				view23, view24, view25, view26; 


	Boolean lock;
	
	MKMapView* worldMapView;

	UIView* contentView;
	//ADBannerView* banner;
	//unsigned int pageNumber;
}
#pragma mark IBOutlet
@property (nonatomic, retain) IBOutlet UIScrollView* sv;

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
@property (nonatomic, retain) IBOutlet id view14;
@property (nonatomic, retain) IBOutlet id view15;
@property (nonatomic, retain) IBOutlet id view16;

@property (nonatomic, retain) IBOutlet id view17;
@property (nonatomic, retain) IBOutlet id view18;
@property (nonatomic, retain) IBOutlet id view19;
@property (nonatomic, retain) IBOutlet id view20;
@property (nonatomic, retain) IBOutlet id view21;

@property (nonatomic, retain) IBOutlet id view22;
@property (nonatomic, retain) IBOutlet id view23;
@property (nonatomic, retain) IBOutlet id view24;
@property (nonatomic, retain) IBOutlet id view25;
@property (nonatomic, retain) IBOutlet id view26;


#pragma mark ScreenLock
@property (nonatomic)Boolean lock;

//#pragma mark PageNumberForSV
//- (id)initWithPageNumber:(int)page;

@property (nonatomic, retain) IBOutlet MKMapView *worldMapView;


@property (nonatomic, retain) IBOutlet UIView *contentView;

#pragma mark iAd
//@property (nonatomic, retain) ADBannerView *banner;

@end
