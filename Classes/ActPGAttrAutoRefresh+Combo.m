//
//  ActPGAttrAutoRefresh+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGAttrAutoRefresh+Combo.h"

//Additional
#import "ActPGAttrAutoRefresh+Selector.h"

@implementation ActPGAttrAutoRefresh(Combo)

-(void)setComboAuto{
	NSLog(@"ActPGAttrAutoRefresh - SetComboAuto");
	
	combo = [[NSArray alloc]initWithObjects:nil];
}

@end
