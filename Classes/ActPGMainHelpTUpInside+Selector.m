//
//  ActPGMainHelpTUpInside+Selector.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMainHelpTUpInside+Selector.h"

//Additional

//Method
#import "MUi.h"

//Constants
#import "ConstantsTmpTutor.h"
#import "ConstantsSceneCode.h"

@implementation ActPGMainHelpTUpInside(Selector)

-(void)presentModalTutor{
	
	[MUi presentModal:@"PGTutorSVController" transition:UIModalTransitionStyleFlipHorizontal animated:YES];
}

-(void)setTutorial{
	[MUi modifyUserDefaultWithKey:kTmpTutorScene value:kSceneCodePGMain]; 
	[self presentModalTutor];
	
}

@end
