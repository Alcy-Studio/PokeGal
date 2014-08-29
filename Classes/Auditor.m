//
//  Auditor.m
//  PocketDraft
//
//  Created by westbugs on 10-09-17.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "Auditor.h"


@implementation Auditor

@synthesize dictionary;

-(id)init{
	[super init];
	return self;
}

-(void)dealloc{
	[dictionary release];
	[super dealloc];
}
@end
