//
//  Auditor+Region.m
//  frdfrd
//
//  Created by westbugs on 10-10-28.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "Auditor+Region.h"

//Constants
#import "ConstantsRegions.h"
#import "ConstantsGlossaryDatabase.h"
#import "ConstantsAuditorUserDefaults.h"

#import "ConstantsSceneCode.h"
@interface Auditor()

-(BOOL)setRegionForScenePGMain;
-(BOOL)setRegionForScenePGAchi;
-(BOOL)setRegionForScenePGAttr;
-(BOOL)setRegionForPGTitle; // 4

-(BOOL)setRegionForPGDate; // 7
-(BOOL)setRegionForPGWalk; // 17

-(BOOL)setRegionForPGMap; // 8

-(BOOL)setRegionForPGEvent; // 9
-(BOOL)setRegionForPGRomance; // 10
-(BOOL)setRegionForPGDetail; // 11

-(BOOL)setRegionForPGArrange; // 12
-(BOOL)setRegionForPGPlace; // 13
-(BOOL)setRegionForPGSchedule; // 14

-(BOOL)setRegionForPGTalk; // 15
-(BOOL)setRegionForPGSMS; // 16


@end

@implementation Auditor(Region)

-(BOOL)setRegionWithScene:(NSUInteger)s{
	
	switch (s) {
		case kSceneCodePGMain:
			[self setRegionForScenePGMain];
			break;
		case kSceneCodePGAchi:
			[self setRegionForScenePGAchi];
			break;
		case kSceneCodePGAttr:
			[self setRegionForScenePGAttr];
			break;
			
		case kSceneCodePGTitle:
			[self setRegionForPGTitle];
			break;
		case kSceneCodePGDate:
			[self setRegionForPGDate];
			break;
		case kSceneCodePGWalk:
			[self setRegionForPGWalk];
			break;
		case kSceneCodePGMap:
			[self setRegionForPGMap];
			break;
		case kSceneCodePGEvent:
			[self setRegionForPGEvent];
			break;
		case kSceneCodePGRomance:
			[self setRegionForPGRomance];
			break;
		case kSceneCodePGDetail:
			[self setRegionForPGDetail];
			break;
		case kSceneCodePGArrange:
			[self setRegionForPGArrange];
			break;
		case kSceneCodePGPlace:
			[self setRegionForPGPlace];
			break;
		case kSceneCodePGSchedule:
			[self setRegionForPGSchedule];
			break;
		case kSceneCodePGTalk:
			[self setRegionForPGTalk];
			break;
		case kSceneCodePGSMS:
			[self setRegionForPGSMS];
			break;
			
			
		default:
			break;
	}
	if (!self.dictionary)
		return NO;
	return YES;
}

-(BOOL)setRegionForScenePGMain{return YES;}

-(BOOL)setRegionForScenePGAchi{return YES;}

-(BOOL)setRegionForScenePGAttr{return YES;}

//4
-(BOOL)setRegionForPGTitle{return YES;}
//7
-(BOOL)setRegionForPGDate{
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   
					   //Object1 for view12
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameA ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionA],
					   
					   //Object1 for view12
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameB ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionB],	
					   
					   //Object1 for view12
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameC ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionC],	
					   
					   //Object1 for view12
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameD ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionD],	
					   
					   //Object1 for view12
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameE ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionE],	
					   
					   //Object1 for view12
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameF ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionF],	
					   
					   //Object1 for view12
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameG ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionG],	
					   
					   //Object1 for view12
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameH ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionH],	
					   
					   //Object1 for view12
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameI ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGDateHintRegionI],	
					   
					   
					   nil];
	self.dictionary = d;
	//NSLog(@"%@",[self.dictionary description]);
	[d release];
	return YES;
}
//17
-(BOOL)setRegionForPGWalk{
	
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   
					   //Object1 for view12
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameA ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionA],
					   
					   //Object1 for view12
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameB ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionB],	
					   
					   //Object1 for view12
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameC ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionC],	
					   
					   //Object1 for view12
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameD ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionD],	
					   
					   //Object1 for view12
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameE ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionE],	
					   
					   //Object1 for view12
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameF ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionF],	
					   
					   //Object1 for view12
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameG ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionG],	
					   
					   //Object1 for view12
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameH ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionH],	
					   
					   //Object1 for view12
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameI ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGWalkHintRegionI],	
					   
					   
					   nil];
	self.dictionary = d;
	//NSLog(@"%@",[self.dictionary description]);
	[d release];
	return YES;
	
}


//8
-(BOOL)setRegionForPGMap{
	
	NSDictionary *d = [[NSDictionary alloc] initWithObjectsAndKeys:
					   
					   
					   //Object1-1 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameA ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionA],
					   
					   //Object1-2 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameA ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionA],
					   
					   //Object1-3 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameA ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionA],
					   
					   //Object2-1 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameB ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionB],
					   
					   //Object2-2 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameB ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionB],
					   
					   //Object2-3 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameB ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionB],
					   
					   //Object3-1 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameC ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionC],
					   
					   //Object3-2 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameC ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionC],
					   
					   //Object3-3 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameC ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionC],
					   
					   //Object4-1 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameD ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionD],
					   
					   //Object4-2 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameD ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionD],
					   
					   //Object4-3 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameD ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionD],
					   
					   //Object5-1 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameE ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionE],
					   
					   //Object5-2 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameE ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionE],
					   
					   //Object5-3 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameE ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionE],
					   
					   //Object6-1 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameF ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionF],
					   
					   //Object6-2 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameF ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionF],
					   
					   //Object6-3 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameF ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionF],
					   
					   //Object7-1 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameG ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionG],
					   
					   //Object7-2 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameG ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionG],
					   
					   //Object7-3 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameG ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionG],
					   
					   //Object8-1 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameH ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionH],
					   
					   //Object8-2 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameH ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionH],
					   
					   //Object8-3 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameH ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionH],
					   
					   //Object9-1 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameI ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapTopLvReqRegionI],
					   
					   //Object9-2 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameI ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapMidLvReqRegionI],
					   
					   //Object9-3 for view23-25
					   [NSDictionary dictionaryWithObjectsAndKeys:	
						kRegionNameI ,kGlossaryName,
						nil],
					   //Key1
					   [NSString stringWithFormat:@"%d", kAudUDNumPGMapLowLvReqRegionI],
					   
					   

					   
					   
					   nil];
	self.dictionary = d;
	//NSLog(@"%@",[self.dictionary description]);
	[d release];
	return YES;
	
}
//9
-(BOOL)setRegionForPGEvent{return YES;}
//10
-(BOOL)setRegionForPGRomance{return YES;}
//11
-(BOOL)setRegionForPGDetail{return YES;	}
//12
-(BOOL)setRegionForPGArrange{return YES;}
//13
-(BOOL)setRegionForPGPlace{return YES;}
//14
-(BOOL)setRegionForPGSchedule{return YES;}
//15
-(BOOL)setRegionForPGTalk{return YES;}
//16
-(BOOL)setRegionForPGSMS{return YES;}

@end
