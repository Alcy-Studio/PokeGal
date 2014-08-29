//
//  ActPGWeatherAutoSetup+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGWeatherAutoSetup+Selector.h"

//Additional
#import "PGWeatherViewController.h"
//#import "PGTutorPageViewController.h"

//Method
#import "MUi.h"
#import "MLoad.h"

//Constants
#import "ConstantsPGWeather.h"
#import "ConstantsTmpTutor.h"
#import "ConstantsSceneCode.h"


#import "ConstantsModelGeneral.h"
#import "ConstantsModelGraphic2D.h"
#import "ConstantsModelTextOut.h"
#import "ConstantsModelTextOutKindTheme.h"

#import "ConstantsGlossaryDatabase.h"
#import "ConstantsFileType.h"

//#import "ConstantsPGWeather.h"
#import "ConstantsPGWeatherEx.h"


@interface ActPGWeatherAutoSetup()

-(void)setViewTopTitle;
-(void)setViewBackButton;
-(void)setViewHintLabel;
-(void)setViewDescLabel;
//-(void)showTextView:(NSInteger)i;


@end


@implementation ActPGWeatherAutoSetup(Selector)

-(void)setViewWithTag{
	[self setViewTopTitle];
	
	[self setViewBackButton];
	
	[self setViewDescLabel];
	[self setViewHintLabel];
	//[self showTextView:[self.resource code]];
	/*
	 //Test
	 [MUi modifyUserDefaultWithKey:kTmpTutorScene value:kSceneCodePGDetail]; 
	 [MUi modifyUserDefaultWithKey:kTmpTutorPage value:kTutorDetailPage3]; 
	 //Test
	 */
	
	
}

-(void)setViewTopTitle{
	[(UILabel*)[[(PGWeatherViewController*)self.resource view] viewWithTag:kWeatherViewTitle] 
	 setText:NSLocalizedString(kWeatherTitleText,  @"Localized")];
	
}

-(void)setViewBackButton{
	NSString* s = [[NSBundle mainBundle] pathForResource:kWeatherBackButton ofType:kWeatherFileType];
	
	
	[(UIButton*)[[(PGWeatherViewController*)self.resource view] viewWithTag:kWeatherViewBackButton] 
	 setImage:[UIImage imageWithContentsOfFile:s] forState:UIControlStateNormal];
	
	

}

-(void)setViewDescLabel{
	
	[(UILabel*)[[(PGWeatherViewController*)self.resource view] viewWithTag:kWeatherViewTopLabel] 
	 setText:NSLocalizedString(kWeatherTopLabelText,  @"Localized")];
	
	[(UILabel*)[[(PGWeatherViewController*)self.resource view] viewWithTag:kWeatherViewMidLabel] 
	 setText:NSLocalizedString(kWeatherMidLabelText,  @"Localized")];
	
	[(UILabel*)[[(PGWeatherViewController*)self.resource view] viewWithTag:kWeatherViewLowLabel] 
	 setText:NSLocalizedString(kWeatherLowLabelText,  @"Localized")];
	
}

-(void)setViewHintLabel{
	[(UILabel*)[[(PGWeatherViewController*)self.resource view] viewWithTag:kWeatherHintLabel] 
	 setText:NSLocalizedString(kWeatherHintText,  @"Localized")];

}


@end
