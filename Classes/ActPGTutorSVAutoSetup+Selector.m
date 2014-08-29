//
//  ActPGTutorSVAutoSetup+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTutorSVAutoSetup+Selector.h"

//Additional
#import "PGTutorSVController.h"
#import "PGTutorPageViewController.h"

//Method
#import "MUi.h"
#import "MLoad.h"

//Constants
#import "ConstantsPGTutorSV.h"
#import "ConstantsTmpTutor.h"
#import "ConstantsSceneCode.h"


#import "ConstantsModelGeneral.h"
#import "ConstantsModelGraphic2D.h"
#import "ConstantsModelTextOut.h"
#import "ConstantsModelTextOutKindTheme.h"

#import "ConstantsGlossaryDatabase.h"
#import "ConstantsFileType.h"

@interface ActPGTutorSVAutoSetup()

-(void)setViewTopTitle;

-(void)setView2HintMain;
-(void)setView2HintAchi;
-(void)setView2HintAttr;
-(void)setView2HintDate;
-(void)setView2HintWalk;
-(void)setView2HintEvent;
-(void)setView2HintMap;
-(void)setView2HintArrange;
-(void)setView2HintPlace;
-(void)setView2HintSchedule;
-(void)setView2HintDetail;
-(void)setView2HintSms;


@end

@implementation ActPGTutorSVAutoSetup(Selector)

-(void)setViewWithTag{
	/*
	//Test
	[MUi modifyUserDefaultWithKey:kTmpTutorScene value:kSceneCodePGDetail]; 
	[MUi modifyUserDefaultWithKey:kTmpTutorPage value:kTutorDetailPage3]; 
	//Test
	*/
	[self setViewTopTitle];
	[self setView1];
	[self setView2];

}

-(void)setViewTopTitle{
	[(UILabel*)[[(PGTutorSVController*)self.resource view] viewWithTag:kTutorSVTitle] 
	 setText:NSLocalizedString(kTutorHelpTitleText,  @"Localized")];
	
}

-(void)setView1{
	
	NSString* fileName = [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGAll] 
											  Attr2:[NSNumber numberWithInt:kModelG2DInfoUi] 
											  Attr3:[NSNumber numberWithInt:kModelG2DKindUiActBack] 
											 Entity:kGlossaryGraphic2D 
												Key:kGlossaryFileName];
	
	NSString* path = [[NSBundle mainBundle] pathForResource:fileName ofType:kTmpFileTypePng];
	
	
	[(UIButton*)[(PGTutorSVController*)self.resource view1] 
	 setImage:[UIImage imageWithContentsOfFile:path] forState:UIControlStateNormal];
}


-(void)setView2{
	
	NSUInteger i = [[NSUserDefaults standardUserDefaults] integerForKey:kTmpTutorScene];
	
	switch (i) { 
		case kSceneCodePGMain:
			[self setView2HintMain];
			break;
		case kSceneCodePGAchi:
			[self setView2HintAchi];
			break;
		case kSceneCodePGAttr:
			[self setView2HintAttr];
			break;
		case kSceneCodePGDate:
			[self setView2HintDate];
			break;
		case kSceneCodePGWalk:
			[self setView2HintWalk];
			break;
		case kSceneCodePGEvent:
			[self setView2HintEvent];
			break;
		case kSceneCodePGMap:
			[self setView2HintMap];
			break;
		case kSceneCodePGArrange:
			[self setView2HintArrange];
			break;
		case kSceneCodePGPlace:
			[self setView2HintPlace];
			break;
		case kSceneCodePGSchedule:
			[self setView2HintSchedule];
			break;
		case kSceneCodePGDetail:
			[self setView2HintDetail];
			break;
		case kSceneCodePGSMS:
			[self setView2HintSms];
			break;
		default:
			break;
	}
	

}

