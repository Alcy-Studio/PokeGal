//
//  ActPGMConfirmRightButtonTUpInside+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMConfirmRightButtonTUpInside+Combo.h"

//Additional
#import "ActPGMConfirmRightButtonTUpInside+Selector.h"

//Constants
#import "ConstantsTmpAction.h"

@implementation ActPGMConfirmRightButtonTUpInside(Combo)

-(void)setComboRightButton{
	NSLog(@"ActPGMConfirmRightButtonTUpInside - SetCombo");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	NSString* action1 = NSStringFromSelector(@selector(dismissModal));
	NSString* action2;
	NSString* action3;
	NSString* action4;

	NSInteger ud = [[NSUserDefaults standardUserDefaults] integerForKey:kTmpAction];
	switch (ud) {
			
		case kTmpActionPGTitleNew:
			action2 = NSStringFromSelector(@selector(reset));
			action3 = NSStringFromSelector(@selector(dummy));
			action4 = NSStringFromSelector(@selector(switchViewToPGMain));
			break;
	
			//Main
		case kTmpActionPGMainLButton:
			action2 = NSStringFromSelector(@selector(deductAtCall));
			action3 = NSStringFromSelector(@selector(invalidateTimer));
			action4 = NSStringFromSelector(@selector(switchViewToPGArrange));

			break;
		case kTmpActionPGMainMButton:
			action2 = NSStringFromSelector(@selector(deductAtSms));
			action3 = NSStringFromSelector(@selector(invalidateTimer));
			action4 = NSStringFromSelector(@selector(switchViewToPGSms));

			break;
		case kTmpActionPGMainRButton:
			action2 = NSStringFromSelector(@selector(deductAtMove));
			action3 = NSStringFromSelector(@selector(invalidateTimer));
			action4 = NSStringFromSelector(@selector(switchViewToPGMap));

			break;
			
		case kTmpActionPGMainTitleButton:
			action2 = NSStringFromSelector(@selector(dummy));
			action3 = NSStringFromSelector(@selector(invalidateTimer));
			action4 = NSStringFromSelector(@selector(switchViewToPGTitle));
			
			break;
			//Map
		case kTmpActionPGMapGoButton:
			action2 = NSStringFromSelector(@selector(dummy));
			action3 = NSStringFromSelector(@selector(dummy));
			action4 = NSStringFromSelector(@selector(switchViewToPGWalk));
			
			break;
			//Map
		case kTmpActionPGMapDateButton:
			action2 = NSStringFromSelector(@selector(dummy));
			action3 = NSStringFromSelector(@selector(dummy));
			action4 = NSStringFromSelector(@selector(switchViewToPGDate));
			
			break;
			
			//Leave
		case kTmpActionLeaveButton:
			action2 = NSStringFromSelector(@selector(dummy));
			action3 = NSStringFromSelector(@selector(dummy));
			action4 = NSStringFromSelector(@selector(switchViewToPGMain));
			
			break;
			
			//Date Leave
		case kTmpActionDateLeaveButton:
			action2 = NSStringFromSelector(@selector(dummy));
			action3 = NSStringFromSelector(@selector(dummy));
			action4 = NSStringFromSelector(@selector(switchViewToPGMain));
			
			break;

			//Walk - Talk, Look
		case kTmpActionPGWalkLButton:
			action2 = NSStringFromSelector(@selector(deductAtTalk));
			action3 = NSStringFromSelector(@selector(dummy));
			action4 = NSStringFromSelector(@selector(switchViewToPGEvent));
			break;

		case kTmpActionPGWalkMButton:
			action2 = NSStringFromSelector(@selector(deductAtLook));
			action3 = NSStringFromSelector(@selector(dummy));
			action4 = NSStringFromSelector(@selector(switchViewToPGEvent));
			
			break;
			//Date - Chat, Romance
		case kTmpActionPGDateLButton:
			action2 = NSStringFromSelector(@selector(deductAtChat));
			action3 = NSStringFromSelector(@selector(dummy));
			action4 = NSStringFromSelector(@selector(switchViewToPGEvent));
			break;
		case kTmpActionPGDateMButton:
			action2 = NSStringFromSelector(@selector(deductAtRomance));
			action3 = NSStringFromSelector(@selector(dummy));
			action4 = NSStringFromSelector(@selector(switchViewToPGEvent));
			

			break;
		default:
			action2 = nil;
			action3 = nil;
			action4 = nil;
			break;
	}

	id target = self;
	
	NSDictionary* ta = [[NSDictionary alloc]initWithObjectsAndKeys:
						target, action1,
						target, action2,
						target, action3,
						target, action4,
						nil];
	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
}

@end
