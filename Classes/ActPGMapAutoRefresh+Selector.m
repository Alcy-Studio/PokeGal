//
//  ActPGMapAutoRefresh+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMapAutoRefresh+Selector.h"

//Constants
#import "ConstantsGirlStatus.h"
#import "ConstantsPGMap.h"

//Repo
#import "MGirl.h"

@implementation ActPGMapAutoRefresh(Selector)

-(void)setAtWithRefresh{
	//Action Point Label
	
	UILabel* at = (UILabel*)[[(UIViewController*)self.resource view] viewWithTag:kMapAtPointLabel];

	[at setText:[NSString stringWithFormat:@"%@",[MGirl currentAt]]];
}

@end
