//
//  Auditor+Girl.m
//  frdfrd
//
//  Created by westbugs on 10-10-28.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "Auditor+Girl.h"

//Constants
#import "ConstantsGirlStatus.h"
#import "ConstantsGlossaryDatabase.h"
#import "ConstantsAuditorUserDefaults.h"

#import "ConstantsSceneCode.h"
@interface Auditor()

-(BOOL)setGirlForScenePGMain;
-(BOOL)setGirlForScenePGAchi;
-(BOOL)setGirlForScenePGAttr;
-(BOOL)setGirlForPGTitle; // 4

-(BOOL)setGirlForPGDate; // 7

-(BOOL)setGirlForPGWalk; // 17

-(BOOL)setGirlForPGMap; // 8

-(BOOL)setGirlForPGEvent; // 9
-(BOOL)setGirlForPGRomance; // 10
-(BOOL)setGirlForPGDetail; // 11

-(BOOL)setGirlForPGArrange; // 12
-(BOOL)setGirlForPGPlace; // 13
-(BOOL)setGirlForPGSchedule; // 14

-(BOOL)setGirlForPGTalk; // 15
-(BOOL)setGirlForPGSMS; // 16

-(BOOL)setGirlForPGMConfirm; // 31
-(BOOL)setGirlForPGMAlert; // 32
-(BOOL)setGirlForPGMSelection; // 33



@end

@implementation Auditor(Girl)

-(BOOL)setGirlWithScene:(NSUInteger)s{
	
	switch (s) {
		case kSceneCodePGMain:
			[self setGirlForScenePGMain];
			break;
		case kSceneCodePGAchi:
			[self setGirlForScenePGAchi];
			break;
		case kSceneCodePGAttr:
			[self setGirlForScenePGAttr];
			break;
			
		case kSceneCodePGTitle:
			[self setGirlForPGTitle];
			break;
		case kSceneCodePGDate:
			[self setGirlForPGDate];
			break;
		case kSceneCodePGWalk:
			[self setGirlForPGWalk];
			break;
		case kSceneCodePGMap:
			[self setGirlForPGMap];
			break;
		case kSceneCodePGEvent:
			[self setGirlForPGEvent];
			break;
		case kSceneCodePGRomance:
			[self setGirlForPGRomance];
			break;
		case kSceneCodePGDetail:
			[self setGirlForPGDetail];
			break;
		case kSceneCodePGArrange:
			[self setGirlForPGArrange];
			break;
		case kSceneCodePGPlace:
			[self setGirlForPGPlace];
			break;
		case kSceneCodePGSchedule:
			[self setGirlForPGSchedule];
			break;
		case kSceneCodePGTalk:
			[self setGirlForPGTalk];
			break;
		case kSceneCodePGSMS:
			[self setGirlForPGSMS];
			break;
		case kSceneCodePGMConfirm:
			[self setGirlForPGMConfirm];
			break;
		case kSceneCodePGMAlert:
			[self setGirlForPGMAlert];
			break;
		case kSceneCodePGMSelection:
			[self setGirlForPGMSelection];
			break;
			
			
			
		default:
			break;
	}
	if (!self.dictionary)
		return NO;
	return YES;
}

-(BOOL)setGirlForScenePGMain{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   
					   //Object1 for view*
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kGirlStatusName1 ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMainActionPoint],
					   
									
					   nil];
	self.dictionary = d;
	[d release];
	return YES;
}

-(BOOL)setGirlForScenePGAchi{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   
					   //Object1 for view*
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kGirlStatusName1 ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAchiGiftAmount],
					   
					   //Object1 for view*
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kGirlStatusName1 ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAchiPage],
					   					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	return YES;

}

-(BOOL)setGirlForScenePGAttr{
	
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   
					   //Object1 for view*
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kGirlStatusName1 ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAttrSportAttrValue],
					   
					   //Object1 for view*
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kGirlStatusName1 ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAttrSportAttrBar],
					   
					   //Object1 for view*
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kGirlStatusName1 ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAttrMovieAttrValue],
					   
					   //Object1 for view*
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kGirlStatusName1 ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAttrMovieAttrBar],
					   
					   //Object1 for view*
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kGirlStatusName1 ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAttrMusicAttrValue],
					   
					   //Object1 for view*
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kGirlStatusName1 ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAttrMusicAttrBar],
					   
					   //Object1 for view*
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kGirlStatusName1 ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGAttrPage],
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	
	return YES;
}

