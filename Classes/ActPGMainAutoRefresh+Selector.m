//
//  ActPGMainAutoRefresh+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMainAutoRefresh+Selector.h"

//Constants
#import "ConstantsGirlStatus.h"
#import "ConstantsPGMain.h"
#import "ConstantsTmpPopAttr.h"

#import "ConstantsModelGeneral.h"
#import "ConstantsGlossaryDatabase.h"
#import "ConstantsModelSe.h"

//Controller
#import "PGNavController.h"

//Repo
#import "MGirl.h"
#import "MUi.h"
#import "MLoad.h"
#import "MSe.h"
#import "Se.h"

static const float f = 1.0f; //animation duration

static const int tag = 1000; //pop attr tag
static const int popAttrHeight = 30; //pop attr Height
static const int popAttrWeight = 150; //pop attr Weight

static const int popAttrMoveY = -40; //pop attr Move Y

@interface ActPGMainAutoRefresh()
-(void)showAttribute:(NSString*)s;
-(void)playSoundDate;

@end

@implementation ActPGMainAutoRefresh(Selector)

-(void)regenAt{
		[MGirl regenAt:kGirlRegenAt];
}

-(void)setAtWithRefresh{
	//Action Point Label
	//NSLog(@"Running");
	UILabel* at = (UILabel*)[[(UIViewController*)self.resource view] viewWithTag:kMainAtPointLabel];
	NSUInteger value = [[at text] intValue];
	
	if (value >= [MGirl maxAt])
		return;
	
	value += kGirlRegenAt;
	
	[at setText:[NSString stringWithFormat:@"%i",value]];
	
	//pop out action +1
	[self showAttribute:kTmpPopAttrAction1];
	//sound effect
	[self playSoundDate];

}

-(void)showAttribute:(NSString*)s{
	PGNavController* nc = [MUi getNavigationController];
	
	UIView* currentView = [[nc topViewController] view];
	
	UIImageView* iv = [[UIImageView alloc] init];
	iv.tag = tag;
	iv.opaque = NO;
	iv.backgroundColor = [UIColor clearColor];
	NSBundle* bundle = [NSBundle mainBundle];
	
	[iv setImage:[UIImage imageWithContentsOfFile:[bundle pathForResource:s
																   ofType:@"png"]]];
	
	iv.center = CGPointMake(currentView.center.x, currentView.center.y);
	iv.bounds = CGRectMake(0, 0, popAttrWeight, popAttrHeight);
	
	[UIView beginAnimations:@"popup" context:nil];
	[UIView setAnimationDuration:f];
	[UIView setAnimationBeginsFromCurrentState:YES];
	
	//iv.bounds = CGRectMake(0, 0, 0, 0);
	iv.center = CGPointMake(currentView.center.x, currentView.center.y + popAttrMoveY);
	iv.alpha = 0;
	
	[currentView addSubview:iv];
	[UIView commitAnimations];
	//[[window viewWithTag:100]removeFromSuperview];
	[[currentView viewWithTag:tag] performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:f];
	[iv release];
	
	
	//NSLog(@"Test Show Attribute");
}

-(void)playSoundDate{
	
	NSArray* array = [MLoad getRecordWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGAll] 
										 Attr2:[NSNumber numberWithInt:kModelSeInfoUi]  
										 Attr3:[NSNumber numberWithInt:kModelSeKindButtonPress2]  
										Entity:kGlossarySe];
	
	
	
	NSString* fn = [(Se*)[array objectAtIndex:0] fileName];
	NSString* ext = [(Se*)[array objectAtIndex:0] extension];
	
	
	[MSe playSound:fn extension:ext];
}

@end
