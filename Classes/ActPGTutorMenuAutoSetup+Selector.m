//
//  ActPGTutorMenuAutoSetup+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTutorMenuAutoSetup+Selector.h"

//Additional
#import "PGTutorMenuViewController.h"
//#import "PGTutorPageViewController.h"

//Method
#import "MUi.h"
#import "MLoad.h"

//Constants
#import "ConstantsPGTutorMenu.h"
#import "ConstantsTmpTutor.h"
#import "ConstantsSceneCode.h"


#import "ConstantsModelGeneral.h"
#import "ConstantsModelGraphic2D.h"
#import "ConstantsModelTextOut.h"
#import "ConstantsModelTextOutKindTheme.h"

#import "ConstantsGlossaryDatabase.h"
#import "ConstantsFileType.h"

@interface ActPGTutorMenuAutoSetup()

-(void)setViewTopTitle;


@end


@implementation ActPGTutorMenuAutoSetup(Selector)

-(void)setViewWithTag{
	[self setViewTopTitle];

	/*
	 //Test
	 [MUi modifyUserDefaultWithKey:kTmpTutorScene value:kSceneCodePGDetail]; 
	 [MUi modifyUserDefaultWithKey:kTmpTutorPage value:kTutorDetailPage3]; 
	 //Test
	 */
	[self setView1];
	[self setView2];
	
}

-(void)setViewTopTitle{
	[(UILabel*)[[(PGTutorMenuViewController*)self.resource view] viewWithTag:kTutorMenuViewTitle] 
	 setText:NSLocalizedString(kTutorMenuTitleText,  @"Localized")];
	
}

-(void)setView1{
	
	NSString* fileName = [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGAll] 
											  Attr2:[NSNumber numberWithInt:kModelG2DInfoUi] 
											  Attr3:[NSNumber numberWithInt:kModelG2DKindUiActBack] 
											 Entity:kGlossaryGraphic2D 
												Key:kGlossaryFileName];
	
	NSString* path = [[NSBundle mainBundle] pathForResource:fileName ofType:kTmpFileTypePng];
	
	
	[(UIButton*)[(PGTutorMenuViewController*)self.resource view1] 
	 setImage:[UIImage imageWithContentsOfFile:path] forState:UIControlStateNormal];
}
-(void)setView2{
	NSString* text = [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
										  Attr2:[NSNumber numberWithInt:kModelTextOutInfoHint] 
										  Attr3:[NSNumber numberWithInt:kModelTextOutKindTutorHintMenu] 
										 Entity:kGlossaryTextOut 
											Key:kGlossaryContent];
	
	//NSLog(@"%@", text);
	[(UILabel*)[(PGTutorMenuViewController*)self.resource view2] setText:NSLocalizedString(text, @"localized")]; 
	
}

@end
