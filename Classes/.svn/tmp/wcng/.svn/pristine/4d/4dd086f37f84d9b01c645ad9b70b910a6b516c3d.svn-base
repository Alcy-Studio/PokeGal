//
//  Decision+Code.m
//  PocketDraft
//
//  Created by westbugs on 10-09-17.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "Decision+Code.h"

//Additional 
#import "Auditor.h"
#import "Auditor+Dictionary.h"

//Constants
#import "ConstantsAuditor.h"

@implementation Decision(Code)

-(NSString*)getCode{
	
	//Decode InterpreterCode
	Auditor *auditor = [[Auditor alloc]init];
	[auditor setDictionaryWithKey:kDecision];
	NSDictionary *d = [[NSDictionary alloc] initWithDictionary:auditor.dictionary];
	[auditor release];
	
	//NSLog(@"InterpreterCode: %@",self.interpreterCode);
	//Retrieve Action code from Auditor 
	NSString* s;
	s = (NSString*)[d objectForKey:self.interpreterCode];
	[d release];
	 
	if (!s) {
		NSLog(@"Interpreter Getcode Failed");
		return nil;
	}
	//NSLog(@"Decision Code: %@",s);

	return s;
}
-(NSString*)getCodeWithResource:(id)r{
	
	return [self getCode];
	
}

@end
