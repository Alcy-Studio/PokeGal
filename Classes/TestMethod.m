//
//  TestMethod.m
//  frdfrd
//
//  Created by westbugs on 10-10-08.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "TestMethod.h"


@implementation TestMethod
+(NSUInteger)getDefaultRoleWithKey:(NSString*)k{
	NSAutoreleasePool* pool = [[NSAutoreleasePool alloc]init];
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	NSUInteger i = [defaults integerForKey:k];
	[pool release];
	return i;
	//NSLog(@"%@",[defaults objectForKey:@"s1t1"]);
}

@end
