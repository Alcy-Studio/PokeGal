//
//  ActPGEventMsgButtonTUpInside+Combo.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGEventMsgButtonTUpInside+Combo.h"

#import "ConstantsTmpScript.h" //Constants

#import "MUi.h" //Method
@implementation ActPGEventMsgButtonTUpInside(Combo)

-(void)setComboMsgButton{
	NSLog(@"ActPGEventMsgButtonTUpInside - SetComboMsgButton");
	
	//combo = [[NSArray alloc]initWithObjects:nil];
	
	//set Script Current
	NSUInteger i = [[NSUserDefaults standardUserDefaults] integerForKey:kTmpScriptCurrent];
	NSUInteger max = [[NSUserDefaults standardUserDefaults] integerForKey:kTmpScriptMax];

	NSString* s = [NSString stringWithFormat:@"%@%i", kTmpScriptDesc, i];
	self.scriptRec = s;
	//NSLog(@"%@", scriptRec);

	NSDictionary* ta;
	id target = self;

	NSString* action1;
	NSString* action2;
	NSString* action3;
	NSString* action4;
	NSString* action5;
	NSString* action6;
	NSString* action7;
	NSString* action8;

	if (i >= max) { //Exceed Max Script
		action1 = NSStringFromSelector(@selector(dismissModal));
		action2 = NSStringFromSelector(@selector(refreshPGAttr));
		action3 = NSStringFromSelector(@selector(refreshPGAchi));

		ta = [[NSDictionary alloc]initWithObjectsAndKeys:
			  target, action1,
			  target, action2,
			  target, action3,

			  nil];
	}else if (i == --max) {
		action1 = NSStringFromSelector(@selector(setEventBgm));
		action2 = NSStringFromSelector(@selector(setEventVoice));
		action3 = NSStringFromSelector(@selector(setEventSound));
		action4 = NSStringFromSelector(@selector(setEventEffect));
		action5 = NSStringFromSelector(@selector(setEventAvatar));
		action6 = NSStringFromSelector(@selector(setEventBackground));
		action7 = NSStringFromSelector(@selector(setEventText));
		
		action8 = NSStringFromSelector(@selector(popAttribute));
		
		ta = [[NSDictionary alloc]initWithObjectsAndKeys:
			  target, action1,
			  target, action2,
			  target, action3,
			  target, action4,
			  target, action5,
			  target, action6,
			  target, action7,
			  target, action8,
			  nil];

	} else {
		action1 = NSStringFromSelector(@selector(setEventBgm));
		action2 = NSStringFromSelector(@selector(setEventVoice));
		action3 = NSStringFromSelector(@selector(setEventSound));
		action4 = NSStringFromSelector(@selector(setEventEffect));
		action5 = NSStringFromSelector(@selector(setEventAvatar));
		action6 = NSStringFromSelector(@selector(setEventBackground));
		action7 = NSStringFromSelector(@selector(setEventText));

		ta = [[NSDictionary alloc]initWithObjectsAndKeys:
			  target, action1,
			  target, action2,
			  target, action3,
			  target, action4,
			  target, action5,
			  target, action6,
			  target, action7,

			  nil];
	}


	
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	
	[MUi modifyUserDefaultWithKey:kTmpScriptCurrent value:++i];

}

@end
