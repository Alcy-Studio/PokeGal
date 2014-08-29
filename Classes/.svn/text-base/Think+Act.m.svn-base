//
//  Think+Act.m
//  PocketDraft
//
//  Created by westbugs on 10-09-16.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "Think+Act.h" 

#import "ValidIn.h"
#import "ValidIn+Check.h" 
#import "ValidIn+Code.h"

#import "Interpreter.h"
#import "Interpreter+Check.h"
#import "Interpreter+Code.h"

#import "Evaluation.h"
#import "Evaluation+Check.h"
#import "Evaluation+Code.h"

#import "Decision.h"
#import "Decision+Check.h"
#import "Decision+Code.h"

#import "Constraint.h"
#import "Constraint+Check.h"
#import "Constraint+Code.h"

#import "Feedback.h"
#import "Feedback+Check.h"
#import "Feedback+Code.h"

/*
#import "ValidOut.h"
#import "ValidOut+Check.h"
#import "ValidOut+Code.h"
*/

#import "Trigger.h"
#import "Trigger+Check.h"
#import "Trigger+Code.h"
#import "Trigger+Act.h"


@implementation Think(Act)

-(BOOL)act{
		
#pragma mark ValidIn
	ValidIn *validIn = [[ValidIn alloc]initWithResource:self.resource];
	if (![validIn check]){
		NSLog(@"ValidIn check failed");
		[validIn release];
		return NO;
	}
	self.validInCode = [validIn getCode];
	[validIn release];

	
#pragma mark Interpreter
	//NSLog(@"Interpreter Code, scene: %d; tag: %d; role: %d; event: %d",self.sceneCode, self.tagCode, self.roleCode, self.eventCode);
	Interpreter *interpreter = [[Interpreter alloc]initWithScene:self.sceneCode tag:self.tagCode role:self.roleCode event:self.eventCode];
	if (![interpreter check]){
		NSLog(@"Interpreter check failed");
		[interpreter release];
		return NO;
	}
	self.interpreterCode = [interpreter getCode];
	[interpreter release];
	//NSLog(@"Interpreter Code: %@",self.interpreterCode);

#pragma mark Evaluation
	Evaluation *evaluation = [[Evaluation alloc]initWithInterpreterCode:self.interpreterCode];
	if (![evaluation check]){
		NSLog(@"Evaluation check failed");
		[evaluation release];
		return NO;
	}
	self.evaluationCode = [evaluation getCode];
	[evaluation release];
	
	
#pragma mark Decision
	Decision *decision = [[Decision alloc]initWithInterpreterCode:self.interpreterCode];
	if (![decision check]){
		NSLog(@"Decision check failed");
		[decision release];
		return NO;
	}
	if (self.resource) 
		self.decisionCode = [decision getCodeWithResource:self.resource];
	else 
		self.decisionCode = [decision getCode];

	[decision release];
	//NSLog(@"Decision Code: %@",self.interpreterCode);

#pragma mark Constraint
	Constraint *constraint = [[Constraint alloc]initWithDecisionCode:self.decisionCode];
	if (![constraint check]){
		NSLog(@"Constraint check failed");
		[constraint release];
		return NO;
	}
	self.constraintCode = [constraint getCode];
	[constraint release];
	
#pragma mark Feedback
	Feedback *feedback = [[Feedback alloc]initWithDecisionCode:self.decisionCode role:self.roleCode];
	if (![feedback check]){
		NSLog(@"Feedback check failed");
		[feedback release];
		return NO;
	}
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	if (self.resource)
		self.feedbackCode = [feedback getCodeWithResource:self.resource];
	else
		self.feedbackCode = [feedback getCode];
	[pool release];
	[feedback release];
	//NSLog(@"Feedback Code: %@",self.feedbackCode);

#pragma mark ValidOut
	/*
	ValidOut *validOut = [[ValidOut alloc]initWithFeedbackCode:self.feedbackCode];
	if (![validOut check]){
		NSLog(@"ValidOut check failed");
		[validOut release];
		return NO;
	}
	self.validOutCode = [validOut getCode];
	[validOut act];
	[validOut release];
	*/
#pragma mark Trigger
	Trigger *trigger = [[Trigger alloc]initWithDecisionCode:self.decisionCode feedbackCode:self.feedbackCode];
	if (![trigger check]){
		NSLog(@"Trigger check failed");
		[trigger release];
		return NO;
	}
	self.triggerCode = [trigger getCode];
	[trigger act];
	[trigger release];
	

	


	return YES;
}

@end
