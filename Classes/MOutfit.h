//
//  MOutfit.h
//  frdfrd
//
//  Created by westbugs on 11-02-09.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "Method.h"

@class Outfit;

@class SkinTone, Costume, Hairstyle, Item, Facial;
@interface MOutfit : Method

+(Outfit*)getOutfit;

+(SkinTone*)getOutfitSkinTone;
+(Costume*)getOutfitCostume;
+(Hairstyle*)getOutfitHairstyle;
+(Item*)getOutfitItem;
+(Facial*)getOutfitFacial;


+(void)setOutfitSkinTone:(NSUInteger)role;
+(void)setOutfitCostume:(NSUInteger)role;
+(void)setOutfitHairstyle:(NSUInteger)role;
+(void)setOutfitItem:(NSUInteger)role;
+(void)setOutfitFacial:(NSUInteger)role;


@end
