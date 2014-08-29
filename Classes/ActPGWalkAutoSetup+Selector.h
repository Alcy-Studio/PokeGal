//
//  ActPGWalkAutoSetup+Selector.h
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGWalkAutoSetup.h"


@interface ActPGWalkAutoSetup(Selector)

-(void)setSeason;
-(void)setDayNight;

-(void)setGeography;

-(void)setViewWithTag;
//-(void)setViewDisable;
-(void)presentDelayModal;
-(void)presentModalPGEvent;

-(BOOL)setCurrentScript;

@end
