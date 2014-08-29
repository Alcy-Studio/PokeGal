//
//  ActPGAttrAutoSetup+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGAttrAutoSetup+Selector.h"

//Additional
#import "PGAttrViewController.h"

//Method
#import "MLoad.h"
#import "MGirl.h"

//Constants
#import "ConstantsPGAttr.h"
#import "ConstantsPGAttrFileName.h"

static const float kAniDuration = 1.0f;
static const unsigned int kAttrDividend = 10;

@interface ActPGAttrAutoSetup ()

-(void)reportScoreToGK;

-(void)setAnimation;
-(void)setView1;
-(void)setViewTopTitle;
-(void)setLoveAttr;
-(void)setLvFormat;


@end

@implementation ActPGAttrAutoSetup(Selector)



-(void)setViewWithTag{
	[self setViewTopTitle];
	[self setLoveAttr];
	[self setLvFormat];
	[self reportScoreToGK];

	for (NSUInteger i = 1; i <= kAttrViewTotal; i++) {
		if (i != kAttrViewHelp && i != kAttrIconImage && i != kAttrSceneBackground &&
			i != kAttrMidLvLabel && i != kAttrUpLvLabel && i != kAttrBottomLvLabel) 
			[MLoad setViewWithTag:i controller:self.resource];
		else if (i == kAttrIconImage)
			[self setAnimation];
	}
}

-(void)setViewTopTitle{
	[(UILabel*)[[(PGAttrViewController*)self.resource view] viewWithTag:kAttrViewTitle] 
	 setText:NSLocalizedString(kAttrTitleText,  @"Localized")];
	
}

-(void)setAnimation{
	[self setView1];
}

-(void)setView1{
	
	NSString* path1 = [[NSBundle mainBundle] pathForResource:kPgAttrView1AniImage1 ofType:kPgAttrView1AniImageType];
	NSString* path2 = [[NSBundle mainBundle] pathForResource:kPgAttrView1AniImage2 ofType:kPgAttrView1AniImageType];
	
	[(UIImageView*)[(PGAttrViewController*)self.resource view1] 
	 setAnimationImages:[NSArray arrayWithObjects:[UIImage imageWithContentsOfFile:path1], [UIImage imageWithContentsOfFile:path2], nil]]; 
	
	[(UIImageView*)[(PGAttrViewController*)self.resource view1] setAnimationDuration:kAniDuration];
	
	[(UIImageView*)[(PGAttrViewController*)self.resource view1] startAnimating];
}

-(void)setLvFormat{
	
	//Health Attr Lv
	NSString* s1 = 	[NSString stringWithFormat:@"%@ %@", NSLocalizedString(kAttrLvText, @"Localized"), 
	[[[MGirl getGirl] sportLv] stringValue]];
	
	[(UILabel*)[[(PGAttrViewController*)self.resource view] viewWithTag:kAttrUpLvLabel] 
	 setText:s1];
	
	
	//Social Attr Lv
	NSString* s2 = 	[NSString stringWithFormat:@"%@ %@", NSLocalizedString(kAttrLvText, @"Localized"), 
	[[[MGirl getGirl] movieLv] stringValue]];
	
	[(UILabel*)[[(PGAttrViewController*)self.resource view] viewWithTag:kAttrMidLvLabel] 
	 setText:s2];
	
	//Talent Attr Lv
	NSString* s3 = 	[NSString stringWithFormat:@"%@ %@", NSLocalizedString(kAttrLvText, @"Localized"), 
	[[[MGirl getGirl] musicLv] stringValue]];
	
	[(UILabel*)[[(PGAttrViewController*)self.resource view] viewWithTag:kAttrBottomLvLabel] 
	 setText:s3];
	
	//Love Attr Lv
	NSString* s4 = 	[NSString stringWithFormat:@"%@ %@", NSLocalizedString(kAttrLvText, @"Localized"), 
	[[[MGirl getGirl] loveLv] stringValue]];
	
	[(UILabel*)[[(PGAttrViewController*)self.resource view] viewWithTag:kAttrLoveLvLabel] 
	 setText:s4];
	
}


-(void)setLoveAttr{
	
	//set Title
	[(UILabel*)[[(PGAttrViewController*)self.resource view] viewWithTag:kAttrLoveTitleLabel] 
	 setText:NSLocalizedString(kAttrTitle4, @"Localized")];
	
	
	//set exp
	[(UIProgressView*)[[(PGAttrViewController*)self.resource view] viewWithTag:kAttrLoveLvBar] 
	 setProgress:[[[MGirl getGirl] loveExp] floatValue]/kAttrDividend];
	
	
}

-(void)reportScoreToGK{
	[MGirl reportScoreToGK];
}
@end
