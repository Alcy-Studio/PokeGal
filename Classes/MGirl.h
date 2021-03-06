//
//  MGirl.h
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

//#import <Foundation/Foundation.h>

//Parent Class
#import "Method.h"
#import "Girl.h"

@interface MGirl : Method

+(void)reportScoreToGK;

+(BOOL)getOpening;

+(NSUInteger)getMood;

+(NSUInteger)getTalk;
+(NSUInteger)getLook;
+(NSUInteger)getChat;
+(NSUInteger)getRomance:(NSUInteger)r;


+(NSUInteger)currentAt;

+(void)sumAtMax:(NSUInteger)i;
+(NSInteger)maxAt;
+(BOOL)regenAt:(NSInteger)i;

+(void)deductAtCall;
+(void)deductAtSms;
+(void)deductAtMove;

+(void)deductAtTalk;
+(void)deductAtLook;
+(void)deductAtChat;
+(void)deductAtRomance;

+(void)addAttributeNameExp:(NSString*)n1 nameLv:(NSString*)n2 value:(NSInteger)i;
+(void)subAttributeNameExp:(NSString*)n1 nameLv:(NSString*)n2 value:(NSInteger)i;

+(Girl*)getGirl;

@end
