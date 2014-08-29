//
//  ActPGArrangeAutoRefresh+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGArrangeAutoRefresh+Selector.h"

#import "MUi.h"
#import "ConstantsPGArrange.h"
#import "MTime.h"

@implementation ActPGArrangeAutoRefresh(Selector)

-(void)refreshTimeDate{
	[self refreshTime];
	[self refreshWeekday];
}

-(void)refreshTime{
	[(UILabel*)[[[MUi getCurrentController] view] viewWithTag:kArrangeAtPointLabel] setText:[MTime getCurrentTime]];
}

-(void)refreshWeekday{
	MTime* time = [[MTime alloc] initWithResource:self.resource];
	[time showWeekdayWithTag:kArrangeWeekLabel];
	[time release];
}
@end
