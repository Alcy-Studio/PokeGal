//
//  ActPGTitleAutoSetup+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTitleAutoSetup+Selector.h"

//Additional
//Method
#import "MLoad.h"
#import "MGirl.h"
#import "MUi.h"
#import "MBgm.h"

#import "PGTitleViewController.h"


//Constants
#import "ConstantsPGTitle.h"
#import "ConstantsPGTitleEx.h"

@interface ActPGTitleAutoSetup()

-(void)setThemeSong;
-(void)setBottomButton;

@end

@implementation ActPGTitleAutoSetup(Selector)

-(void)setThemeSong{
	if ([[MBgm getBgm].currentBgm isEqualToString:kPGTitleThemeSong])
		return;
	
	[[MBgm getBgm] changeSong:kPGTitleThemeSong extension:kPGTitleSongType];
	[[MBgm getBgm] playOrPause];
}



-(void)setViewWithTag{
	[self setThemeSong];
	for (NSUInteger i = 1; i <= kTitleViewTotal; i++) {
		[MLoad setViewWithTag:i controller:self.resource];
	}
	
	[self setBottomButton];
	//[UIApplication sharedApplication].applicationIconBadgeNumber -= 1;

	//reset number
	//UILocalNotification* ln = [[[UILocalNotification alloc] init] autorelease];
//	//[ln setAlertBody:@"Gogo"];
//	[ln setApplicationIconBadgeNumber:-1];
//	[ln setFireDate:[NSDate dateWithTimeIntervalSinceNow:5]];
//	[[UIApplication sharedApplication] scheduleLocalNotification:ln];
	
}

-(void)setBottomButton{
	
	NSString* path = [[NSBundle mainBundle] pathForResource:kTitleBottomButtonFile ofType:kTitleImageType];
	[(UIButton*)[[(PGTitleViewController*)self.resource view] viewWithTag:kTitleBottomButton]
	 setImage:[UIImage imageWithContentsOfFile:path] forState:UIControlStateNormal];
}
-(void)setOpening{
	//check opening from MGirl
	if (![MGirl getOpening])
		return;
	
	//disable continue
	[MUi setEnabled:NO tag:kTitleMidButton controller:self.resource];
	//[MUi setEnabled:NO tag:kTitleLowButton controller:self.resource];

}

@end
