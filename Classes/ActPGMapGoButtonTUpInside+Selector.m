//
//  ActPGMapGoButtonTUpInside+Selector.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMapGoButtonTUpInside+Selector.h"

#import "MUi.h"

#import "ConstantsAuditorUserDefaults.h" // Constants
#import "ConstantsSceneCode.h" //Constants
#import "ConstantsPGWalk.h"
#import "ConstantsPGDate.h"

#import "ConstantsPGMConfirm.h"
#import "ConstantsTmpAction.h"
#import "ConstantsTmpRegion.h"


@implementation ActPGMapGoButtonTUpInside(Selector)

//Modal 
-(void)presentModalConfirm{
	
	[MUi presentModal:@"PGMConfirmViewController" transition:UIModalTransitionStylePartialCurl animated:YES];
}

-(void)setTmpActionGo{
	[MUi modifyUserDefaultWithKey:kTmpAction value:kTmpActionPGMapGoButton];
	
}

-(void)setRoleForConfirmGo{
	[MUi modifyTag:kConfirmTitleLabel role:kAudUDNumPGMConfirmTitle4 scene:kSceneCodePGMConfirm];
	[MUi modifyTag:kConfirmTextView role:kAudUDNumPGMConfirmTextView4 scene:kSceneCodePGMConfirm];
	
}

//Modal Date
//Modal 

-(void)setTmpActionDate{
	[MUi modifyUserDefaultWithKey:kTmpAction value:kTmpActionPGMapDateButton];
	
}

-(void)setRoleForConfirmDate{
	[MUi modifyTag:kConfirmTitleLabel role:kAudUDNumPGMConfirmTitle5 scene:kSceneCodePGMConfirm];
	[MUi modifyTag:kConfirmTextView role:kAudUDNumPGMConfirmTextView5 scene:kSceneCodePGMConfirm];
	
}

-(void)setTmpRegionA{[MUi modifyUserDefaultWithKey:kTmpRegion stringVal:kTRRegionA];}
-(void)setTmpRegionB{[MUi modifyUserDefaultWithKey:kTmpRegion stringVal:kTRRegionB];}
-(void)setTmpRegionC{[MUi modifyUserDefaultWithKey:kTmpRegion stringVal:kTRRegionC];}
-(void)setTmpRegionD{[MUi modifyUserDefaultWithKey:kTmpRegion stringVal:kTRRegionD];}
-(void)setTmpRegionE{[MUi modifyUserDefaultWithKey:kTmpRegion stringVal:kTRRegionE];}
-(void)setTmpRegionF{[MUi modifyUserDefaultWithKey:kTmpRegion stringVal:kTRRegionF];}
-(void)setTmpRegionG{[MUi modifyUserDefaultWithKey:kTmpRegion stringVal:kTRRegionG];}
-(void)setTmpRegionH{[MUi modifyUserDefaultWithKey:kTmpRegion stringVal:kTRRegionH];}
-(void)setTmpRegionI{[MUi modifyUserDefaultWithKey:kTmpRegion stringVal:kTRRegionI];}

-(void)switchViewToPGWalkWithTCurlUp{
	if (![MUi switchViewWithController:@"PGWalkSVController" transition:UIViewAnimationTransitionCurlUp])
		NSLog(@"ActPGMapGoButtonTUpInside - switchViewWithController: failed");	
}

-(void)switchViewToPGWalkWithTFlipFromR{
	if (![MUi switchViewWithController:@"PGWalkSVController" transition:UIViewAnimationTransitionFlipFromRight])
		NSLog(@"ActPGMapGoButtonTUpInside - switchViewWithController: failed");	
}

