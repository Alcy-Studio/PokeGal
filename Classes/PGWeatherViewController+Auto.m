//
//  PGWeatherViewController+Auto.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "PGWeatherViewController+Auto.h"

//Additional
//#import "ScreenLocking.h"
//#import "Think.h"
//#import "Think+Act.h"
#import "ActPGWeatherAutoSetup.h"


//Constants
//#import "ConstantsSceneCode.h"
//#import "ConstantsEventCode.h"
#import "ConstantsRefreshFrequency.h"
#import "ConstantsPGWeather.h"
#import "ConstantsAuditorUserDefaults.h"

//Repo
#import "MAct.h"
@implementation PGWeatherViewController(Auto)

-(void)autoSetup{
	NSLog(@"PGWeatherViewController - autoSetup");
	
	id action = [[ActPGWeatherAutoSetup alloc] initWithRole:kAudUDNumPGWeatherAuto];
		
	[action setResource:self];
	[action setCombo];
	[action trigger];
	
	[action release];
		
}
-(void)autoRefresh{NSLog(@"PGWeatherViewController - autoRefresh");}

@end
