//
//  ActPGMainAutoSetup+Combo.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMainAutoSetup+Combo.h"

//Additional
#import "ActPGMainAutoSetup+Selector.h"

#import "ConstantsTmpDate.h"

//Test
#import "TestAction.h"
@implementation ActPGMainAutoSetup(Combo)

-(void)setComboAuto{
	NSLog(@"ActPGMainAutoSetup - SetComboAuto");
	
	NSString* action1 = NSStringFromSelector(@selector(setGeography));

	NSString* action2 = NSStringFromSelector(@selector(setViewWithTag));
	NSString* action3;

	id target = self;
	
	NSDictionary* ta;
	NSLog(@"Missing Date: %i", [[NSUserDefaults standardUserDefaults] integerForKey:kTmpMissingDate]);
	if ([self checkEvent]) {
		action3 = NSStringFromSelector(@selector(presentDelayModal));
		
		ta = [[NSDictionary alloc]initWithObjectsAndKeys:
							target, action1,
							target, action2,
							target, action3,
	
							
							nil];
	} else if ([[NSUserDefaults standardUserDefaults] integerForKey:kTmpMissingDate] != 0){
		action3 = NSStringFromSelector(@selector(presentMissingDate));
		
		ta = [[NSDictionary alloc]initWithObjectsAndKeys:
			  target, action1,
			  target, action2,
			  target, action3,
			  
			  
			  nil];

		
	} else {
		action3 = NSStringFromSelector(@selector(delayGiftSign));

		ta = [[NSDictionary alloc]initWithObjectsAndKeys:
							target, action1,
							target, action2,
							target, action3,

							
							nil];
	}

		
	combo = [[NSDictionary alloc]initWithDictionary:ta];
	[ta release];
	/*
	NSMutableArray* aOfOps = [[NSMutableArray alloc]init];
	
	//NSInvocationOperation* op = [[NSInvocationOperation alloc] initWithTarget:self
//															selector:@selector(setViewWithTag) object:nil];
	
	NSBlockOperation* op = [NSBlockOperation blockOperationWithBlock: ^{
		[self setViewWithTag];
		// Do some work.
	}];
	
	[aOfOps addObject:op];
	[op release];
	
	combo = [[NSArray alloc]initWithArray:aOfOps];
	[aOfOps release];
	*/
	/*
	NSBlockOperation* theOp = [NSBlockOperation blockOperationWithBlock: ^{
		NSLog(@"Beginning operation.\n");
		// Do some work.
	}];
	*/
	//[self setViewWithTag];
	
	/*
	 for (NSUInteger i = 1; i <= kMainViewTotal; i++) {
	 [self setViewWithTag:[NSNumber numberWithUnsignedInt:i]];
	 }
	 */
	//queue test
	/*
	NSInvocationOperation* op1 = [[NSInvocationOperation alloc] initWithTarget:self
								selector:@selector(selectorTest1) object:nil];
	
	NSInvocationOperation* op2 = [[NSInvocationOperation alloc] initWithTarget:self
								selector:@selector(setViewWithTag:) object:[NSNumber numberWithInt:1]];
	
	NSArray* aOfOps = [[NSArray alloc]initWithObjects:op1, op2, nil];
	
	[op1 release]; 
	[op2 release];
	combo = [[NSArray alloc]initWithArray:aOfOps];
	[aOfOps release];
	*/
	
	
	//Operation Queue
	
	/*
	NSMutableArray* aOfOps = [[NSMutableArray alloc]init];
	
	for (NSUInteger i = 1; i <= kMainViewTotal; i++) {
		NSInvocationOperation* op = [[NSInvocationOperation alloc] initWithTarget:self
								selector:@selector(setViewWithTag:) object:[NSNumber numberWithInt:i]];
		[aOfOps addObject:op];
		[op release];
	}
	combo = [[NSArray alloc]initWithArray:aOfOps];
	[aOfOps release];
	*/
	
	/*
	//Test
	TestAction* ta = [[TestAction alloc]init];
	[ta testPredicate];
	[ta release];
	*/
	 
	/*
	 combo = [[NSArray alloc]initWithObjects:@"selector1", nil];

	 [NSDictionary dictionaryWithObjectsAndKeys:
	 @"quattuor", @"four", @"quinque", @"five", @"sex", @"six", nil];
	*/
}

@end