-(void)switchViewToPGDateWithTFlipFromR{
	if (![MUi switchViewWithController:@"PGDateViewController" transition:UIViewAnimationTransitionFlipFromRight])
		NSLog(@"ActPGMapGoButtonTUpInside - switchViewWithController: failed");	
}
/*
kWalkView = 0,
kWalkWeatherImage = 1,
kWalkAtPointLabel = 2,
kWalkDayNightImage = 3,
kWalkBubbleImage = 4,
kWalkCharacterImage = 5,
kWalkBackgroundImage = 6,
kWalkLeftArrowButton = 7,
kWalkLeftActionButton = 8,
kWalkMidActionButton = 9,
kWalkRightActionButton = 10,
kWalkRightArrowButton = 11,
kWalkHintLabel = 12,
*/
//Roles that no need to compare or edit
-(void)modifyDirectRoleForWalkRegionA{
	//Change role of Picture, Top Lv, Mid Lv, Low Lv, DetailButton 
	//[MUi modifyTag:kWalkWeatherImage role:kAudUDNumPGMapRegionPicA scene:kSceneCodePGWalk];
	//[MUi modifyTag:kWalkDayNightImage role:kAudUDNumPGMapTopLvReqRegionA scene:kSceneCodePGWalk];
	//[MUi modifyTag:kWalkBubbleImage role:kAudUDNumPGMapMidLvReqRegionA scene:kSceneCodePGWalk];
	[MUi modifyTag:kWalkBackgroundImage role:kAudUDNumPGWalkOccRegionA scene:kSceneCodePGWalk];
	[MUi modifyTag:kWalkHintLabel role:kAudUDNumPGWalkHintRegionA scene:kSceneCodePGWalk];

}
-(void)modifyDirectRoleForWalkRegionB{
	//Change role of Picture, Top Lv, Mid Lv, Low Lv, DetailButton 
	//[MUi modifyTag:kWalkWeatherImage role:kAudUDNumPGMapRegionPicA scene:kSceneCodePGWalk];
	//[MUi modifyTag:kWalkDayNightImage role:kAudUDNumPGMapTopLvReqRegionA scene:kSceneCodePGWalk];
	//[MUi modifyTag:kWalkBubbleImage role:kAudUDNumPGMapMidLvReqRegionA scene:kSceneCodePGWalk];
	[MUi modifyTag:kWalkBackgroundImage role:kAudUDNumPGWalkOccRegionB scene:kSceneCodePGWalk];
	[MUi modifyTag:kWalkHintLabel role:kAudUDNumPGWalkHintRegionB scene:kSceneCodePGWalk];
	
}

-(void)modifyDirectRoleForWalkRegionC{
	[MUi modifyTag:kWalkBackgroundImage role:kAudUDNumPGWalkOccRegionC scene:kSceneCodePGWalk];
	[MUi modifyTag:kWalkHintLabel role:kAudUDNumPGWalkHintRegionC scene:kSceneCodePGWalk];
	
}

-(void)modifyDirectRoleForWalkRegionD{
	[MUi modifyTag:kWalkBackgroundImage role:kAudUDNumPGWalkOccRegionD scene:kSceneCodePGWalk];
	[MUi modifyTag:kWalkHintLabel role:kAudUDNumPGWalkHintRegionD scene:kSceneCodePGWalk];
	
}

-(void)modifyDirectRoleForWalkRegionE{
	[MUi modifyTag:kWalkBackgroundImage role:kAudUDNumPGWalkOccRegionE scene:kSceneCodePGWalk];
	[MUi modifyTag:kWalkHintLabel role:kAudUDNumPGWalkHintRegionE scene:kSceneCodePGWalk];
	
}

-(void)modifyDirectRoleForWalkRegionF{
	[MUi modifyTag:kWalkBackgroundImage role:kAudUDNumPGWalkOccRegionF scene:kSceneCodePGWalk];
	[MUi modifyTag:kWalkHintLabel role:kAudUDNumPGWalkHintRegionF scene:kSceneCodePGWalk];
	
}

-(void)modifyDirectRoleForWalkRegionG{
	[MUi modifyTag:kWalkBackgroundImage role:kAudUDNumPGWalkOccRegionG scene:kSceneCodePGWalk];
	[MUi modifyTag:kWalkHintLabel role:kAudUDNumPGWalkHintRegionG scene:kSceneCodePGWalk];
	
}

-(void)modifyDirectRoleForWalkRegionH{
	[MUi modifyTag:kWalkBackgroundImage role:kAudUDNumPGWalkOccRegionH scene:kSceneCodePGWalk];
	[MUi modifyTag:kWalkHintLabel role:kAudUDNumPGWalkHintRegionH scene:kSceneCodePGWalk];
	
}

