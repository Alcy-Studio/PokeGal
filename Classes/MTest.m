//
//  MTest.m
//  frdfrd
//
//  Created by westbugs on 11-02-07.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "MTest.h"

#import "PGNavController.h"

@implementation MTest

+(BOOL)testCurrentRootViewController:(NSString*)s{
	PGNavController *nc = (PGNavController*)[[[UIApplication sharedApplication] keyWindow] rootViewController];
	
	Class class = [[NSBundle mainBundle] classNamed:s];
	if ([[nc topViewController] isKindOfClass:class]) {
		NSLog(@"testCurrentRootViewController - Passed: %@", [nc topViewController]);
		return YES;
	} else {
		NSLog(@"testCurrentRootViewController - Failed: %@", [nc topViewController]);
		return NO;
	}

	
}

@end
