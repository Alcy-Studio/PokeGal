//
//  Auditor+Dictionary.m
//  PocketDraft
//
//  Created by westbugs on 10-09-17.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "Auditor+Dictionary.h"

//Categories
	//Think
#import "Auditor+ValidIn.h"
#import "Auditor+Interpreter.h"
#import "Auditor+UserDefaults.h"
#import "Auditor+Decision.h"
	//Database
#import "Auditor+Entity.h"
#import "Auditor+Record.h"
		//Base
#import "Auditor+Se.h"
#import "Auditor+Graphic2D.h"
#import "Auditor+Ui.h"
#import "Auditor+TextOut.h"
#import "Auditor+Bgm.h"
#import "Auditor+Voice.h"
#import "Auditor+Graphic3D.h"
#import "Auditor+ScriptOut.h"
		//AddOn
#import "Auditor+Girl.h"
#import "Auditor+Gift.h"
#import "Auditor+Region.h"

//Constants
#import "ConstantsAuditor.h"
//Scene
#import "ConstantsSceneCode.h"

@implementation Auditor(Dictionary)

-(BOOL)setDictionaryWithKey:(unsigned int)k{
	//NSLog(@"Auditor setDictionaryWithKey: %d", k);
	switch (k) {
		case kValidIn:
			if(![self setValidIn])
				NSLog(@"Auditor setValidIn Failed");
			break;
		case kInterpreter:
			if(![self setInterpreter])
				NSLog(@"Auditor setInterpreter Failed");
			break;
		/*
		case kEvaluation:
			<#statements#>
			break;
		*/
		case kDecision:
			if(![self setDecision])
				NSLog(@"Auditor setDecision Failed");
			break;
		/*
		case kConstraint:
			<#statements#>
			break;
		case kFeedback:
			<#statements#>
			break;
		case kValidOut:
			<#statements#>
			break;
		*/
			
		//UserDefault
		case kUserDefaults:
			if(![self setUserDefaults])
				NSLog(@"Auditor setUserDefaults Failed");
			break;

		default:
			break;
	} 
	if (!dictionary) {
		NSLog(@"Auditor dictionaryWithKeyFailed");
		return NO;
	}
	return YES;
}

-(BOOL)setDictionaryWithKey:(unsigned int)k target:(unsigned int)t{
	//NSLog(@"Auditor setDictionaryWithKey: %d; target: %d", k, t);

	switch (k) {
		case kEntity:
			if(![self setEntityWithScene:t])
				NSLog(@"[Auditor setEntityWithScene:t] Failed");
			break;
		case kRecord:
			if(![self setRecordWithScene:t])
				NSLog(@"[Auditor setRecordWithScene:t] Failed");
			break;
		case kEntityGlossary:
			if(![self setEntityGlossaryWithScene:t])
				NSLog(@"[Auditor setEntityGlossaryWithScene:t] Failed");
			break;
		case kSe:
			if(![self setSe])
				NSLog(@"Auditor setSe Failed");
			break;
		case kGraphic2D:
			if(![self setGraphic2DWithScene:t])
				NSLog(@"[Auditor setGraphic2DWithScene:t] Failed");
			break;
		case kUi:
		case kTextOut:
			if(![self setTextOutWithScene:t])
				NSLog(@"[Auditor setTextOutWithScene:t] Failed");
			/*
			switch (t) {
				case kSceneCodePGAchi:
					if(![self setTextOutForPGAchi])
						NSLog(@"Auditor setTextOutForPGAchi Failed");
					break;
				case kSceneCodePGMain:
					if(![self setTextOutForPGMain])
						NSLog(@"Auditor setTextOutForPGMain Failed");
					break;
				case kSceneCodePGAttr:
					if(![self setTextOutForPGAttr])
						NSLog(@"Auditor setTextOutForPGAttr Failed");
					break;
				default:
					break;
			}
			*/
			break;
		case kBgm:
			if(![self setBgm])
				NSLog(@"Auditor setBgm Failed");
			break;
		case kVoice:
			if(![self setVoice])
				NSLog(@"Auditor setVoice Failed");
			break;
		case kGraphic3D:
			if(![self setGraphic3D])
				NSLog(@"Auditor setGraphic3D Failed");
			break;
		case kScriptOut:
			if(![self setScriptOut])
				NSLog(@"Auditor setScriptOut Failed");
			break;
			
			//Addon
		case kGirl:
			if(![self setGirlWithScene:t])
				NSLog(@"Auditor setGirlWithScene:t Failed");
			break;
		case kGift:
			if(![self setGift])
				NSLog(@"Auditor setGift Failed");
			break;
		case kRegion:
			if(![self setRegionWithScene:t])
				NSLog(@"Auditor setRegion Failed");
			break;
			
			
		default:
			break;
	} 
	//Debug: Failed to find content from sqlite
	//NSLog(@"%@", [dictionary description]);
	if (!dictionary) {
		NSLog(@"Auditor dictionaryWithKeyFailed");
		return NO;
	}
	return YES;
}

@end
