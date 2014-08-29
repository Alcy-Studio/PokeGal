//
//  Method.h
//  frdfrd
//
//  Created by westbugs on 10-10-08.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Method : NSObject {
	id resource;

}
-(id)initWithResource:(id)r;

@property(nonatomic, assign)id resource;

//Event
+(NSPredicate*)getPredicateWithAttrName:(NSString*)an value:(NSString*)av;
+(NSPredicate*)getPredicateWithOutAttrName:(NSString*)an value:(NSString*)av;

+(NSPredicate*)getPredicateWithAttrName1:(NSString*)an1 attrValue1:(NSString*)av1 attrName2:(NSString*)an2 attrValue2:(NSString*)av2;

//Standard
+(NSPredicate*)getPredicateWithName:(NSString*)name;
+(NSPredicate*)getPredicateWithAttr1:(NSNumber*)attributeValue1 Attr2:(NSNumber*)attributeValue2 Attr3:(NSNumber*)attributeValue3;

+(NSPredicate*)getPredicateWithAttrName1:(NSString*)an1 attrValue1:(NSString*)av1
							   AttrName2:(NSString*)an2 attrValue2:(NSString*)av2
							   AttrName3:(NSString*)an3 attrValue3:(NSString*)av3;
//setViewWithTag
+(id)getContentWithSortKey:(NSString*)k predicate:(NSPredicate*)p constraint:(NSUInteger)c scene:(NSUInteger)s role:(NSUInteger)r;

+(id)getContentWithEntity:(NSString*)e sortKey:(NSString*)k predicate:(NSPredicate*)p constraint:(NSUInteger)s;
+(NSUInteger)getDefaultRoleWithScene:(NSUInteger)s tag:(NSUInteger)t;
//predicate
+(NSPredicate*)getPredicateWithScene:(NSUInteger)s role:(NSUInteger)r;
+(NSPredicate*)getPredicateWithScene:(NSUInteger)s role:(NSUInteger)r entity:(NSUInteger)e;
//+(NSPredicate*)getPredicateForGirlWithScene:(NSUInteger)s role:(NSUInteger)r;
+(NSString*)getColumnWithScene:(NSUInteger)s role:(NSUInteger)r;
+(NSString*)checkEntityWithScene:(NSUInteger)s role:(NSUInteger)r;
//Private Method
+(NSPredicate*)getPredicateWithRecord:(NSDictionary*)d entity:(NSUInteger)e;
//get desire content for output
+(NSString*)getContentWithRecord:(NSArray*)a scene:(NSUInteger)s role:(NSUInteger)r;

@end
