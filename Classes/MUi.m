//
//  MUi.m
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MUi.h"

#import "PocketDraftAppDelegate.h"
#import "PGNavController.h"
#import "PGScheduleViewController.h"
#import "PGArrangeViewController.h"
#import "PGMapViewController.h"

#import "ConstantsSceneCode.h"
#import "ConstantsStringFormat.h"
#import "ConstantsSettingSystem.h"

@implementation MUi

+(id)getCurrentModalController{
	return [[self getCurrentController] modalViewController];

}

+(id)getCurrentController{
	return [[self getNavigationController] topViewController];
	
}

+(id)getMainViewController{
	id mvc = [(PocketDraftAppDelegate*)[[UIApplication sharedApplication] delegate] mainViewController];
	return mvc;

}



+(PGNavController*)getNavigationController{

	PGNavController *nc = (PGNavController*)[[[UIApplication sharedApplication] keyWindow] rootViewController];
	return nc;

}
//DateFormatter
+(NSString*)getDateStringWithDateFormat:(NSString*)s{
	NSDateFormatter* df = [[NSDateFormatter alloc] init];
	[df setDateFormat:s];
	
	[df setLocale:[[[NSLocale alloc] initWithLocaleIdentifier:kDefaultDateLocale]
				   autorelease]];
	NSString* str = [df stringFromDate:[NSDate date]];
	[df release];
	return str;
}

+(NSString*)getDateString{
	NSString* s0 = [self getDateStringWithDateFormat:kDateFormat7];
	
	NSString* s1 = [NSString stringWithFormat:@"%@",s0];
	return s1;

}
//Event
//setHidden for controller
+(void)setHidden:(BOOL)option tag:(NSUInteger)t controller:(id)c{
	id v;
	/*
	//NSLog(@"controller: %@", [(UIViewController*)[c class] description]);
	if ([c isMemberOfClass:[PGScheduleViewController class]]){
		v = [[(PGScheduleViewController*)c view] viewWithTag:t];
	} else if ([c isMemberOfClass:[PGArrangeViewController class]]) {
		v = [[(PGArrangeViewController*)c view] viewWithTag:t];
	} else if ([c isMemberOfClass:[PGMapViewController class]]) {
		v = [[(PGMapViewController*)c view] viewWithTag:t];				
	} else {
		NSLog(@"MUi setHidden Failed(c is not member of target viewController)");
		return;
	}
	*/
	if ([c isKindOfClass:[UIViewController class]]) {
		v = [[(UIViewController*)c view] viewWithTag:t];
		
	}else {
		NSLog(@"MUi setHidden Failed(c is not member of target viewController)");
		return;
	}


	if (![v isKindOfClass:[UIView class]]){
		NSLog(@"MUi setHidden Failed(c is not kind of Custom Button)");
		return;
	}
	[(UIView*)v setHidden:option];

}

+(void)setEnabled:(BOOL)option tag:(NSUInteger)t controller:(id)c{
	id v;
	
	if ([c isKindOfClass:[UIViewController class]]) {
		v = [[(UIViewController*)c view] viewWithTag:t];

	}else {
		NSLog(@"MUi setEnabled Failed(c is not member of target viewController)");
		return;
	}

	
	
	if (![v isKindOfClass:[UIControl class]]){
		NSLog(@"MUi setEnabled Failed(c is not kind of UIControl)");
		return;
	}

	[(UIControl*)v setEnabled:option];
	
}

+(void)modifyUserDefaultWithKey:(NSString*)k boolVal:(BOOL)b{
	[[NSUserDefaults standardUserDefaults] setBool:b forKey:k];

}

+(void)modifyUserDefaultWithKey:(NSString*)k value:(NSUInteger)v{
	[[NSUserDefaults standardUserDefaults] setInteger:v forKey:k];
}

+(void)modifyUserDefaultWithKey:(NSString*)k stringVal:(NSString*)s{
	[[NSUserDefaults standardUserDefaults] setValue:s forKey:k];
}


+(void)modifyTag:(NSUInteger)t role:(NSUInteger)r scene:(NSUInteger)s{
	
	
	NSString* key = [NSString stringWithFormat:@"s%it%i",s,t];
	
	[[NSUserDefaults standardUserDefaults] setInteger:r forKey:key];
	
	//NSLog(@"UserDefault: %@",[[NSUserDefaults standardUserDefaults] valueForKey:key]);
	
}

+(NSUInteger)getRoleWithTag:(NSUInteger)t scene:(NSUInteger)s{
	
	NSString* key = [NSString stringWithFormat:@"s%it%i",s,t];
	
	return [[NSUserDefaults standardUserDefaults] integerForKey:key];
}


