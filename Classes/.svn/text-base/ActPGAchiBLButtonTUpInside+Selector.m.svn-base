//
//  ActPGAchiBLButtonTUpInside+Selector.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGAchiBLButtonTUpInside+Selector.h"

#import "PGAchiViewController.h"

#import "ConstantsModelGeneral.h"
#import "ConstantsModelTextOut.h"
#import "ConstantsModelTextOutKindGift.h"
#import "ConstantsGlossaryDatabase.h"

#import "MLoad.h"

static unsigned int const tag1 = 19;
static unsigned int const tag2 = 18;

@implementation ActPGAchiBLButtonTUpInside(Selector)

-(void)setHintWithGiftDescriptionNone{
	NSString* s = [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGAchi] 
									   Attr2:[NSNumber numberWithInt:kModelTextOutInfoGift] 
									   Attr3:[NSNumber numberWithInt:kModelTextOutKindGiftHint7] 
									  Entity:kGlossaryTextOut
										 Key:kGlossaryContent];
	if (!s){
		NSLog(@"ActPGAchiBLButtonTUpInside - setHintWithGiftDescriptionNone");	
		return;
	}
	
	if (![self.resource isMemberOfClass:[PGAchiViewController class]]){
		NSLog(@"ActPGAchiBLButtonTUpInside: c is not PGAchiViewController");
		return;
	}
	id v = [[(PGAchiViewController*)self.resource view] viewWithTag:tag1];
	
	if (![v isMemberOfClass:[UILabel class]]){
		NSLog(@"ActPGAchiBLButtonTUpInside: v is not UILabel");
		return;
	}
	[(UILabel*)v setText:[NSString stringWithFormat:@"%@", NSLocalizedString(s, @"Localized")]];
	
	
}

-(void)setMsgWithGiftDescriptionNone{
	NSString* s = [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGAchi] 
									   Attr2:[NSNumber numberWithInt:kModelTextOutInfoGift] 
									   Attr3:[NSNumber numberWithInt:kModelTextOutKindGiftNoteNone] 
									  Entity:kGlossaryTextOut
										 Key:kGlossaryContent];
	if (!s){
		NSLog(@"ActPGAchiULButtonTUpInside - setMsgWithGiftDescriptionNone");	
		return;
	}
	
	if (![self.resource isMemberOfClass:[PGAchiViewController class]]){
		NSLog(@"ActPGAchiULButtonTUpInside: c is not PGAchiViewController");
		return;
	}
	id v = [[(PGAchiViewController*)self.resource view] viewWithTag:tag2];
	
	if (![v isMemberOfClass:[UILabel class]]){
		NSLog(@"ActPGAchiULButtonTUpInside: v is not UILabel");
		return;
	}
	[(UILabel*)v setText:[NSString stringWithFormat:@"%@", NSLocalizedString(s, @"Localized")]];
	
	
	
}

-(void)setMsgWithGiftDescriptionOn{
	NSString* s = [MLoad getContentWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGAchi] 
									   Attr2:[NSNumber numberWithInt:kModelTextOutInfoGift] 
									   Attr3:[NSNumber numberWithInt:kModelTextOutKindGiftNote7] 
									  Entity:kGlossaryTextOut
										 Key:kGlossaryContent];
	if (!s){
		NSLog(@"ActPGAchiUMButtonTUpInside - setMsgWithGiftDescriptionOn");	
		return;
	}
	
	if (![self.resource isMemberOfClass:[PGAchiViewController class]]){
		NSLog(@"ActPGAchiUMButtonTUpInside: c is not PGAchiViewController");
		return;
	}
	id v = [[(PGAchiViewController*)self.resource view] viewWithTag:tag2];
	
	if (![v isMemberOfClass:[UILabel class]]){
		NSLog(@"ActPGAchiUMButtonTUpInside: v is not UILabel");
		return;
	}
	[(UILabel*)v setText:[NSString stringWithFormat:@"%@", NSLocalizedString(s, @"Localized")]];
	
	
	
}
@end
