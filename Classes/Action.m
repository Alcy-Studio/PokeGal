//
//  Action.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "Action.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"
@implementation Action

@synthesize role, resource, combo;
/*
-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	//Implementation
	return self;
}
-(void)setCombo{};
*/

-(id)getCombo{
	
	if (!self.combo)
		return nil;
	return self.combo;
	
}

-(void)setResource:(id)r{
	if (self.resource) {
		[resource release];
	}
	resource = [r retain];

}

-(void)trigger{
	if ([self.combo isKindOfClass:[NSDictionary class]]) { //Target-Action
		NSString* key;
		for (key in [self.combo allKeys]) {
			//if (key) 
			[[self.combo objectForKey:key] performSelector:NSSelectorFromString(key)];
			
		}
	}else {
		NSLog(@"[action trigger] failed");
	}
}

-(void)dealloc{
	[resource release];
	[combo release];
	[super dealloc];
}

@end
