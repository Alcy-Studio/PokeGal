//
//  ActPGMapAutoSetup+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMapAutoSetup+Selector.h"

//Additional
#import "PGMapViewController.h"

//Method
#import "MGame.h"
#import "MRegion.h"
#import "Region.h"
#import "MLoad.h"
#import "MUi.h"


//Constants
#import "ConstantsPGMap.h"
#import "ConstantsSettingInGame.h"
#import "ConstantsRegions.h"

#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

static const int mapViewX = 0;
static const int mapViewY = 0;

static const int mapViewWeight = 350;
static const int mapViewHeight = 450;

static const float cityLongitudeIdentifier = 0.001f;
static const float cityLatitudeIdentifier = 0.001f;

static const float cityLongitude = 22.30f;
static const float cityLatitude = 114.11f;

@interface ActPGMapAutoSetup()

-(void)gkAchiExplorer;

-(void)setViewTopTitle;
-(void)setViewTopLeftLabel;

@end


@implementation ActPGMapAutoSetup(Selector)

-(void)gkAchiExplorer{
	
	
	
	float p = 0;
	
	
	if ([[MRegion getRegion:kRegionNameA] unlocked])
		p++;
	if ([[MRegion getRegion:kRegionNameB] unlocked])
		p++;
	if ([[MRegion getRegion:kRegionNameC] unlocked])
		p++;
	if ([[MRegion getRegion:kRegionNameD] unlocked])
		p++;
	if ([[MRegion getRegion:kRegionNameE] unlocked])
		p++;
	if ([[MRegion getRegion:kRegionNameF] unlocked])
		p++;
	if ([[MRegion getRegion:kRegionNameG] unlocked])
		p++;
	if ([[MRegion getRegion:kRegionNameH] unlocked])
		p++;
	if ([[MRegion getRegion:kRegionNameI] unlocked])
		p++;
	
	//for (int i = kMapRegionAButton; i <= kMapRegionIButton; i++) {
//		if ([(UIControl*)[[(PGMapViewController*)self.resource view] viewWithTag:i] isEnabled]) {
//			++p;
//		}
//	}
	
	
	p = (p / kRegionMax) * 100;
	
	NSLog(@"Explorer: %f", p);
	[MGame reportAchievementIdentifier:@"PokeGalAchi4" percentComplete:p];
	
	
	
}

-(void)setViewWithTag{
	[self setViewTopTitle];
	[self setViewTopLeftLabel];

	for (NSUInteger i = 1; i <= kMapViewTotal; i++) {
		if (i != kMapViewHelp && i != kMapMapMainImage)
			[MLoad setViewWithTag:i controller:self.resource];
	}
	
	[self gkAchiExplorer];
}

-(void)setViewTopTitle{
	[(UILabel*)[[(PGMapViewController*)self.resource view] viewWithTag:kMapViewTitle] 
	 setText:NSLocalizedString(kMapTitleText,  @"Localized")];
	
}

-(void)setViewTopLeftLabel{
	[(UILabel*)[[(PGMapViewController*)self.resource view] viewWithTag:kMapTopLeftLabel] 
	 setText:NSLocalizedString(kMapTopLeftLabelText,  @"Localized")];
	
}

-(void)setMapView{
	MKMapView* mv1 = [(PGMapViewController*)self.resource worldMapView];

	MKMapView* mv2 = [[MKMapView alloc] initWithFrame:
					  CGRectMake(mapViewX, mapViewY, mapViewWeight, mapViewHeight)];
	
	
	//[mv2 setCenterCoordinate:lm.location.coordinate animated:YES];
	
	MKCoordinateRegion theRegion = mv1.region;
	
	theRegion.span.longitudeDelta *= cityLongitudeIdentifier;
	theRegion.span.latitudeDelta *= cityLatitudeIdentifier;
	[mv1 setRegion:theRegion animated:YES];
	
	CLLocationCoordinate2D c2d;
	
	c2d.latitude = cityLongitude;
	c2d.longitude = cityLatitude;
	[mv1 setCenterCoordinate:c2d animated:YES];
	
	mv1 = mv2;
	[mv2 release];
	
	// Zoom out
	
}

-(void)setupAlertView{
	[MUi alertViewPGMapDisplayAtDeduction];
	
}
@end
