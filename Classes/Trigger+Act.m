//
//  Trigger+Act.m
//  PocketDraft
//
//  Created by westbugs on 10-09-17.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "Trigger+Act.h"


@implementation Trigger(Act)

-(BOOL)act{
	
	//NSLog(@"Feedback Code: %@",[self.feedbackCode description]);

	if ([self.feedbackCode isKindOfClass:[NSArray class]]) { //Operation Queue
		NSOperationQueue* oq = [[[NSOperationQueue alloc] init] autorelease];
		[oq addOperations:self.feedbackCode waitUntilFinished:NO]; // Add multiple operations
		
	}else if ([self.feedbackCode isKindOfClass:[NSDictionary class]]) { //Target-Action
		NSString* key;
		for (key in [self.feedbackCode allKeys]) {
			//if (key) 
				[[self.feedbackCode objectForKey:key] performSelector:NSSelectorFromString(key)];
			
		}
	}else {
		NSLog(@"[Trigger act] failed");
	}

	//Operation queue
	/*
	 NSOperationQueue* oq = [[[NSOperationQueue alloc] init] autorelease];
	[oq addOperations:self.feedbackCode waitUntilFinished:NO]; // Add multiple operations
	*/
	/*
	for (id k in self.feedbackCode) {
		//class k
		//objectForKey:k

	}
	*/
	
	/*
	 for (key in combo<dictionary>) {
	 Class c = classname:key
	 [c performSelector:@selector:([dictionary objectForKey:key])] 
	 }
	*/
	
	/*
	 NSOperationQueue* oq = [[NSOperationQueue alloc] init];
	 
	 [oq addOperations:self.feedbackCode waitUntilFinished:NO]; // Add multiple operations
	 
	 */
	
	return YES;
}

@end
