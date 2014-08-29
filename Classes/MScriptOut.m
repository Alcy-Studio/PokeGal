//
//  MScriptOut.m
//  frdfrd
//
//  Created by westbugs on 11-03-03.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import "MScriptOut.h"

//Constants
#import "ConstantsTmpScript.h"
#import "ConstantsAuditor.h"

@implementation MScriptOut

+(NSString*)pathForScript{
	NSString* s1 = [[NSUserDefaults standardUserDefaults] valueForKey:kTmpScript];
	NSString* s2;

	NSBundle* b = [NSBundle mainBundle];

	s2 = [b pathForResource:s1 ofType:kAudViewRoleFileType];
	//NSLog(@"%@",s2);
	return s2;
}

+(NSString*)currentScriptName{
	NSString* s = [[NSUserDefaults standardUserDefaults] valueForKey:kTmpScript];
	
	return s;
}

@end