-(void)modifyDirectRoleForWalkRegionI{
	[MUi modifyTag:kWalkBackgroundImage role:kAudUDNumPGWalkOccRegionI scene:kSceneCodePGWalk];
	[MUi modifyTag:kWalkHintLabel role:kAudUDNumPGWalkHintRegionI scene:kSceneCodePGWalk];
	
}

/*
 kDateViewTotal = 12,
 
 kDateView = 0,
 kDateWeatherImage = 1,
 kDateAtPointLabel = 2,
 kDateDayNightImage = 3,
 kDateBubbleImage = 4,
 kDateDatingAnimation = 5,
 kDateBackgroundImage = 6,
 kDateLeftArrowButton = 7,
 kDateLeftActionButton = 8,
 kDateMidActionButton = 9,Ï
 kDateRightActionButton = 10,
 kDateRightArrowButton = 11,
 kDateHintLabel = 12,
*/ 
//Roles that no need to compare or edit
-(void)modifyDirectRoleForDateRegionA{
 [MUi modifyTag:kDateBackgroundImage role:kAudUDNumPGDateOccRegionA scene:kSceneCodePGDate];
 [MUi modifyTag:kDateHintLabel role:kAudUDNumPGDateHintRegionA scene:kSceneCodePGDate];

}

-(void)modifyDirectRoleForDateRegionB{
	[MUi modifyTag:kDateBackgroundImage role:kAudUDNumPGDateOccRegionB scene:kSceneCodePGDate];
	[MUi modifyTag:kDateHintLabel role:kAudUDNumPGDateHintRegionB scene:kSceneCodePGDate];
	
}

-(void)modifyDirectRoleForDateRegionC{
	[MUi modifyTag:kDateBackgroundImage role:kAudUDNumPGDateOccRegionC scene:kSceneCodePGDate];
	[MUi modifyTag:kDateHintLabel role:kAudUDNumPGDateHintRegionC scene:kSceneCodePGDate];
	
}

-(void)modifyDirectRoleForDateRegionD{
	[MUi modifyTag:kDateBackgroundImage role:kAudUDNumPGDateOccRegionD scene:kSceneCodePGDate];
	[MUi modifyTag:kDateHintLabel role:kAudUDNumPGDateHintRegionD scene:kSceneCodePGDate];
	
}

-(void)modifyDirectRoleForDateRegionE{
	[MUi modifyTag:kDateBackgroundImage role:kAudUDNumPGDateOccRegionE scene:kSceneCodePGDate];
	[MUi modifyTag:kDateHintLabel role:kAudUDNumPGDateHintRegionE scene:kSceneCodePGDate];
	
}

-(void)modifyDirectRoleForDateRegionF{
	[MUi modifyTag:kDateBackgroundImage role:kAudUDNumPGDateOccRegionF scene:kSceneCodePGDate];
	[MUi modifyTag:kDateHintLabel role:kAudUDNumPGDateHintRegionF scene:kSceneCodePGDate];
	
}

-(void)modifyDirectRoleForDateRegionG{
	[MUi modifyTag:kDateBackgroundImage role:kAudUDNumPGDateOccRegionG scene:kSceneCodePGDate];
	[MUi modifyTag:kDateHintLabel role:kAudUDNumPGDateHintRegionG scene:kSceneCodePGDate];
	
}

-(void)modifyDirectRoleForDateRegionH{
	[MUi modifyTag:kDateBackgroundImage role:kAudUDNumPGDateOccRegionH scene:kSceneCodePGDate];
	[MUi modifyTag:kDateHintLabel role:kAudUDNumPGDateHintRegionH scene:kSceneCodePGDate];
	
}

-(void)modifyDirectRoleForDateRegionI{
	[MUi modifyTag:kDateBackgroundImage role:kAudUDNumPGDateOccRegionI scene:kSceneCodePGDate];
	[MUi modifyTag:kDateHintLabel role:kAudUDNumPGDateHintRegionI scene:kSceneCodePGDate];
	
}

@end
