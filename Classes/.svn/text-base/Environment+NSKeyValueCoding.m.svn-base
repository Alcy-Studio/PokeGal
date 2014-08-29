//
//  Environment+NSKeyValueCoding.m
//  PocketDraft
//
//  Created by westbugs on 10-08-25.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Environment+NSKeyValueCoding.h"


@implementation Environment(NSKeyValueCoding)

#pragma mark default
- (id)valueForKey:(NSString *)key{return nil;}
- (void)setValue:(id)value forKey:(NSString *)key{}
- (void)setNilValueForKey:(NSString *)theKey
{
	/*
    if ([theKey isEqualToString:@"age"]) {
        [self setValue:[NSNumber numberWithFloat:0.0] forKey:@"age"];
    } else
        [super setNilValueForKey:theKey];
	*/
}
#pragma mark -is<key>
- (BOOL)isRect{return NO;}
- (BOOL)isGenre{return NO;}
- (BOOL)isPlatform{return NO;}
- (BOOL)isDuration{return NO;}
- (BOOL)isLength{return NO;}
- (BOOL)isPolitic{return NO;}
- (BOOL)isReligious{return NO;}
- (BOOL)isPorn{return NO;}
- (BOOL)isViolent{return NO;}

#pragma mark -validate<Key>:error:
-(BOOL)validateGenre:(id *)ioValue error:(NSError **)outError
{
    if (*ioValue == nil) {
        return YES;
    }
	/*
    // enforce capitalization
    NSString *capitalizedName = [*ioValue capitalizedString];
    *ioValue = capitalizedName;
	*/
    return YES;
}


-(BOOL)validateRect:(id *)ioValue error:(NSError **)outError
{
    if (*ioValue == nil) {
        // trap this in setNilValueForKey
        // alternative might be to create new NSNumber with value 0 here
        return YES;
    }
	/*
    if ([*ioValue floatValue] <= 0.0) {
        NSString *errorString = NSLocalizedStringFromTable(
														   @"Age must be greater than zero", @"Person",
														   @"validation: zero age error");
        NSDictionary *userInfoDict =
        [NSDictionary dictionaryWithObject:errorString
									forKey:NSLocalizedDescriptionKey];
        NSError *error = [[[NSError alloc] initWithDomain:PERSON_ERROR_DOMAIN
													 code:PERSON_INVALID_AGE_CODE
												 userInfo:userInfoDict] autorelease];
        *outError = error;
        return NO;
    }
    else {
		return YES;
    }
	*/
	return YES;
}
-(BOOL)validatePlatform:(id *)ioValue error:(NSError **)outError{return YES;}
-(BOOL)validateDuration:(id *)ioValue error:(NSError **)outError{return YES;}
-(BOOL)validatePolitic:(id *)ioValue error:(NSError **)outError{return YES;}
-(BOOL)validateReligious:(id *)ioValue error:(NSError **)outError{return YES;}
-(BOOL)validatePorn:(id *)ioValue error:(NSError **)outError{return YES;}
-(BOOL)validateViolent:(id *)ioValue error:(NSError **)outError{return YES;}
#pragma mark -

@end
