//
//  Facial.h
//  frdfrd
//
//  Created by westbugs on 11-06-04.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import <CoreData/CoreData.h>


@interface Facial :  NSManagedObject  
{
}

@property (nonatomic, retain) NSNumber * unlocked;
@property (nonatomic, retain) NSNumber * sid;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * image;
@property (nonatomic, retain) NSString * thumbnail;
@property (nonatomic, retain) NSNumber * role;

@end



