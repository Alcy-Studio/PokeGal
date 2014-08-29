//
//  ActPGMainAutoSetup+Selector.h
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMainAutoSetup.h"


@interface ActPGMainAutoSetup(Selector)

-(void)setSeason;
-(void)setDayNight;

-(void)setGeography;

//Init the views
-(void)selectorTest1;
-(void)selectorTest2;
-(void)setViewWithTag;

//Set Departed
-(void)getDepart:(NSUInteger)r;
-(void)setTmpScript;

-(void)delayGiftSign;

-(BOOL)checkEvent;
-(BOOL)checkDateLeave;

-(BOOL)checkOpening;
-(BOOL)checkEnding;
//-(void)setupAlertView;

//-(void)setViewWithTag:(NSNumber*)t;

//-(NSArray*)selectorQueue1;


//each selectors should have no dependency
//selectors should be completely independent

/*
selector 1
	add method 1
	add method 2
selector 2
	add methods
 
*/

//Missing Date
-(void)presentMissingDate;


@end
