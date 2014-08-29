//
//  Feedback.h
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Feedback : NSObject {
	NSString* decisionCode;
	unsigned int roleCode;
	
}
@property (nonatomic, copy)NSString* decisionCode;
@property (nonatomic)unsigned int roleCode;


- (id)initWithDecisionCode:(NSString*)c role:(unsigned int)r; //Default
- (id)initWithDecisionCode:(NSString*)c dec:(unsigned int)d; //With Analysis


@end