//4
-(BOOL)setGirlForPGTitle{return YES;}
//7
-(BOOL)setGirlForPGDate{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   
					   //Object1 for view*
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kGirlStatusName1 ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDateActionPoint],
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	return YES;
	
}

//17
-(BOOL)setGirlForPGWalk{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   
					   //Object1 for view*
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kGirlStatusName1 ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkActionPoint],
					   
					   
					   nil];
	self.dictionary = d;
	[d release];
	return YES;
	
}

//8
-(BOOL)setGirlForPGMap{
	
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   
					   //Object1 for view*
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kGirlStatusName1 ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapActionPoint],
					   
					   
					   nil];
	self.dictionary = d;
	//NSLog(@"%@",[self.dictionary description]);
	[d release];
	return YES;
	
}
//9
-(BOOL)setGirlForPGEvent{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   
					   //Object1 for view*
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kGirlStatusName1 ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGEventActionPoint],
					   
					   
					   nil];
	self.dictionary = d;
	//NSLog(@"%@",[self.dictionary description]);
	[d release];
	return YES;
	
}
//10
-(BOOL)setGirlForPGRomance{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
											  
											  
											  //Object1 for view*
											  [NSDictionary dictionaryWithObjectsAndKeys:	
											   kGirlStatusName1 ,kGlossaryName,
											   nil],
											  //Key1
											  [NSString stringWithFormat:@"%d", kAudUDNumPGRomanceActionPoint],
											  
											  
											  nil];
	self.dictionary = d;
	//NSLog(@"%@",[self.dictionary description]);
	[d release];
	return YES;
}
//11
-(BOOL)setGirlForPGDetail{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   
					   //Object1 for view*
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kGirlStatusName1 ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDetailAtPointLabel],
					   
					   
					   nil];
	self.dictionary = d;
	//NSLog(@"%@",[self.dictionary description]);
	[d release];
	return YES;	
}
//12
-(BOOL)setGirlForPGArrange{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   
					   //Object1 for view*
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kGirlStatusName1 ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGArrangeAtPointLabel],
					   
					   
					   nil];
	self.dictionary = d;
	//NSLog(@"%@",[self.dictionary description]);
	[d release];
	return YES;
}
//13
-(BOOL)setGirlForPGPlace{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   
					   //Object1 for view*
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kGirlStatusName1 ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGPlaceAtPointLabel],
					   
					   
					   nil];
	self.dictionary = d;
	//NSLog(@"%@",[self.dictionary description]);
	[d release];
	return YES;
}
//14
//12
-(BOOL)setGirlForPGSchedule{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   
					   //Object1 for view*
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kGirlStatusName1 ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGScheduleAtPointLabel],
					   
					   
					   nil];
	self.dictionary = d;
	//NSLog(@"%@",[self.dictionary description]);
	[d release];
	return YES;
}

//15
-(BOOL)setGirlForPGTalk{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   
					   //Object1 for view*
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kGirlStatusName1 ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGTalkActionPoint],
					   
					   
					   nil];
	self.dictionary = d;
	//NSLog(@"%@",[self.dictionary description]);
	[d release];
	return YES;
}
//16
-(BOOL)setGirlForPGSMS{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   
					   //Object1 for view*
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kGirlStatusName1 ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGSMSAtPointLabel],
					   
					   
					   nil];
	self.dictionary = d;
	//NSLog(@"%@",[self.dictionary description]);
	[d release];
	return YES;
}

//31
-(BOOL)setGirlForPGMConfirm{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   
					   //Object1 for view*
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kGirlStatusName1 ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMConfirmAtPointLabel],
					   
					   
					   nil];
	self.dictionary = d;
	//NSLog(@"%@",[self.dictionary description]);
	[d release];
	return YES;
}

//32
-(BOOL)setGirlForPGMAlert{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   
					   //Object1 for view*
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kGirlStatusName1 ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMAlertAtPointLabel],
					   
					   
					   nil];
	self.dictionary = d;
	//NSLog(@"%@",[self.dictionary description]);
	[d release];
	return YES;
}

//33
-(BOOL)setGirlForPGMSelection{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   
					   //Object1 for view*
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kGirlStatusName1 ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMSelectionAtPointLabel],
					   
					   
					   nil];
	self.dictionary = d;
	//NSLog(@"%@",[self.dictionary description]);
	[d release];
	return YES;
}

@end