//Lock
+(BOOL)screenLock{
	
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	
	PGNavController *nc = (PGNavController*)[[[UIApplication sharedApplication] keyWindow] rootViewController];
	
	[[nc topViewController] performSelector:@selector(screenLock)];
	
	[pool release];
	
	return YES;
	
}

+(BOOL)screenUnLock{
	
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	
	PGNavController *nc = (PGNavController*)[[[UIApplication sharedApplication] keyWindow] rootViewController];
	
	[[nc topViewController] performSelector:@selector(screenUnLock)];
	
	[pool release];
	
	return YES;
	
}

+(BOOL)presentModal:(NSString*)s transition:(UIModalTransitionStyle)t animated:(BOOL)b{

	if ([[MUi getCurrentController] modalViewController])
		return NO;
		
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	
	PGNavController *nc = (PGNavController*)[[[UIApplication sharedApplication] keyWindow] rootViewController];
	
	
	Class class = [[NSBundle mainBundle] classNamed:s];	
	id instance = [[class alloc]init];
	
	//[[nc topViewController] setModalTransitionStyle:UIModalTransitionStylePartialCurl];
	[instance setModalTransitionStyle:t];

	[[nc topViewController] presentModalViewController:instance animated:b];

	[instance release];
	
	
	[pool release];
	
	return YES;
	
}


+(void)tryPerformSelector:(SEL)aSelector withObject:(id)anArgument afterDelay:(NSTimeInterval)delay{
	//PGNavController *nc = (PGNavController*)[[[UIApplication sharedApplication] keyWindow] rootViewController];
	
	[self performSelector:aSelector 
				withObject:anArgument 
				afterDelay:delay];
	
	
}


+(void)presentModalEvent{
		[MUi presentModal:@"PGEventViewController" transition:UIModalTransitionStyleCrossDissolve animated:YES];
}

+(BOOL)dismissModal{
	
	PGNavController *nc = (PGNavController*)[[[UIApplication sharedApplication] keyWindow] rootViewController];
	[[nc topViewController] dismissModalViewControllerAnimated:YES];

	return YES;
}

+(BOOL)switchViewWithController:(NSString*)s{
	
	//popAndpushViewControllerWithFlip
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	
	//UIViewAnimationTransitionFlipFromRight
	PGNavController *nc = (PGNavController*)[[[UIApplication sharedApplication] keyWindow] rootViewController];
	//[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:[nc view] cache:YES];
	

	//[nc popViewControllerAnimated:NO];
	[nc popToRootViewControllerAnimated:NO];
	

	Class class = [[NSBundle mainBundle] classNamed:s];	
	id instance = [[class alloc]init];
	
	
	if (![instance isKindOfClass:class]){
		[instance release];
		[UIView commitAnimations];
		[pool release];
		return NO;
	}
	
	[nc pushViewController:instance animated:NO];
	[instance release];
	
	
	//[myAppDelegate navigationController] pushViewController:myViewController animated:NO;
	[pool release];
	
	return YES;
}

+(BOOL)switchViewWithControllerPopAnimated:(NSString*)s{
	
	//popAndpushViewControllerWithFlip
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	
	//UIViewAnimationTransitionFlipFromRight
	PGNavController *nc = (PGNavController*)[[[UIApplication sharedApplication] keyWindow] rootViewController];
	//[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:[nc view] cache:YES];
	
	
	//[nc popViewControllerAnimated:NO];
	[nc popToRootViewControllerAnimated:NO];
	
	
	Class class = [[NSBundle mainBundle] classNamed:s];	
	id instance = [[class alloc]init];
	
	
	if (![instance isKindOfClass:class]){
		[instance release];
		[UIView commitAnimations];
		[pool release];
		return NO;
	}
	
	[nc pushViewController:instance animated:YES];
	[instance release];
	
	
	//[myAppDelegate navigationController] pushViewController:myViewController animated:NO;
	[pool release];
	
	return YES;
}


+(BOOL)switchViewWithController:(NSString*)s transition:(UIViewAnimationTransition)t{
	//popAndpushViewControllerWithFlip
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration: 0.7f];
	
	//UIViewAnimationTransitionFlipFromRight
	PGNavController *nc = (PGNavController*)[[[UIApplication sharedApplication] keyWindow] rootViewController];
	//[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:[nc view] cache:YES];
	
	[UIView setAnimationTransition:t forView:[nc view] cache:YES];
	
	//[nc popViewControllerAnimated:NO];
	[nc popToRootViewControllerAnimated:NO];

	
	Class class = [[NSBundle mainBundle] classNamed:s];	
	id instance = [[class alloc]init];
	
	
	if (![instance isKindOfClass:class]){
		[instance release];
		[UIView commitAnimations];
		[pool release];
		return NO;
	}
	
	[nc pushViewController:instance animated:NO];
	[instance release];
	
	
	//[myAppDelegate navigationController] pushViewController:myViewController animated:NO;
	[UIView commitAnimations];
	[pool release];
		
	return YES;
}


