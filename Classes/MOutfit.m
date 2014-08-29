//
//  MOutfit.m
//  frdfrd
//
//  Created by westbugs on 11-02-09.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "MOutfit.h"

#import "Outfit.h"

#import "SkinTone.h"
#import "Costume.h"
#import "Hairstyle.h"
#import "Item.h"
#import "Facial.h"


//Method
#import "MSkinTone.h"
#import "MCostume.h"
#import "MHairstyle.h"
#import "MItem.h"
#import "MFacial.h"



#import "MSave.h"
#import "MLoad.h"

//Constants
#import "ConstantsGlossaryDatabase.h"

@implementation MOutfit

+(Outfit*)getOutfit{
	NSArray* a = [MLoad getRecordsWithEntity:kGlossaryEntityOutfit];
	Outfit* o = (Outfit*)[a objectAtIndex:0];
	return o;
}

+(SkinTone*)getOutfitSkinTone{
	Outfit* o = [self getOutfit];
	SkinTone* skinTone = [MSkinTone getSkinTone:[o.skinTone intValue]];
	return skinTone;
}
+(Costume*)getOutfitCostume{
	Outfit* o = [self getOutfit];
	Costume* costume = [MCostume getCostume:[o.costume intValue]];
	return costume;
}
+(Hairstyle*)getOutfitHairstyle{
	Outfit* o = [self getOutfit];
	Hairstyle* hairstyle = [MHairstyle getHairstyle:[o.hairstyle intValue]];
	return hairstyle;
}
+(Item*)getOutfitItem{
	Outfit* o = [self getOutfit];
	Item* item = [MItem getItem:[o.item intValue]];
	return item;
}
+(Facial*)getOutfitFacial{
	Outfit* o = [self getOutfit];
	Facial* facial = [MFacial getFacial:[o.facial intValue]];
	return facial;
}

+(void)setOutfitSkinTone:(NSUInteger)role{
	Outfit* o = [self getOutfit];
	o.skinTone = [NSNumber numberWithInt:role];
	[MSave saveMoc];
}
+(void)setOutfitCostume:(NSUInteger)role{
	Outfit* o = [self getOutfit];
	o.costume = [NSNumber numberWithInt:role];
	[MSave saveMoc];
}
+(void)setOutfitHairstyle:(NSUInteger)role{
	Outfit* o = [self getOutfit];
	o.hairstyle = [NSNumber numberWithInt:role];
	[MSave saveMoc];
}
+(void)setOutfitItem:(NSUInteger)role{
	Outfit* o = [self getOutfit];
	o.item = [NSNumber numberWithInt:role];
	[MSave saveMoc];
}
+(void)setOutfitFacial:(NSUInteger)role{
	Outfit* o = [self getOutfit];
	o.facial = [NSNumber numberWithInt:role];
	[MSave saveMoc];
}

@end
