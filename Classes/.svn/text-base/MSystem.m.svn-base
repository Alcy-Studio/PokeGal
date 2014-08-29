//
//  MSystem.m
//  frdfrd
//
//  Created by westbugs on 10-12-05.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "MSystem.h"

#import "PGMainViewController.h"

#import "MUi.h" //Method

#import "ConstantsPGMain.h"

@implementation MSystem

//not useful yet
+(void)PGMainDisableButtonsExcept:(id)sender{
	
	for (NSUInteger i = kMainLeftArrowButton; i <= kMainRightArrowButton; i++) {
		if (i != [sender tag]) {
			[(UIButton*)[[(PGMainViewController*)[MUi getCurrentController] view] viewWithTag:i] setEnabled:NO];
		}

	}
}

@end