+(void)alertViewCallAtWarning{
	UIAlertView* av = [[[UIAlertView alloc] 
					   initWithTitle:NSLocalizedString(@"ActPGMainCallAlertView1_Title", @"localized")
					   message:NSLocalizedString(@"ActPGMainCallAlertView1_Message", @"localized")
					   delegate:nil 
					   cancelButtonTitle:NSLocalizedString(@"ActPGMainCallAlertView1_Cancel", @"localized")
					   otherButtonTitles:nil] autorelease];
	[av addButtonWithTitle:NSLocalizedString(@"ActPGMainCallAlertView1_Ok", @"localized")];
	[av show];
}

+(void)alertViewSmsAtWarning{
	UIAlertView* av = [[[UIAlertView alloc] 
					   initWithTitle:NSLocalizedString(@"ActPGMainSmsAlertView1_Title", @"localized")
					   message:NSLocalizedString(@"ActPGMainSmsAlertView1_Message", @"localized")
					   delegate:nil 
					   cancelButtonTitle:NSLocalizedString(@"ActPGMainSmsAlertView1_Cancel", @"localized")
					   otherButtonTitles:nil] autorelease];
	[av addButtonWithTitle:NSLocalizedString(@"ActPGMainSmsAlertView1_Ok", @"localized")];
	[av show];
}

+(void)alertViewMoveAtWarning{
	UIAlertView* av = [[[UIAlertView alloc] 
					   initWithTitle:NSLocalizedString(@"ActPGMainMoveAlertView1_Title", @"localized")
					   message:NSLocalizedString(@"ActPGMainMoveAlertView1_Message", @"localized")
					   delegate:nil 
					   cancelButtonTitle:NSLocalizedString(@"ActPGMainMoveAlertView1_Cancel", @"localized")
					   otherButtonTitles:nil] autorelease];
	[av addButtonWithTitle:NSLocalizedString(@"ActPGMainMoveAlertView1_Ok", @"localized")];
	[av show];
}
+(void)alertViewPGSmsDisplayAtDeduction{
	UIAlertView* av = [[[UIAlertView alloc] 
					   initWithTitle:NSLocalizedString(@"ActPGSMSSetupAlertView1_Title", @"localized")
					   message:NSLocalizedString(@"ActPGSMSSetupAlertView1_Message", @"localized")
					   delegate:nil 
					   cancelButtonTitle:NSLocalizedString(@"ActPGSMSSetupAlertView1_Done", @"localized")

					   otherButtonTitles:nil] autorelease];
	//[av addButtonWithTitle:NSLocalizedString(@"ActPGSMSSetupAlertView1_Ok", @"localized")];
	[av show];
	
}

+(void)alertViewPGArrangeDisplayAtDeduction{
	UIAlertView* av = [[[UIAlertView alloc] 
					   initWithTitle:NSLocalizedString(@"ActPGPlaceSetupAlertView1_Title", @"localized")
					   message:NSLocalizedString(@"ActPGPlaceSetupAlertView1_Message", @"localized")
					   delegate:nil 
					   cancelButtonTitle:NSLocalizedString(@"ActPGPlaceSetupAlertView1_Done", @"localized")

					   otherButtonTitles:nil] autorelease];
	//[av addButtonWithTitle:NSLocalizedString(@"ActPGPlaceSetupAlertView1_Ok", @"localized")];
	[av show];
}


+(void)alertViewPGMapDisplayAtDeduction{
	UIAlertView* av = [[[UIAlertView alloc] 
					   initWithTitle:NSLocalizedString(@"ActPGMapSetupAlertView1_Title", @"localized")
					   message:NSLocalizedString(@"ActPGMapSetupAlertView1_Message", @"localized")
					   delegate:nil 
					   cancelButtonTitle:NSLocalizedString(@"ActPGMapSetupAlertView1_Done", @"localized")

					   otherButtonTitles:nil] autorelease];
	//[av addButtonWithTitle:NSLocalizedString(@"ActPGMapSetupAlertView1_Ok", @"localized")];
	[av show];
}

//Alert View Occupied
+(void)alertViewPGArrangeOccupiedPeriod{
	UIAlertView* av = [[[UIAlertView alloc] 
						initWithTitle:NSLocalizedString(@"ActPGArrangeSetupAlertView1_Title", @"localized")
						message:NSLocalizedString(@"ActPGArrangeSetupAlertView1_Message", @"localized")
						delegate:nil 
						cancelButtonTitle:NSLocalizedString(@"ActPGArrangeSetupAlertView1_Done", @"localized")

						otherButtonTitles:nil] autorelease];
	//[av addButtonWithTitle:NSLocalizedString(@"ActPGArrangeSetupAlertView1_Ok", @"localized")];
	[av show];
}

@end
