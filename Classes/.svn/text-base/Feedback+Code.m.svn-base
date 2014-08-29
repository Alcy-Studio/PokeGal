//
//  Feedback+Code.m
//  PocketDraft
//
//  Created by westbugs on 10-09-17.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "Feedback+Code.h"

//#import "ActPGMainLActButtonTUpInside.h"
#import "ActionProtocol.h"
#import "Action.h"
@implementation Feedback(Code)

-(id)getCode{
	
	//NSLog(@"%@", self.decisionCode);
	//initial the classname with NSBundle, 
	NSBundle *bundle = [NSBundle mainBundle];
	Class class = [bundle classNamed:self.decisionCode];
	id instance = [[[class alloc]initWithRole:self.roleCode] autorelease];
	if (![instance isKindOfClass:class]){
		NSLog(@"Feedback - getCode return nil");
		return nil;
	}
	[instance setCombo];
	return [instance combo];
	/*
	id d;

	if ([[instance combo] isKindOfClass:[NSArray class]]) 
		d = [[NSArray alloc]initWithArray:[instance combo]];
	else if ([[instance combo] isKindOfClass:[NSDictionary class]])
		//d = [[NSDictionary alloc]initWithDictionary:[instance combo]];
		d = [NSDictionary dictionaryWithDictionary:[instance combo]];

	else 
		NSLog(@"%@", [[[instance combo] class] description]);

	//NSArray *d = [[NSArray alloc]initWithArray:[instance combo]];
	[instance release];
	return [d autorelease];
	*/
}

-(id)getCodeWithResource:(id)r{
	//NSLog(@"%@", self.decisionCode);

	//initial the classname with NSBundle, 
	NSBundle *bundle = [NSBundle mainBundle];
	Class class = [bundle classNamed:self.decisionCode];
	id instance = [[[class alloc]initWithRole:self.roleCode] autorelease];
	if (![instance isKindOfClass:class]){
		return nil;
	}
	[instance setResource:r];
	[instance setCombo];
	return [instance combo];
/*
	id d;
	if ([[instance combo] isKindOfClass:[NSArray class]]) 
		d = [[NSArray alloc]initWithArray:[instance combo]];
	else if ([[instance combo] isKindOfClass:[NSDictionary class]]){
		NSLog(@"%@", [[[instance combo] class] description]);

		d = [[NSDictionary alloc]initWithDictionary:[instance combo]];
	}else 
		NSLog(@"%@", [[[instance combo] class] description]);


	[instance release];
	return [d autorelease];
	*/
}
@end
