//
//  UnusedConcept.m
//  PocketDraft
//
//  Created by westbugs on 10-08-24.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "UnusedConcept.h"
//#import <objc/runtime.h>
//libobjc.A.dylib

@implementation UnusedConcept

/*
 -(void)AssociativeReferences{
 NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
 
 static char overviewKey;
 
 NSArray *array = [[NSArray alloc] initWithObjects:@"One", @"Two", @"Three", nil];
 // For the purposes of illustration, use initWithFormat: to ensure we get a
 // deallocatable string
 NSString *overview = [[NSString alloc] initWithFormat:@"%@", @"First three numbers"];
 
 objc_setAssociatedObject(array, &overviewKey, overview, OBJC_ASSOCIATION_RETAIN);
 [overview release];
 
 NSString *associatedObject = (NSString *)objc_getAssociatedObject(array, &overviewKey);
 NSLog(@"associatedObject: %@", associatedObject);
 
 objc_setAssociatedObject(array, &overviewKey, nil, OBJC_ASSOCIATION_ASSIGN);
 [array release];
 
 [pool drain];
 }
 */



//

@end
