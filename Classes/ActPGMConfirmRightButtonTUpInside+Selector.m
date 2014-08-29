//
//  ActPGMConfirmRightButtonTUpInside+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMConfirmRightButtonTUpInside+Selector.h"

//Additional
#import "PGWalkViewController.h"
#import "PGWalkSVController.h"
#import "PGDateSVController.h"
#import "PGDateViewController.h"

//Method
#import "MUi.h"
#import "MGirl.h"
#import "MTime.h"
#import "MStore.h"

//Constants
//#import "ConstantsPGMConfirm.h"
#import "ConstantsPGWalk.h"
#import "ConstantsPGDate.h"
#import "ConstantsActionDeduction.h"

static const unsigned int kDelay = 1.0f;

static const unsigned int indexLeft = 0;
static const unsigned int indexMid = 1;
static const unsigned int indexRight = 2;

@interface ActPGMConfirmRightButtonTUpInside()

-(void)refreshWalk;
-(void)refreshDate;

@end


@implementation ActPGMConfirmRightButtonTUpInside(Selector)

-(void)dismissModal{
	[MUi dismissModal];
}

-(void)reset{
	[MStore reset];
}

-(void)switchViewToPGTitle{
	if (![MUi switchViewWithController:@"PGTitleViewController"])
		NSLog(@"ActPGMConfirmRightButtonTUpInside - switchViewToPGTitle: failed");	
}

-(void)switchViewToPGArrange{
	if (![MUi switchViewWithController:@"PGArrangeViewController"])
		NSLog(@"ActPGMConfirmRightButtonTUpInside - switchViewToPGArrange: failed");	
}

-(void)switchViewToPGSms{
	if (![MUi switchViewWithController:@"PGSMSViewController"])
		NSLog(@"ActPGMConfirmRightButtonTUpInside - switchViewToPGSMS: failed");	
}

-(void)switchViewToPGMap{
	if (![MUi switchViewWithController:@"PGMapViewController"])
		NSLog(@"ActPGMConfirmRightButtonTUpInside - switchViewToPGMap: failed");	
}

-(void)switchViewToPGWalk{
	if (![MUi switchViewWithController:@"PGWalkSVController"])
		NSLog(@"ActPGMConfirmRightButtonTUpInside - switchViewToPGWalkSV: failed");	
}

-(void)switchViewToPGDate{
	if (![MUi switchViewWithController:@"PGDateSVController"])
		NSLog(@"ActPGMConfirmRightButtonTUpInside - switchViewToPGDate: failed");	
}

-(void)switchViewToPGMain{
	if (![MUi switchViewWithController:@"PGMainSVController"])
		NSLog(@"ActPGMConfirmRightButtonTUpInside - switchViewToPGMainSV: failed");
}
-(void)switchViewToPGEvent{
	[MUi tryPerformSelector:@selector(presentModalEvent) 
				 withObject:nil 
				 afterDelay:kDelay];
	[MUi dismissModal];
}

-(void)screenLock{
	[MUi screenLock];
}

-(void)deductAtCall{
	[MGirl deductAtCall];
	
	
}
-(void)deductAtSms{
	[MGirl deductAtSms];
}
	
-(void)deductAtMove{
	[MGirl deductAtMove];
}

-(void)refreshWalk{
	
	PGWalkSVController* sv = (PGWalkSVController*)[MUi getCurrentController];
	PGWalkViewController* walk = (PGWalkViewController*)[[sv viewControllers] objectAtIndex:indexMid];
	[(UILabel*)[walk.view viewWithTag:kWalkAtPointLabel] 
	 setText:[NSString stringWithFormat:@"%i", [MGirl currentAt]]];
	
}

-(void)refreshDate{

	PGDateSVController* sv = (PGDateSVController*)[MUi getCurrentController];
	PGDateViewController* walk = (PGDateViewController*)[[sv viewControllers] objectAtIndex:indexMid];
	[(UILabel*)[walk.view viewWithTag:kWalkAtPointLabel] 
	 setText:[NSString stringWithFormat:@"%i", [MGirl currentAt]]];
	
}

-(void)deductAtTalk{
	[MGirl deductAtTalk];
	[self refreshWalk];

}

-(void)deductAtLook{
	[MGirl deductAtLook];
	[self refreshWalk];

}

-(void)deductAtChat{
	[MGirl deductAtChat];
	[self refreshDate];

}

-(void)deductAtRomance{
	[MGirl deductAtRomance];
	[self refreshDate];
}

-(void)invalidateTimer{
	
	MTime* time = [[MTime alloc]init];
	[time invalidateTimer];
	[time release];
}

-(void)dummy{}

@end
