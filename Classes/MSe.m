//
//  MSe.m
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MSe.h"

//Temp Se ------
#import "MLoad.h"
#import "Se.h"
#import "ConstantsGlossaryDatabase.h"
#import "ConstantsModelSe.h"
#import "ConstantsModelGeneral.h"
//Temp Se ------
@implementation MSe

+(void)playSound:(NSString*)f extension:(NSString*)e{
	// Create the URL for the source audio file. The URLForResource:withExtension: method is
    //    new in iOS 4.0.
    NSURL *path   = [[NSBundle mainBundle] URLForResource: f
											withExtension: e];
	
    // Store the URL as a CFURLRef instance
	CFURLRef soundFileURLRef = (CFURLRef) [path retain];
	SystemSoundID soundFileObject;
	
    // Create a system sound object representing the sound file.
    AudioServicesCreateSystemSoundID (
									  
									  soundFileURLRef,
									  &soundFileObject
									  );
	CFRelease (soundFileURLRef);
	AudioServicesPlaySystemSound (soundFileObject);
	
}

//Remove once touchDown Actions are completed
+(void)tempPlaySound{
	NSArray* array = [MLoad getRecordWithAttr1:[NSNumber numberWithInt:kModelGeneralScenePGAll] 
										 Attr2:[NSNumber numberWithInt:kModelSeInfoUi]  
										 Attr3:[NSNumber numberWithInt:kModelSeKindButtonPress1]  
										Entity:kGlossarySe];
	
	
	
	NSString* fn = [(Se*)[array objectAtIndex:0] fileName];
	NSString* ext = [(Se*)[array objectAtIndex:0] extension];
	
	
	[MSe playSound:fn extension:ext];
}



@end
