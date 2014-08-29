//
//  ActPGTitleNewButtonTUpInside+Selector.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGTitleNewButtonTUpInside+Selector.h"

//for -(void)switchViewToPGMainWithTFlipFromR
#import "MUi.h"


#import "PGMainSVController.h"

#import "PGEventViewController.h"

#import "ConstantsTmpAction.h"

//Test
#import "MOutfit.h"
#import "Outfit.h"

#import "MCostume.h"
#import "Costume.h"

#import "MStore.h"

#import "ConstantsPGMConfirm.h"
#import "ConstantsAuditorUserDefaults.h"
#import "ConstantsSceneCode.h"

@implementation ActPGTitleNewButtonTUpInside(Selector)

-(void)switchViewToPGMainWithTFlipFromR{
	if (![MUi switchViewWithController:@"PGMainSVController" transition:UIViewAnimationTransitionFlipFromRight])
		NSLog(@"ActPGTitleNewButtonTUpInside - switchViewWithController: failed");	
}

//Test
-(void)presentModalPGEvent{
	[MUi presentModal:@"PGEventViewController" transition:UIModalTransitionStyleCrossDissolve animated:YES];
}

//Test
-(void)testOutfit{
	Outfit* o = [MOutfit getOutfit];
	NSLog(@"SkinTone: %@; Costume: %@; Hairstyle: %@; Item: %@",o.skinTone, o.costume, o.hairstyle, o.item);
	Costume* c = [MCostume getCostume:[o.costume intValue]];
	NSLog(@"Costume image: %@", c.image);
	
}

-(void)setTmpAction{
	[MUi modifyUserDefaultWithKey:kTmpAction value:kTmpActionPGTitleNew];
}

-(void)reset{
	[MStore reset];
}

-(void)setRoleForConfirm{
	[MUi modifyTag:kConfirmTitleLabel role:kAudUDNumPGMConfirmTitle11 scene:kSceneCodePGMConfirm];
	[MUi modifyTag:kConfirmTextView role:kAudUDNumPGMConfirmTextView11 scene:kSceneCodePGMConfirm];
	
}

-(void)presentModalConfirm{
	
	[MUi presentModal:@"PGMConfirmViewController" transition:UIModalTransitionStyleCrossDissolve animated:YES];
}
@end
