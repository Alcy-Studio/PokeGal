//
//  ActPGDateAutoSetup+Selector.h
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGDateAutoSetup.h"


@interface ActPGDateAutoSetup(Selector)

-(void)setTemporaryCostume; //delete when character customization is available


-(void)setSeason;
-(void)setDayNight;
-(NSInteger)setMood;

-(void)setGeographyAndMood;


-(void)setViewWithTag;
-(void)updateSchedule;
-(void)setOutfit;


-(void)updateAndSwitchToPGWalk;
-(void)updatePGWalk;

-(void)switchViewToPGWalkSV;

-(void)presentDelayModal;
-(void)presentModalPGEvent;

-(BOOL)setCurrentScript;
-(void)setDateStart:(NSInteger)i;

@end
