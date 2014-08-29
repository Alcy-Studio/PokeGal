//
//  ValidIn.h
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ValidIn : NSObject {
	id resource;
}

@property (nonatomic, retain)id resource;

-(id)initWithResource:(id)r;
//-(id)initWithScene:(unsigned int)s tag:(unsigned int)t event:(unsigned int)e resource:(id)r;

@end
