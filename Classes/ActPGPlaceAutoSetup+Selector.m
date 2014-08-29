//
//  ActPGPlaceAutoSetup+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGPlaceAutoSetup+Selector.h"

//Additional
#import "PGPlaceViewController.h"

//Method
#import "MLoad.h"
#import "MUi.h"

#import "MRegion.h"
#import "Region.h"

//Constants
#import "ConstantsPGPlace.h"
#import "ConstantsGlossaryDatabase.h"
#import "ConstantsRegions.h"

@interface ActPGPlaceAutoSetup()

-(void)setViewTopTitle;
-(void)setViewTopLeftLabel;


@end

@implementation ActPGPlaceAutoSetup(Selector)

-(void)setViewWithTag{
	[self setViewTopTitle];
	[self setViewTopLeftLabel];

	for (NSUInteger i = 1; i <= kPlaceViewTotal; i++) {
		if (i != kPlaceViewHelp)
			[MLoad setViewWithTag:i controller:self.resource];
	}
}

-(void)setViewTopTitle{
	[(UILabel*)[[(PGPlaceViewController*)self.resource view] viewWithTag:kPlaceViewTitle] 
	 setText:NSLocalizedString(kPlaceTitleText,  @"Localized")];
	
}

-(void)setViewTopLeftLabel{
	[(UILabel*)[[(PGPlaceViewController*)self.resource view] viewWithTag:kPlaceTopLeftLabel] 
	 setText:NSLocalizedString(kPlaceTopLeftLabelText,  @"Localized")];
	
}

//Determine whether region is enabled or not based on "unlocked"
-(void)setViewEnabled{
	
	
	for (NSUInteger i = kPlaceRegionA; i <= kPlaceRegionI; i++) {
		switch (i) {
			case kPlaceRegionA:
			{
				if (![MRegion unlocked:kRegionNameA]) {
					[MUi setEnabled:NO tag:i controller:self.resource];
				}
			}
				break;
			case kPlaceRegionB:
			{
				if (![MRegion unlocked:kRegionNameB]) {
					[MUi setEnabled:NO tag:i controller:self.resource];
				}
			}				break;
			case kPlaceRegionC:
			{
				if (![MRegion unlocked:kRegionNameC]) {
					[MUi setEnabled:NO tag:i controller:self.resource];
				}
			}				break;
			case kPlaceRegionD:
			{
				if (![MRegion unlocked:kRegionNameD]) {
					[MUi setEnabled:NO tag:i controller:self.resource];
				}
			}				break;
			case kPlaceRegionE:
			{
				if (![MRegion unlocked:kRegionNameE]) {
					[MUi setEnabled:NO tag:i controller:self.resource];
				}
			}				break;
			case kPlaceRegionF:
			{
				if (![MRegion unlocked:kRegionNameF]) {
					[MUi setEnabled:NO tag:i controller:self.resource];
				}
			}				break;
			case kPlaceRegionG:
			{
				if (![MRegion unlocked:kRegionNameG]) {
					[MUi setEnabled:NO tag:i controller:self.resource];
				}
			}				break;
			case kPlaceRegionH:
			{
				if (![MRegion unlocked:kRegionNameH]) {
					[MUi setEnabled:NO tag:i controller:self.resource];
				}
			}				break;
			case kPlaceRegionI:
			{
				if (![MRegion unlocked:kRegionNameI]) {
					[MUi setEnabled:NO tag:i controller:self.resource];
				}
			}				break;
			default:
				NSLog(@"ActPGPlaceAutoSetup - setViewEnabled failed");
				break;
		}
			
	}
}
@end
