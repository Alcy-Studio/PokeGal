//
//  Interpreter+Code.m
//  PocketDraft
//
//  Created by westbugs on 10-09-17.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "Interpreter+Code.h"

//Class
#import "Auditor.h"
#import "Auditor+Dictionary.h"

//Constants
#import "ConstantsAuditor.h"

//#import "ConstantsAuditorInterpreter.h"

@implementation Interpreter(Code)

+(unsigned int)getRoleWithScene:(unsigned int)s tag:(unsigned int)t{
	NSString* str = [[NSString alloc]initWithFormat:@"s%dt%d",s, t];
	
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    //NSDictionary *appDefaults = [NSDictionary dictionaryWithObject:@"YES" forKey:@"DeleteBackup"];
	
	NSUInteger r = [defaults integerForKey:str];
	[str release];
	//NSLog(@"Role: %d", r);
	return r;
}

-(NSString*)getCode{
	
	//Set Auditor and Action Code
	/*
	Auditor *auditor = [[Auditor alloc]init];
	[auditor setDictionaryWithKey:kInterpreter];
	NSDictionary *d = [[NSDictionary alloc] initWithDictionary:auditor.dictionary];
	[auditor release];
	*/
	
	/*
	//Combine code into one
	NSString* s1 = [[NSString alloc]initWithFormat:@"s%dt%d",self.sceneCode, self.tagCode];

	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    //NSDictionary *appDefaults = [NSDictionary dictionaryWithObject:@"YES" forKey:@"DeleteBackup"];
	
	self.roleCode = [defaults integerForKey:s1];
	[s1 release];
	NSString* s2 = [[NSString alloc]initWithFormat:@"s%dt%dr%de%d",self.sceneCode, self.tagCode, self.roleCode, self.eventCode];
	return [s2 autorelease];
	*/
	
	NSString* s = [[NSString alloc]initWithFormat:@"s%dt%dr%de%d",self.sceneCode, self.tagCode, self.roleCode, self.eventCode];

	//NSLog(@"%@",s);
	//Retrieve Action code from Auditor 
	/*
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	id temp;
	temp = [d objectForKey:s];
	[s release];
	[d release];

	if (!temp) {
		NSLog(@"Interpreter Getcode Failed");
		return 0;
	}
	unsigned int c; 
	c = [temp intValue];
	[pool release];
	*/
	
	return [s autorelease];

}
@end
