//
//  TestAction.h
//  frdfrd
//
//  Created by westbugs on 10-10-08.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface TestAction : NSObject {

}

/* Usage
 [self switchView:@"PGMainViewController" transition:UIViewAnimationTransitionFlipFromRight];
*/
-(void)switchView:(NSString*)s transition:(UIViewAnimationTransition)t;

/*
 [self checkDatabase];
*/
-(void)checkDatabase;

/*
 [self testPredicate];
*/
-(void)testPredicate;

/*
 [self test ViewController];
*/
-(void)testViewController;
@end
