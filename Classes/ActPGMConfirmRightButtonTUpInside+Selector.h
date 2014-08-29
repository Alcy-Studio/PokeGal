//
//  ActPGMConfirmRightButtonTUpInside+Selector.h
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMConfirmRightButtonTUpInside.h"


@interface ActPGMConfirmRightButtonTUpInside(Selector)

-(void)dismissModal;

-(void)reset;

-(void)switchViewToPGTitle;
-(void)switchViewToPGArrange;
-(void)switchViewToPGSms;
-(void)switchViewToPGMap;
-(void)switchViewToPGWalk;
-(void)switchViewToPGDate;

-(void)switchViewToPGMain;
-(void)switchViewToPGEvent;

//-(void)presentEvent; //use delay present

-(void)screenLock;

-(void)deductAtCall;
-(void)deductAtSms;
-(void)deductAtMove;

-(void)deductAtTalk;
-(void)deductAtLook;

-(void)deductAtChat;

-(void)deductAtRomance;

-(void)invalidateTimer;

-(void)dummy;
@end