-(void)setView2HintMain{
	NSString* text = [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
										  Attr2:[NSNumber numberWithInt:kModelTextOutInfoHint] 
										  Attr3:[NSNumber numberWithInt:kModelTextOutKindTutorHintMain] 
										 Entity:kGlossaryTextOut 
											Key:kGlossaryContent];
	
	//NSLog(@"%@", text);
	[(UILabel*)[(PGTutorSVController*)self.resource view2] setText:NSLocalizedString(text, @"localized")]; 
	
}
-(void)setView2HintAchi{
	NSString* text = [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
										  Attr2:[NSNumber numberWithInt:kModelTextOutInfoHint] 
										  Attr3:[NSNumber numberWithInt:kModelTextOutKindTutorHintAchi] 
										 Entity:kGlossaryTextOut 
											Key:kGlossaryContent];
	
	//NSLog(@"%@", text);
	[(UILabel*)[(PGTutorSVController*)self.resource view2] setText:NSLocalizedString(text, @"localized")]; 
}
-(void)setView2HintAttr{
	NSString* text = [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
										  Attr2:[NSNumber numberWithInt:kModelTextOutInfoHint] 
										  Attr3:[NSNumber numberWithInt:kModelTextOutKindTutorHintAttr] 
										 Entity:kGlossaryTextOut 
											Key:kGlossaryContent];
	
	//NSLog(@"%@", text);
	[(UILabel*)[(PGTutorSVController*)self.resource view2] setText:NSLocalizedString(text, @"localized")]; 
}
-(void)setView2HintDate{
	NSString* text = [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
										  Attr2:[NSNumber numberWithInt:kModelTextOutInfoHint] 
										  Attr3:[NSNumber numberWithInt:kModelTextOutKindTutorHintDate] 
										 Entity:kGlossaryTextOut 
											Key:kGlossaryContent];
	
	//NSLog(@"%@", text);
	[(UILabel*)[(PGTutorSVController*)self.resource view2] setText:NSLocalizedString(text, @"localized")]; 
}
-(void)setView2HintWalk{
	NSString* text = [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
										  Attr2:[NSNumber numberWithInt:kModelTextOutInfoHint] 
										  Attr3:[NSNumber numberWithInt:kModelTextOutKindTutorHintWalk] 
										 Entity:kGlossaryTextOut 
											Key:kGlossaryContent];
	
	//NSLog(@"%@", text);
	[(UILabel*)[(PGTutorSVController*)self.resource view2] setText:NSLocalizedString(text, @"localized")]; 
}
-(void)setView2HintEvent{
	NSString* text = [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
										  Attr2:[NSNumber numberWithInt:kModelTextOutInfoHint] 
										  Attr3:[NSNumber numberWithInt:kModelTextOutKindTutorHintEvent] 
										 Entity:kGlossaryTextOut 
											Key:kGlossaryContent];
	
	//NSLog(@"%@", text);
	[(UILabel*)[(PGTutorSVController*)self.resource view2] setText:NSLocalizedString(text, @"localized")]; 
}
-(void)setView2HintMap{
	NSString* text = [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
										  Attr2:[NSNumber numberWithInt:kModelTextOutInfoHint] 
										  Attr3:[NSNumber numberWithInt:kModelTextOutKindTutorHintMap] 
										 Entity:kGlossaryTextOut 
											Key:kGlossaryContent];
	
	//NSLog(@"%@", text);
	[(UILabel*)[(PGTutorSVController*)self.resource view2] setText:NSLocalizedString(text, @"localized")]; 
}
-(void)setView2HintArrange{
	NSString* text = [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
										  Attr2:[NSNumber numberWithInt:kModelTextOutInfoHint] 
										  Attr3:[NSNumber numberWithInt:kModelTextOutKindTutorHintArrange] 
										 Entity:kGlossaryTextOut 
											Key:kGlossaryContent];
	
	//NSLog(@"%@", text);
	[(UILabel*)[(PGTutorSVController*)self.resource view2] setText:NSLocalizedString(text, @"localized")]; 
}
-(void)setView2HintPlace{
	NSString* text = [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
										  Attr2:[NSNumber numberWithInt:kModelTextOutInfoHint] 
										  Attr3:[NSNumber numberWithInt:kModelTextOutKindTutorHintPlace] 
										 Entity:kGlossaryTextOut 
											Key:kGlossaryContent];
	
	//NSLog(@"%@", text);
	[(UILabel*)[(PGTutorSVController*)self.resource view2] setText:NSLocalizedString(text, @"localized")]; 
}
-(void)setView2HintSchedule{
	NSString* text = [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
										  Attr2:[NSNumber numberWithInt:kModelTextOutInfoHint] 
										  Attr3:[NSNumber numberWithInt:kModelTextOutKindTutorHintSchedule] 
										 Entity:kGlossaryTextOut 
											Key:kGlossaryContent];
	
	//NSLog(@"%@", text);
	[(UILabel*)[(PGTutorSVController*)self.resource view2] setText:NSLocalizedString(text, @"localized")]; 
}
-(void)setView2HintDetail{
	NSString* text = [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
										  Attr2:[NSNumber numberWithInt:kModelTextOutInfoHint] 
										  Attr3:[NSNumber numberWithInt:kModelTextOutKindTutorHintDetail] 
										 Entity:kGlossaryTextOut 
											Key:kGlossaryContent];
	
	//NSLog(@"%@", text);
	[(UILabel*)[(PGTutorSVController*)self.resource view2] setText:NSLocalizedString(text, @"localized")]; 
}

-(void)setView2HintSms{
	NSString* text = [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGTutor] 
										  Attr2:[NSNumber numberWithInt:kModelTextOutInfoHint] 
										  Attr3:[NSNumber numberWithInt:kModelTextOutKindTutorHintSms] 
										 Entity:kGlossaryTextOut 
											Key:kGlossaryContent];
	
	//NSLog(@"%@", text);
	[(UILabel*)[(PGTutorSVController*)self.resource view2] setText:NSLocalizedString(text, @"localized")]; 
}

@end
