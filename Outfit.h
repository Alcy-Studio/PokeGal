//
//  Outfit.h
//  frdfrd
//
//  Created by westbugs on 11-03-17.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import <CoreData/CoreData.h>


@interface Outfit :  NSManagedObject  
{
}

@property (nonatomic, retain) NSNumber * sid;
@property (nonatomic, retain) NSNumber * facial;
@property (nonatomic, retain) NSNumber * skinTone;
@property (nonatomic, retain) NSNumber * costume;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * item;
@property (nonatomic, retain) NSNumber * hairstyle;

@end



