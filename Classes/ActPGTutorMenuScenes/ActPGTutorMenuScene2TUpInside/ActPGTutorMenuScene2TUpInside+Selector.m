//
//  ActPGTutorMenuScene2TUpInside+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTutorMenuScene2TUpInside+Selector.h"

//Additional

//Method
#import "MUi.h"

//Constants
#import "ConstantsTmpTutor.h"
#import "ConstantsSceneCode.h"

@implementation ActPGTutorMenuScene2TUpInside(Selector)

-(void)presentModalTutor{
	
	[MUi presentModal:@"PGTutorSVController" transition:UIModalTransitionStyleFlipHorizontal animated:YES];
}

-(void)setTutorial{
	[MUi modifyUserDefaultWithKey:kTmpTutorScene value:kSceneCodePGAchi]; 
	[self presentModalTutor];
	
}

@end
