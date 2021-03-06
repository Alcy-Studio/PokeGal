//
//  ActPGArrange16To17ButtonTUpInside+Selector.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGArrange16To17ButtonTUpInside+Selector.h"

#import "MUi.h"

#import "ConstantsPGArrange.h"
#import "ConstantsPGPlace.h"

#import "ConstantsAuditorUserDefaults.h"
#import "ConstantsTimeDiv.h"

#import "ConstantsPGMAlert.h"
#import "ConstantsSceneCode.h"
@implementation ActPGArrange16To17ButtonTUpInside(Selector)

-(void)setResultForArrange{
	[MUi modifyUserDefaultWithKey:kTmpArrange value:kTimeDiv1600];
	[MUi modifyUserDefaultWithKey:kTmpPlace value:kTimeDiv1600LN];

}

-(void)switchViewToPGPlacePopAnimated{
	if (![MUi switchViewWithControllerPopAnimated:@"PGPlaceViewController"]) {
		NSLog(@"ActPGArrange10To11ButtonTUpInside - switchViewToPGPlacePopAnimated: failed");	
	}
}

-(void)switchViewToPGPlaceWithTFlipFromR{
	if (![MUi switchViewWithController:@"PGPlaceViewController" transition:UIViewAnimationTransitionFlipFromRight])
		NSLog(@"ActPGArrange10To11ButtonTUpInside - switchViewWithController: failed");	
}

-(void)setupAlertViewForOccupiedPeriod{
	NSLog(@"setupAlertViewForOccupiedPeriod");
	
	
	//set Role for alert
	[MUi modifyTag:kAlertTitleLabel role:kAudUDNumPGMAlertTitle4 scene:kSceneCodePGMAlert];
	[MUi modifyTag:kAlertTextView role:kAudUDNumPGMAlertTextView4 scene:kSceneCodePGMAlert];
	
	[MUi presentModal:@"PGMAlertViewController" transition:UIModalTransitionStyleCoverVertical animated:YES];
	
}

/*
-(void)setupAlertViewForOccupiedPeriod{
	[MUi alertViewPGArrangeOccupiedPeriod];
}
 */
@end
