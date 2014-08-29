//
//  Costume.h
//  frdfrd
//
//  Created by westbugs on 11-03-17.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import <CoreData/CoreData.h>


@interface Costume :  NSManagedObject  
{
}

@property (nonatomic, retain) NSNumber * unlocked;
@property (nonatomic, retain) NSNumber * sid;
@property (nonatomic, retain) NSString * thumbnail;
@property (nonatomic, retain) NSString * image;
@property (nonatomic, retain) NSNumber * role;
@property (nonatomic, retain) NSString * name;

@end



