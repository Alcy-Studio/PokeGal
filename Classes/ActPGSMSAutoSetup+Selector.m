//
//  ActPGSMSAutoSetup+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGSMSAutoSetup+Selector.h"

//Additional

//Self
#import "PGSMSViewController.h"

//Additional
//Method
#import "MLoad.h"
#import "MUi.h"

//Constants
#import "ConstantsPGSMS.h"
#import "ConstantsPGSMSMsg.h"

@interface ActPGSMSAutoSetup()

-(void)setViewTopTitle;
-(void)setViewTopLeftLabel;


@end


@implementation ActPGSMSAutoSetup(Selector)

-(void)setViewWithTag{
	[self setViewTopTitle];
	[self setViewTopLeftLabel];

	for (NSUInteger i = 1; i <= kSMSViewTotal; i++) {
		if (i != kSMSTableView && i != kSMSViewHelp) {
			[MLoad setViewWithTag:i controller:self.resource];
		}
	}
}

-(void)setViewTopTitle{
	[(UILabel*)[[(PGSMSViewController*)self.resource view] viewWithTag:kSMSViewTitle] 
	 setText:NSLocalizedString(kSMSTitleText,  @"Localized")];
	
}

-(void)setViewTopLeftLabel{
	[(UILabel*)[[(PGSMSViewController*)self.resource view] viewWithTag:kSMSTopLeftLabel] 
	 setText:NSLocalizedString(kSMSTopLeftLabelText,  @"Localized")];
	
}

-(void)setupAlertView{
	[MUi alertViewPGSmsDisplayAtDeduction];
}


//-(void)deductAT{}

-(void)loadTable{
	
	//Refresh log
	[[NSUserDefaults standardUserDefaults] setBool:NO forKey:kTmpSMSMsg];

	
	[[(PGSMSViewController*)self.resource tv] setDelegate:self.resource];
	[[(PGSMSViewController*)self.resource tv] setDataSource:self.resource];
	
	[(PGSMSViewController*)self.resource setChatArray:[[[NSMutableArray alloc]init] autorelease]];
	[(PGSMSViewController*)self.resource setCurrentChatInfo:[[[NSMutableDictionary alloc] init] autorelease]];

	
	
}


- (NSString *)dataFileName:(NSString*)fn type:(NSString*)t{
	
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
	
    return [documentsDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.%@",fn, t]];
	
}
@end
